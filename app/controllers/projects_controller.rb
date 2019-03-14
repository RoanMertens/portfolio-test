class ProjectsController < ApplicationController
  before_action :find_project, only: [:show]

  def index
    get_projects
  end

  def mobile
    get_projects
  end

  def show
  end

  private

  def get_projects
    @projects = Project.all
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
