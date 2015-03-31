class ElectricBillsController < ApplicationController
  def index
    @electric_bills = @current_user.electric_bills.order('year DESC, month DESC')
  end

  def new
  end

  def create
    bill = @current_user.electric_bills.build(electric_build electric_params)[0]
    if bill.save
      flash[:success] = "Thanks for adding a new electric bill!"
      redirect_to "/users/#{@current_user.id}/home"
    else
      redirect_to "/users/#{@current_user.id}/electric_bills/new", notice: bill.errors.messages.values.join(", ")
    end
  end

  def destroy
  end

  private
  def electric_params
    params.require(:electric_bill).permit(:amount, :month, :year)
  end

  def electric_build params
    [amount: params[:amount], month: month_converter(params[:month]), year: params[:year]]
  end
end
