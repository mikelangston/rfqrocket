class RfqsController < ApplicationController
  before_action :set_project
  before_action :set_rfq, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @rfq = Rfq.new
  end

  def create
    @rfq = Rfq.new(rfq_params)
    if @rfq.save
      flash[:success] = 'Successfully created RFQ'
      redirect_to project_rfq_path(@project, @rfq)
    else
      flash[:error] = 'Something went wrong, can not create RFQ'
      redirect_to new_project_rfq_path(@project)
    end
  end

  def edit
  end

  def update
    if @rfq.update(rfq_params)
      flash[:success] = 'Successfully updated RFQ'
      redirect_to project_rfq_path(@project, @rfq)
    else
      flash[:error] = 'Something went wrong, can not update RFQ'
      redirect_to edit_project_rfq_path(@project, @rfq)
    end
  end

  def destroy
    if @rfq.destroy
      flash[:success] = 'Successfully deleted RFQ'
      redirect_to project_path(@project)
    else

    end
  end

  private

  def rfq_params
    params.require(:rfq).permit(:project_id, :name, :number, :initiator,
                                :issue_date, :due_date, :status, :sealed)
  end

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_rfq
    @rfq = Rfq.find(params[:id])
  end
end
