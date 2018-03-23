class TransactionsController < ApplicationController
  before_action :current_user

  def new
    @transaction = Transaction.new
    @buyer = current_user.buyers.all
    @vegetable = Vegetable.all
  end

  def create
    # debugger
    @transaction = Transaction.new(transaction_params)
    @transaction.user_id = current_user.id
    if @transaction.save
      @vegetable = Vegetable.find(@transaction.vegetable_id)
      @vegetable.jumlah -= @transaction.jumlahtransaksi
      @vegetable.save
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  end

  def index
    if (admin?)
      @transaction = Transaction.all
    else
      @transaction.order(:jumlah)
    end
  end

  private
    def transaction_params
      params.require(:transaction).permit(:buyer_id, :vegetable_id, :jumlahtransaksi)
    end
end