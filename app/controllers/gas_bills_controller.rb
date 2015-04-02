class GasBillsController < ApplicationController
  def index
    @gas_bills = @current_user.gas_bills.order('year DESC, month DESC')
  end

  def new
  end

  def create
    bill = @current_user.gas_bills.build(gas_build gas_params)[0]
    if bill.save
      flash[:success] = "Thanks for adding a new gas bill!"
      redirect_to "/users/#{@current_user.id}/home"
    else
      redirect_to "/users/#{@current_user.id}/gas_bills/new", notice: bill.errors.messages.values.join(", ")
    end
  end

  def destroy
    GasBill.destroy(params[:id])
    redirect_to "/users/#{@current_user.id}/gas_bills"
  end

  private
  def gas_params
    params.require(:gas_bill).permit(:amount, :month, :year)
  end

  def gas_build params
    [amount: params[:amount], month: month_converter(params[:month]), year: params[:year]]
  end
end
