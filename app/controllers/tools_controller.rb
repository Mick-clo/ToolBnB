class ToolsController < ApplicationController

  before_action :set_tool, only: [:show]

  def index
    @tools = Tool.all
  end

  def show
  end

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    if @tool.save
      redirect_to @tool, notice: 'Your tool was successfully added!'
    else
      render :new
    end

  end

  private


  def set_tool
    @tool = Tool.find(params[:id])
  end
  def tool_params
    params.require(:tool).permit(:title, :price, :description)

  end
end
