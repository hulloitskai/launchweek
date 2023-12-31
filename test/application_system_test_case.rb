# typed: strict
# frozen_string_literal: true

require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  extend T::Sig

  include Devise::Test::IntegrationHelpers
  include Routing

  # == Configuration
  driven_by :headless_chrome

  # == Setup
  sig { void }
  def setup
    wait_for_inertia_ssr
    super
  end

  private

  # == Helpers
  sig { returns(T::Boolean) }
  def inertia_ssr_running?
    url = Addressable::URI.parse(InertiaRails.ssr_url)
    Socket.tcp(url.hostname, url.port, connect_timeout: 0.5) do
      true
    end rescue false
  end

  sig { returns(NilClass) }
  def wait_for_inertia_ssr
    until inertia_ssr_running?
      sleep(1)
      Rails.logger.info("Waiting for Inertia SSR to start...")
    end
  end
end
