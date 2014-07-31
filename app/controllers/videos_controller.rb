class VideosController < ApplicationController

	def getAllRecords
		if params[:tag].present?
			nextPage = getAndCreate(params[:tag], nextPage)

			if !nextPage.nil?
				loop do
					nextPage = getAndCreate(params[:tag], nextPage)
				end while nextPage != nil
			end
		end
	end

	def getAndCreate(tag="fail", page=1)
		response = HTTParty.get('https://api.vineapp.com/timelines/tags/'+tag+'?page='+page.to_s+'&size=100')
		return response.code if response.code != 200

		data = response.parsed_response["data"]
		data["records"].each do |v|
			createVideos(v, tag)
		end
		return data["nextPage"]
	end

	def createVideos(v, tag)
		Video.find_or_create_by(post_id: v["postId"]) do |video|
			video.avatar_url = v["avatarUrl"]
			video.description = v["description"]
			video.foursquare_venue_id = v["foursquareVenueId"]
			video.loop_count = v["loops"]["count"]
			video.permalink_url = v["permalinkUrl"]
			video.share_url = v["shareUrl"]
			video.thumbnail_url = v["thumbnailUrl"]
			video.video_low_url = v["videoLowURL"]
			video.video_url = v["videoUrl"]
			video.like_count = v["likes"]["count"]
			video.comments_count = v["comments"]["count"]
			video.creation = v["created"]
			video.tag = tag
		end
	end
end
