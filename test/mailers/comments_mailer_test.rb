require "test_helper"

class CommentsMailerTest < ActionMailer::TestCase
  test "submitted" do
    # comment = 
    mail = CommentsMailer.submitted(comments(:one))
    assert_equal "New comment!", mail.subject
    assert_equal ["amoiz4142@gmail.com"], mail.to
    assert_equal ["from@example.com"], mail.from
  end

end
