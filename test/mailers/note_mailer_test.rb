require 'test_helper'

class NoteMailerTest < ActionMailer::TestCase
  test "new_note_permission" do
    mail = NoteMailer.new_note_permission
    assert_equal "New note permission", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "permission_revoked" do
    mail = NoteMailer.permission_revoked
    assert_equal "Permission revoked", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
