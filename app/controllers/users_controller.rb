class UsersController < ApplicationController
  before_filter :set_user, only: [:add_note, :remove_note]

  def add_note
    @note = current_user.notes.find params[:note_id]
    @user.guest_notes << @note

    NoteMailer.new_note_permission(@note, @user).deliver_now
    render json: {message: "Compartilhamento bem sucedido!"}, status: :ok
  end

  def remove_note
    @note = current_user.notes.find params[:note_id]
    @user.guest_notes.delete(@note.id)

    NoteMailer.permission_revoked(@note, @user).deliver_now
    render json: {message: "Permissão revogada com sucesso!"}, status: :ok
  end

  private

    def set_user
      @user = User.find params[:id]
    end
end
