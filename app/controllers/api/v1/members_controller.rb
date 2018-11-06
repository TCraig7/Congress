class Api::V1::MembersController < ApplicationController
  def index
    render json: Member.all
  end
end
