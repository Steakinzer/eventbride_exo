class UsersController < ApplicationController


  def index

  end

  def show
    p params
    puts "$"*100
    p session
    puts "$"*100
    p User
    puts "U"*100
    p current_user[:id]

  end

end
