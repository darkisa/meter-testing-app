class ReportsController < ApplicationController

  def report
    @test_result = TestResult.last

    respond_to do |format|
      format.json { render json: @test_result.to_json }
      format.html
    end
  end

end