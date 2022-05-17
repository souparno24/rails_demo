class AccountsController < ApplicationController
    before_action :authenticate_account!,only: [:profile,:set_account]
    before_action :set_account,only: [:profile]

    def index
        @posts=Post.all
        @comment=Comment.new
    end

    def profile
        @posts=@account.posts
    end

    def set_account
        @account=Account.find_by_username(params[:username])
    end
    
end
