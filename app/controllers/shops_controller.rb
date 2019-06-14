class ShopsController < ApplicationController

	  def index
      # genre関係なく全て取り出す
      @shops = Shop.page(params[:page]).reverse_order
      # genreが0(食料・飲料)に当てはまるもの
      @genre = Genre.where(genre: 0).page(params[:page]).reverse_order
      # genreが1(ファッション)に当てはまるもの
      @genre_one = Genre.where(genre: 1).page(params[:page]).reverse_order
      # genreが2(日用品)に当てはまるもの
      @genre_two = Genre.where(genre: 2).page(params[:page]).reverse_order
      # genreが3(雑貨)に当てはまるもの
      @genre_three = Genre.where(genre: 3).page(params[:page]).reverse_order
      # genreが4(地産地消)に当てはまるもの
      @genre_four = Genre.where(genre: 4).page(params[:page]).reverse_order
      # genreが5(セレクトショップ)に当てはまるもの
      @genre_five = Genre.where(genre: 5).page(params[:page]).reverse_order
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
      @shop = Shop.find(params[:id])
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
