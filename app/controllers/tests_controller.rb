class TestsController < ApplicationController

  def index
    @tests = Test.all
    @protocols = Protocol.all
    @test_types = TestType.order(:name)
  end

  def new
    @test = Test.new
    render 'tests/_test_form'
  end

  def create
    @test = Test.new(test_params)
    if @test.save
      redirect_to tests_path, notice: 'Test created'
    else
      @errors = @test.errors
      render 'tests/_test_form'
    end
  end

  def edit
    @test = Test.find(params[:id])
    render 'tests/_test_form'
  end

  def update
    @test = Test.find(params[:id])
    if @test.update(test_params)
      redirect_to tests_path, notice: 'Test was updated'
    else
      @errors = @test.errors
      render 'tests/_test_form'
    end
  end

  def destroy
    @test = Test.find(params[:id])
    @test.destroy
    redirect_to tests_path, notice: 'Test was deleted'
  end

  private

  def test_params
    params.require(:test).permit!
  end

end
