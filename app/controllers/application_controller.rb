class ApplicationController < ActionController::Base
#  before_action :authenticate_user!
#  before_action :establish_team
 
#  helper_method :current_team

#  def establish_team
#      return session[:current_team] unless session[:current_team].nil?
#        session[:current_team] = current_user.teams.first.id 
  
  #   session[:current_team] = current_user.teams.first.id
#  end

#  def current_team
#    @_team ||= Team.find(session[:current_team])
#  end 

end
