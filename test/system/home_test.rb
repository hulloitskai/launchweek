# typed: true
# frozen_string_literal: true

require "application_system_test_case"

class HomeTest < ApplicationSystemTestCase
  test "renders" do
    visit(root_path)
    assert_text("LaunchWeek", wait: 1)
  end
end
