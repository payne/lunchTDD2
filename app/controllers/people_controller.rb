class PeopleController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @people = User.all
  end
end
