class PostsController < ApplicationController
    before_action :authenticate_account!
    def new
        @post=Post.new
    end

    def create
        @post=Post.new(post_params)
        @post.account_id=current_account.id if account_signed_in?
        if @post.save
            flash[:success] = "artist created!"
            redirect_to dashboard_path
        else
            redirect_to new_post_path,flash:{danger:"post created"}
        end

    end

    def show
        @post =Post.find(params[:id])
     
    end

    private

    def post_params
        params.require(:post).permit(:name,:email,:dob,:category,:location,:url)
    end
end