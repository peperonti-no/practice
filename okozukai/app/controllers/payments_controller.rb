class PaymentsController < ApplicationController

  def index
    @payments = Payment.all.order(payment_date: 'desc')
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.new(post_params)
    if @payment.save
      redirect_to payments_path
    else
      render 'new'
    end
  end

  def graph

  end

  def destroy
    @payment = Payment.find(params[:id])
    @payment.destroy
    redirect_to payments_path
  end

  def show
    @payment = Payment.find(params[:id])
  end

  def update
    @payment = Payment.new(post_params)
  end

  private
    def post_params
      post_hash = params.require(:payment).permit(:payment_date, :category_id, :amount_of_money, :memo)
      post_hash[:payment_date] = Time.strptime(post_hash[:payment_date], "%Y-%m-%d").strftime("%Y/%m/%d")
      return post_hash
    end

end
