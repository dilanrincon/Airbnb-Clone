class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)

    if @house.save
      redirect_to @house
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = Article.find(params[:id])

    if @house.update(house_params)
      redirect_to @house
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def house_params
      params.require(:house).permit(:title, :image, :description, :price)
    end
end