class UsersController < ApplicationController
 def top
 end
 def index
 	@users = User.all
 end
def show
end


end