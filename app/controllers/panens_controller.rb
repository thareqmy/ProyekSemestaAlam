class PanensController < ApplicationController
  def tambahjumlah
    @panen = Panen.new
  end

  def create
    @panen = Panen.new(tambah: params[:panen][:tambah], vegetable_id: current_vegetable.id)
    if @panen.save
      flash[:success] = "Panen Sukses"
      @panen.vegetable.jumlah = @panen.vegetable.jumlah + @panen.tambah
      @panen.vegetable.save
      redirect_to vegetables_path(current_vegetable)
    else
      redirect_to vegetables_path
    end
  end

  private
    def panen_params
      params.require(:panen).permit(:tambah)
    end
end