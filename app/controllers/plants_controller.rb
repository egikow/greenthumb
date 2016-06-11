class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new
    @plant.name = params[:name]
    @plant.description = params[:description]
    @plant.highlights = params[:highlights]
    @plant.official_name = params[:official_name]
    @plant.height = params[:height]
    @plant.width = params[:width]
    @plant.image = params[:image]
    @plant.care_id = params[:care_id]

    if @plant.save
      redirect_to "/plants", :notice => "Plant created successfully."
    else
      render 'new'
    end
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])

    @plant.name = params[:name]
    @plant.description = params[:description]
    @plant.highlights = params[:highlights]
    @plant.official_name = params[:official_name]
    @plant.height = params[:height]
    @plant.width = params[:width]
    @plant.image = params[:image]
    @plant.care_id = params[:care_id]

    if @plant.save
      redirect_to "/plants", :notice => "Plant updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @plant = Plant.find(params[:id])

    @plant.destroy

    redirect_to "/plants", :notice => "Plant deleted."
  end
end
