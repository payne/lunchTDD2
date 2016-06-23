class GroupsController < ApplicationController
  
  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_url, notice: 'Group has been created.'
    else
      render :new
    end
  end

  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

private
  def group_params
    params.require(:group).permit(:title,:description,:growing)
  end
end
