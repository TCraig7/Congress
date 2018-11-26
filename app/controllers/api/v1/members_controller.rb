class Api::V1::MembersController < ApplicationController
  def index
    render json: member_facade.members(params[:chamber], params[:state])
  end

  def show
    render json: member_facade.member(params[:id])
  end

  private

  def member_facade
    MemberFacade.new
  end
end
