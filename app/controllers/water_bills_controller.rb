class WaterBillsController < ApplicationController
  def index
    @water_bills = @current_user.water_bills.order('year DESC, month DESC')
  end

  def new
  end

  def create
    bill = @current_user.water_bills.build(water_build water_params)[0]
    if bill.save
      flash[:success] = "Thanks for adding a new water bill!"
      redirect_to "/users/#{@current_user.id}/home"
    else
      redirect_to "/users/#{@current_user.id}/water_bills/new", notice: bill.errors.messages.values.join(", ")
    end
  end

  def destroy
    WaterBill.destroy(params[:id])
    redirect_to "/users/#{@current_user.id}/water_bills"
  end

  private
  def water_params
    params.require(:water_bill).permit(:amount, :month, :year)
  end

  def water_build params
    [amount: params[:amount], month: month_converter(params[:month]), year: params[:year]]
  end
end
