class Api::V1::MembersController < ApplicationController
  def index
    render json: MemberFacade.new(params[:chamber], params[:state]).members
  end
end
