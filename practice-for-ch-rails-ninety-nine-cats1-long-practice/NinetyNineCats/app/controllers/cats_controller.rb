class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
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
    @cat = Cat.find(params[:id])

    if @cat.update(cat_params)
      render json: @cat
    else 
      @error = @cat.errors.full_messages
      render :new
    end
  end

  def show
    @cat = Cat.find(params[:id])
    render :show
  end

  def new
    @cat = Cat.new
    render :new
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  private

  def cat_params
    params.require(:cat).permit(:birth_date, :name, :sex, :color, :description)
  end

end
