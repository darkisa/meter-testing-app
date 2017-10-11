class TestTypesController < ApplicationController
  def index
    @test_types = TestType.all
  end

  def show
  end

  def new
    @test_type = TestType.new
    @heading = 'Create new test type'
    @submit_text = 'Submit'
    
    render 'test_types/_test_type_form'
  end

  def edit
    @test_type = TestType.find(params[:id])
    @heading = 'Update test type'
    @submit_text = 'Update'

    render 'test_types/_test_type_form'
  end

  def create
    @test_type = TestType.new(test_type_params)

    if @test_type.save
      flash[:notice] = 'New test type added'
      redirect_back(fallback_location: 'test_results#index')
    else
      flash[:notice] = @test_type.errors[:test_type]
      render 'test_types/_test_type_form'
    end

  end

  def update
    @test_type = TestType.find(params[:id])

    if @test_type.update(test_type_params)
      flash[:notice] = 'Test type has been updated'
      redirect_back(fallback_location: 'test_results#index')
    else
      flash[:notice] = @test_type.errors[:test_type]
      render 'test_types/_test_type_form'
    end
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
