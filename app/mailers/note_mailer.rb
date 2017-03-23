class NoteMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.note_mailer.new_note_permission.subject
  #
  def new_note_permission note, user
    @note = note
    @user = user

    mail(to: @user.email, subject: 'Você recebeu um convite para editar uma nota')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.note_mailer.permission_revoked.subject
  #
  def permission_revoked note, user
    @note = note
    @user = user

    mail(to: @user.email, subject: 'Permissão de edição de nota revogada')
  end
end
