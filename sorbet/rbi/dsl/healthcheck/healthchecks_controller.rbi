# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Healthcheck::HealthchecksController`.
# Please instead update this file by running `bin/tapioca dsl Healthcheck::HealthchecksController`.

class Healthcheck::HealthchecksController
  include GeneratedUrlHelpersModule
  include GeneratedPathHelpersModule

  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::ViteRails::TagHelpers
    include ::InertiaRails::Helper
    include ::ActionController::Base::HelperMethods
    include ::DeviseHelper
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
