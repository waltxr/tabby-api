class NotesController < ApplicationController
  before_action :authorize_request

  def index
    byebug
    @notes = @current_user.notes
    render json: @notes
  end

  def create
    byebug
  end

end
