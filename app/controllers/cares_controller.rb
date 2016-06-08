class CaresController < ApplicationController
  def index
    @cares = Care.all
  end

  def show
    @care = Care.find(params[:id])
  end

  def new
    @care = Care.new
  end

  def create
    @care = Care.new
    @care.light = params[:light]
    @care.temperature = params[:temperature]
    @care.water = params[:water]
    @care.image = params[:image]
    @care.warning = params[:warning]
    @care.tip = params[:tip]

    if @care.save
      redirect_to "/cares", :notice => "Care created successfully."
    else
      render 'new'
    end
  end

  def edit
    @care = Care.find(params[:id])
  end

  def update
    @care = Care.find(params[:id])

    @care.light = params[:light]
    @care.temperature = params[:temperature]
    @care.water = params[:water]
    @care.image = params[:image]
    @care.warning = params[:warning]
    @care.tip = params[:tip]

    if @care.save
      redirect_to "/cares", :notice => "Care updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @care = Care.find(params[:id])

    @care.destroy

    redirect_to "/cares", :notice => "Care deleted."
  end
end
