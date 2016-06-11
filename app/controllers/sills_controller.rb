class SillsController < ApplicationController
  def index
    @sills = Sill.all
  end

  def show
    @sill = Sill.find(params[:id])
  end

  def new
    @sill = Sill.new
  end

  def create
    @sill = Sill.new
    @sill.light = params[:light]
    @sill.temp_min = params[:temp_min]
    @sill.temp_max = params[:temp_max]
    @sill.height = params[:height]
    @sill.width = params[:width]
    @sill.user_id = params[:user_id]
    @sill.plant_id = params[:plant_id]

    if @sill.save
      redirect_to "/sills", :notice => "Sill created successfully."
    else
      render 'new'
    end
  end

  def edit
    @sill = Sill.find(params[:id])
  end

  def update
    @sill = Sill.find(params[:id])

    @sill.light = params[:light]
    @sill.temp_min = params[:temp_min]
    @sill.temp_max = params[:temp_max]
    @sill.height  params[:height
    @sill.width = params[:width]
    @sill.user_id = params[:user_id]
    @sill.plant_id = params[:plant_id]

    if @sill.save
      redirect_to "/sills", :notice => "Sill updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @sill = Sill.find(params[:id])

    @sill.destroy

    redirect_to "/sills", :notice => "Sill deleted."
  end
end
