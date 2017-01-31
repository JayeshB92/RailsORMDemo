class HomeController < ApplicationController
    def index
    end

    def create
      @employee = Employee.new(params[:employee].permit(:designation, :salary))
      @employee.user = User.new(params[:user].permit(:user_id, :name))
      @employee.save

      redirect_to('/index')
    end
end
