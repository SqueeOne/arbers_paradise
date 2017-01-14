class VideosController < ApplicationController
    def index
        @videos = Video.where("plan_id = '1'")
    end
end