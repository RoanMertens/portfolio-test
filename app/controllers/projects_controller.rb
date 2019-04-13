class ProjectsController < ApplicationController
  before_action :project, only: [:show]
  before_action :projects, only: [:index]

  def index
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def projects
    @projects = Project.all
  end

  def project
    @project = Project.find(params[:id])
  end
end
