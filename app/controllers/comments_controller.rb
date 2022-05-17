class CommentsController < ApplicationController
    before_action :authenticate_account!
   

    def create
        @comment=Comment.new(comment_params)
        @comment.account_id=current_account.id if account_signed_in?
        if @comment.save
            flash[:success] = "artist created!"
            redirect_to dashboard_path
        else
            redirect_to dashboard_path,flash:{danger:"post created"}
        end

    end

    
    private

    def comment_params
        params.require(:comment).permit(:comment,:post_id)
    end
end