class BillsController < ApplicationController
  before_action :require_login
  before_action :set_bill, only: [:approve, :reject]

  def index
    @bills = current_user.admin? ? Bill.includes(:submitted_by) : current_user.bills
  end

  def new
    @bill = Bill.new
  end

  def create
    @bill = current_user.bills.new(bill_params)
    if @bill.save
      redirect_to bills_path, notice: "Bill submitted successfully."
    else
      render :new
    end
  end

  def approve
    @bill.update(status: :approved)
    redirect_to bills_path, notice: "Bill approved."
  end

  def reject
    @bill.update(status: :rejected)
    redirect_to bills_path, notice: "Bill rejected."
  end

  private

  def set_bill
    @bill = Bill.find(params[:id])
  end

  def bill_params
    params.require(:bill).permit(:amount, :bill_type)
  end
end
