class CommentsController < ApplicationController
  
  def index
  	@comments = Comment.all
  	@new_comment = Comment.new
  end

  def create
  	@com = Comment.new(strong_params)

  	if @com.save
  		respond_to do |format|
			format.html { redirect_to(:action=>'index') }
			format.js {}
  		end
  	else
  		render 'index'
  	end 
  end 

  def destroy
  end

  private 
	  def strong_params
	  	params.require(:comment).permit(:content_body)
	  end 
end
