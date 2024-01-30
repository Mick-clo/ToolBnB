class ToolsController < ApplicationController

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

  def tool_params
    params.require(:tool).permit(:title, :price, :description)
  end
end
