class TeamMembersController < ApplicationController
  def index
    @team_members = TeamMember.all
  end
   def create
    @team = Team.find(params[:team_id])
    @team_member = @team.team_members.create(team_member_params)
    redirect_to @team
  end

  private
    def team_member_params
      params.require(:team_member).permit(:team_id,:user_id, :role_id)
    end
end

