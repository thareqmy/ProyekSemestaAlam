class PanensController < ApplicationController
  def tambahjumlah
    @panen = Panen.new
    @vegetable = Vegetable.all
  end

  def create
    @panen = Panen.new(tambah: params[:panen][:tambah], vegetable_id: params[:panen][:vegetable_id])
    if @panen.save
      flash[:success] = "Panen Sukses"
      @panen.vegetable.jumlah = @panen.vegetable.jumlah + @panen.tambah
      @panen.vegetable.save
      redirect_to vegetables_path
    else
      redirect_to 'tambahjumlah'
    end
  end

  private
    def panen_params
      params.require(:panen).permit(:tambah)
    end
end