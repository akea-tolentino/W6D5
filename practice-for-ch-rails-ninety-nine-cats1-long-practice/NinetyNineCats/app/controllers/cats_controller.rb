class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render json: @cats
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      render json: @cat
    else
      render json: @cat.errors.full_messages, status: 422
    end
  end

  def update
    # @cat = Cat.find_by(params[:id])
    @cat = Cat.find(params[:id])

    if @cat.update(cat_params)
      render json: @cat
    else 
      render json: @cat.errors.full_messages, status: 422
    end
  end

  def show
    # @cat = Cat.find_by(params[:id])
    @cat = Cat.find(params[:id])
    render json: @cat
  end

  def new
  end

  def edit
  end

  private

  def cat_params
    params.require(:cat).permit(:birth_date, :name, :sex, :color, :description)
  end

end
