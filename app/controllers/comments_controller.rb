class CommentsController < ApplicationController

  	def create
      @shop = Shop.find(params[:shop_id])
      @comment = @shop.comments.build(comment_params)
      @comment.user_id = current_user.id
      @comment.save
      redirect_to shop_path(@shop)
  	end

    def destroy
      @shop = Shop.find(params[:shop_id])
      @comment = @shop.comments.find(params[:id])
      @comment.destroy
      redirect_to shop_path(@shop)
    end

  	private

    def comment_params
      params.require(:comment).permit(:user_id,
                                      :shop_id,
                                      :comment
                                      )
    end

end
