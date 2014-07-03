class BugsController < ApplicationController
  def new
  	@bug = Bug.new
  end

  def show
  	@bug = Bug.find(params[:id])
  end

  def create
  	@bug = Bug.new(bug_params)
  	if @bug.save
  		redirect_to @bug
  	else
  		render 'new'
  	end
  end

  private
    def bug_params
    	params.require(:bug).permit(:description, :application_name)
    end

end
