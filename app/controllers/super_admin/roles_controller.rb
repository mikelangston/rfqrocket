class SuperAdmin::RolesController < ApplicationController
  before_action :set_role, only: [:edit, :update, :destroy]

  def index
    @roles = Role.all
  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new(role_params)
    if @role.save
      flash[:success] = 'Successfully create a new role'
      redirect_to super_admin_roles_path
    else
      flash[:error] = 'Something went wrong, can not create role'
      redirect_to new_super_admin_role_path
    end
  end

  def edit
  end

  def update
    if @role.update(role_params)
      flash[:success] = 'Successfully updated role'
      redirect_to super_admin_roles_path
    else
      flash[:error] = 'Something went wrong, can not update role'
      redirect_to edit_super_admin_role_path(@role)
    end
  end

  def destroy
    if @role.destroy
      flash[:success] = 'Successfully deleted a role'
      redirect_to super_admin_roles_path
    else
      flash[:error] = 'Something went wrong, can not delete role'
      redirect_to super_admin_roles_path
    end
  end

  private

  def role_params
    params.require(:role).permit(:name)
  end

  def set_role
    @role = Role.find(params[:id])
  end
end
