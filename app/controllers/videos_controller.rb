class VideosController < ApplicationController
    def index
        @sections = Section.all
        if current_user
          @plan_id = current_user.plan_id
          @videos = Video.where("plan_id = ?", @plan_id)
        end
    end
    
    def show
        @sections = Section.all
        if current_user
          @plan_id = current_user.plan_id
          @videos = Video.where("plan_id = ?", @plan_id)
          @current_video = Video.find(params[:id])
        end
    end
    
    def new
        @video = Video.new
    end
    
    def create
        @video = Video.create(video_params)
        if @video.save
            flash[:notice] = "You have added a new video."
            redirect_to new_video_path
        else
            flash[:notice] = "Something went horribly wrong."
            redirect_to new_video_path
        end
    end
    private 
    def video_params
        params.require(:video).permit(:name, :video_url, :video_img, :synopsis, :full_text, :plan_id, :section_id)
    end
end
