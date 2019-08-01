class UsersController < ApplicationController
  def index
    @users = User.all.ord
    respond_to do |format|
      format.html
      format.csv { send_data @users.to_csv }
    end
  end
end