class BuyersController < ApplicationController

  def new
    @buyer = Buyer.new
  end

  def create
    @buyer = Buyer.new(buyer_params)
    if @buyer.save
      flash[:notice] = "Buyer was succesfully created"
      redirect_to buyer_path(@buyer)
    else
      render 'new'
    end
  end

  def show
    @buyer = Buyer.find(params[:id])
  end

  def edit
    @buyer = Buyer.find(params[:id])
  end

  def update
    @buyer = Buyer.find(params[:id])
    if @buyer.update(buyer_params)
      flash[:notice] = "Buyer was successfully updated"
      redirect_to buyer_path(@buyer)
    else
      render 'edit'
    end
  end

  def index
    @buyer = Buyer.all
  end

  def destroy
    @buyer = Buyer.find(params[:id])
    @buyer.destroy
    flash[:notice] = "Buyer was succesffully deleted"
    redirect_to buyers_path
  end

  private
    def buyer_params
      params.require(:buyer).permit(:nama, :nohp, :alamat, :email, :facebook, :jeniskelamin)
    end
end