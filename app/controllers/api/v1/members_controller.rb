class Api::V1::MembersController < ApplicationController
  def index
    member_facade = MemberFacade.new
    render json: member_facade.members(params[:chamber], params[:state])
  end
end
