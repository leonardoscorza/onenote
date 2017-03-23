class NotesController < ApplicationController
  before_filter :set_note, only: [:update, :destroy, :show]

  def index
    # TODO: Colocar filtros
    @notes = current_user.notes + current_user.guest_notes
    render :json => @notes.to_json(:include => [:users, :tags])
  end

  def show
    render :json => @note.to_json(:include => [:users, :tags])
  end

  def create
    @note = Note.new(note_params.merge(user: current_user))

    if @note.save
      render json: {message: "Nota criada com sucesso!"}, status: :created
    else
      render json: {message: "Falha ao criar nota!"}, status: :unprocessable_entity
    end
  end

  def update
    if @note.update(note_params)
      render json: {message: "Nota atualizada com sucesso!"}, status: :ok
    else
      render json: {message: "Falha ao atualizar nota!"}, status: :unprocessable_entity
    end
  end

  def destroy
    @note.destroy
    render json: {message: "Nota removida com sucesso!"}, status: :ok
  end

  private

    def set_note
      @note = current_user.notes.find_by(id: params[:id])
      @note = current_user.guest_notes.find params[:id] unless @note.present?
    end

    def note_params
      params.require(:note).permit(:title, :body)
    end
end
