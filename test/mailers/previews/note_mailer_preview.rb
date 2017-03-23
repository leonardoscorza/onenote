# Preview all emails at http://localhost:3000/rails/mailers/note_mailer
class NoteMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/note_mailer/new_note_permission
  def new_note_permission
    NoteMailer.new_note_permission
  end

  # Preview this email at http://localhost:3000/rails/mailers/note_mailer/permission_revoked
  def permission_revoked
    NoteMailer.permission_revoked
  end

end
