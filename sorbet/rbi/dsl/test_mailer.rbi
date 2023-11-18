# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `TestMailer`.
# Please instead update this file by running `bin/tapioca dsl TestMailer`.

class TestMailer
  class << self
    sig { returns(::ActionMailer::MessageDelivery) }
    def current_user; end

    sig { returns(::ActionMailer::MessageDelivery) }
    def default_reply_to; end

    sig { returns(::ActionMailer::MessageDelivery) }
    def default_sender; end

    sig { params(model: ::TestModel, current_user: T.nilable(::User)).returns(::ActionMailer::MessageDelivery) }
    def test_email(model, current_user: T.unsafe(nil)); end

    sig { returns(::ActionMailer::MessageDelivery) }
    def url_helpers; end
  end
end
