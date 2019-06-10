class ShopsController < ApplicationController

	  def index
    end

  	def new
      @shop = Shop.new
      @genre = @shop.genres.build
  	end

  	def create
      @shop = Shop.new(shop_params)
      @shop.save
      redirect_to("/shops")
  	end

  	def show
  	end

  	def edit
  	end

  	def update
  	end

  	def destroy
  	end

    private
    def shop_params
      params.require(:shop).permit(:shop_name, :shop_image, :phonenum, :postalcode, :address, :description, :regular_holiday, :access, :business_hours, :opening_date, :homepage,
                                    genres_attributes: [:genre]
                                  )
    end

end
