class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end


  def show
    @job = Job.find(params[:id])
  end

  def create
    @job = Job.new(job_params)

    @job.save
    redirect_to @job
  end



  private
  def job_params
    params.require(:job).permit(:url, :employer_name, :employer_description, :job_title, :job_description, :year_of_experience, :education_requirement, :industry, :base_salary, :employment_type_id)
  end

end
