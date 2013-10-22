require 'digest/md5'

def md5(content)
  digest = Digest::MD5.hexdigest("#{content}")
end

class UsersController < ApplicationController
  # GET /users
  def index
    @users = User.all
  end

  # GET /
  def loginForm
  end
  
  # POST /users/login
  def login
    login = params[:login]
    password = md5(params[:password])

    # injection friendly :(
    query = "login='#{login}' and password='#{password}'"
    @found = User.where(query).first
    
    # preventing INJECTION :)
    # @found = User.where("login = ? and password = ?", login, password).first
     
  end
end
