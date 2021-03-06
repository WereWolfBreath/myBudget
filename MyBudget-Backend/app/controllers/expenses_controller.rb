class ExpensesController < ApplicationController

    def create
        budget = Budget.find_by_id(params[:budget_id])
        expense = budget.expenses.build(params.require(:expense).permit(:name, :cost, :date, :budget_id))
        expense.save
        render json: expense
    end
    
end