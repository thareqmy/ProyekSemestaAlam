class VegetablesController < ApplicationController

  before_action :require_user, :current_user

  def new
    @vegetable = Vegetable.new
  end

  def create
    @vegetable = Vegetable.new(vegetable_params)
    if @vegetable.save
      flash[:notice] = "Sayuran was successfully created"
      redirect_to vegetable_path(@vegetable)
    else
      render 'create'
    end
  end

  def show
    @vegetable = Vegetable.find(params[:id])
  end

  def index
    @vegetable = Vegetable.all
  end

  def tambahpanen
    @tambahpanen = vegetable_tambahpanen
    @vegetable = Vegetable.find(params[:vegetable_id])
    @vegetable.jumlah = @vegetable.jumlah + @tambahpanen
  end

  private
    def vegetable_params
      params.require(:vegetable).permit(:jenis, :jumlah)
    end

end