class NotesController < ApplicationController
  before_action :authorize_request
  before_action :set_note, only: [:update]

  def index

    @notes = @current_user.notes
    render json: @notes
  end

  def create
    @note = @current_user.notes.create(note_params)
    if @note.save
      render json: @note, status: :created
    else
      render json: {errors: @note.errors.full_messages},
             status: :unprocessable_entity
    end
  end

  def update
    unless @note.update(note_params)
      render json: { errors: @note.errors.full_messages},
             status: :unprocessable_entity
     end
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.permit(:title, :body)
  end

end
