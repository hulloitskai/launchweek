# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `SendPensieveMessageLikeNotificationJob`.
# Please instead update this file by running `bin/tapioca dsl SendPensieveMessageLikeNotificationJob`.

class SendPensieveMessageLikeNotificationJob
  class << self
    sig { params(like: ::PensieveMessageLike).returns(T.any(SendPensieveMessageLikeNotificationJob, FalseClass)) }
    def perform_later(like); end

    sig { params(like: ::PensieveMessageLike).void }
    def perform_now(like); end
  end
end
