class RatingsController < ApplicationController
    before_action :authenticate_account!
    
  
    def save_rating
        @rating=Rating.new(post_id: params[:post_id], account_id: current_account.id)
       
        @post_id=params[:post_id]
            respond_to do |format|
                format.js{
                    if @rating.save
                        @success= true
                    else
                        @success= false
                    end
                }
            
            end
        

    end

   

    
end