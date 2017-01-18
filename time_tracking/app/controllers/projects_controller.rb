class ProjectsController < ApplicationController
  def index
    @projects = Project.order(created_at: :desc).limit(10)
  end

  def show
    @project = Project.find_by(id: params[:id])

    unless @project
      render "project_not_found"
    end
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(
                name:         params[:project][:name],
                description:  params[:project][:description])

    redirect_to "/projects/#{@project.id}"
  end
end
