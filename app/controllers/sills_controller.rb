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
    @sill.light_type = params[:light_type]
    @sill.home_temperature_id = params[:home_temperature_id]
    @sill.height = params[:height]
    @sill.width = params[:width]

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

    @sill.light_type = params[:light_type]
    @sill.home_temperature_id = params[:home_temperature_id]
    @sill.height = params[:height]
    @sill.width = params[:width]

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
