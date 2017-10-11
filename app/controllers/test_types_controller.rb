class TestTypesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @test_type = TestType.new
  end

  def edit
  end

  def create
    @test_type = TestType.new(test_type_params)

    if @test_type.save
      flash[:notice] = 'New test type added'
      redirect_back(fallback_location: 'test_results#index')
    else
      flash[:notice] = @test_type.errors[:test_type]
      render 'new'
    end

  end

  def update
  end 

  def destroy
    @test_type = TestType.find(params[:id])

    @test_type.destroy
    flash[:notice] = 'Test type deleted'
    redirect_back(fallback_location: 'test_results#index')
  end

  private
    def test_type_params
      params.require(:test_type).permit!
    end

end
