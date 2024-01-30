class ToolsController < ApplicationController
  before_action :set_tool, only: [:show]

  def show
  end

  private

  def set_tool
    @tool = Tool.find(params[:id])
  end
end
