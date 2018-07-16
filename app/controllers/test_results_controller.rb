class TestResultsController < ApplicationController
  
  def index
  end

  def show
  end

  def new
    @test = Test.includes(:protocol).includes(:test_type).find(params[:test_id])
    @protocol = @test.protocol
    @time = Time.now.strftime('%Y-%m-%dT%H:%m')
    @test_result = TestResult.new
  end

  def edit
  end

  def create
    @test_result = TestResult.new(test_result_params)
    @test_result.user_id = current_user.id

    if @test_result.save
      render 'create'
    else
      render 'create'
    end

  end

  def update
  end

  def destroy
  end

  private

    def test_result_params
      params.require(:test_result).permit!
    end

end
