# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ActiveStorage::AnalyzeJob`.
# Please instead update this file by running `bin/tapioca dsl ActiveStorage::AnalyzeJob`.

class ActiveStorage::AnalyzeJob
  class << self
    sig { params(blob: T.untyped).returns(T.any(ActiveStorage::AnalyzeJob, FalseClass)) }
    def perform_later(blob); end

    sig { params(blob: T.untyped).returns(T.untyped) }
    def perform_now(blob); end
  end
end
