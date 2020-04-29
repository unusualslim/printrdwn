
class TeamsController < ApplicationController
  def index
    @my_teams = current_user.teams.all
    @available_teams = Team.where.not(id: @my_teams.pluck(:id))
    @available_teams = @available_teams.where.not(name: "Personal")    
    
     

#    @my_teams = @teams.team_members.where(user_id: current_user) 
#    @available_teams = @teams.team_members.where.not(user_id: current_user)
  end
 
  def show
    @team = Team.find(params[:id])
    @team_members = @team.team_members.all
  end
 
  def new
    @team = Team.new
    @team.team_members.build
  end
   
  def edit
    @team = Team.find(params[:id])
  end
 
  def create
    @team = Team.new(team_params)
    @team_member = @team.team_members.new(team_member_params)
    if @team.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end
 
  def update
    @team = Team.find(params[:id])
 
    if @team.update(team_update_params)
      redirect_to action: "index"
    else
      render 'edit'
    end
  end
 
  def destroy
    @team = Team.find(params[:id])
    @team.destroy
 
  end

  def set_current_team
    session[:current_team] = params[:team]
    redirect_back(fallback_location: root_path)
  end

  private
    def team_params
      params.require(:team).permit(:name)
    end
    
    def team_member_params
      params.require(:team).permit(:id, :role_id, :user_id)
    end
end
