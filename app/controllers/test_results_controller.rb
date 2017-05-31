class TestResultsController < ApplicationController
  
  def index
  end

  def show
    @protocol = Protocol.find(params[:id])
    @user = current_user
    @test_result = TestResult.new
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end

end
