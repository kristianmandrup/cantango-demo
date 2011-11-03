class ProjectsController < ApplicationController
  respond_to :html

  expose(:projects) { Project.all }
  expose(:project)

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    project.save ? redirect_to(project, notice: 'Project was successfully created.') : render(action: "new")
  end

  def update
    update_attributes ? redirect_to(project, notice: 'Project was successfully updated.' : render(action: "edit")
  end

  def destroy
    project.destroy
    redirect_to projects_url
  end

  private

  def update_attributes
    project.update_attributes(params[:project])
  end
end
