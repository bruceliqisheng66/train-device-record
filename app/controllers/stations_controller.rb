class StationsController < ApplicationController
  def index
    @stations = Station.all
  end

  def new
    @station = Station.new
  end

  def show
    @station = Station.find(params[:id])
    @equipment_categories = @station.equipment_categories

  end

  def edit
    @station = Station.find(params[:id])
  end

  def create
    @station = Station.new(station_params)
    if @station.save
      redirect_to stations_path
    else
      render :new
    end
  end

  def update
    @station = Station.find(params[:id])
    if @station.update(station_params)
      redirect_to stations_path
    else
      render :edit
    end
  end

  def destroy
    @station = Station.find(params[:id])
    @station.destroy
    redirect_to stations_path
  end

  def category_new
    @equipment_category = EquipmentCategory.new
  end
  def transformer_new
    @station = Station.find(params[:id])
    @transformer = Transformer.new
  end


  private

  def station_params
    params.require(:station).permit(:name,:equipment_category_ids => [])
  end
end
