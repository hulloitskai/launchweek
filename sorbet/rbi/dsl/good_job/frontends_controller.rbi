# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `GoodJob::FrontendsController`.
# Please instead update this file by running `bin/tapioca dsl GoodJob::FrontendsController`.

class GoodJob::FrontendsController
  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::ViteRails::TagHelpers
    include ::InertiaRails::Helper
    include ::ActionController::Base::HelperMethods
    include ::GoodJob::ApplicationHelper
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
