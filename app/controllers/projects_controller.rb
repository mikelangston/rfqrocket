class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:success] = 'Successfully create a new Project'
      redirect_to projects_path
    else
      flash[:error] = 'Something went wrong, can not create Project'
      redirect_to new_project_path
    end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      flash[:success] = 'Successfully updated Project'
      redirect_to projects_path
    else
      flash[:error] = 'Something went wrong, can not update Project'
      redirect_to edit_project_path(@project)
    end
  end

  def destroy
    if @project.destroy
      flash[:success] = 'Successfully deleted Project'
      redirect_to projects_path
    else
      flash[:error] = 'Something went wrong, can not delete Project'
      redirect_to projects_path
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :number, :jobsite)
  end

  def set_project
    @project = Project.find(params[:id])
  end
end
