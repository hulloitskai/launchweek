# typed: true
# frozen_string_literal: true

class CalendlyController < ApplicationController
  # == Actions
  # GET /calendly, /hangout
  def show
    redirect_to("https://cal.com/launchweek", allow_other_host: true)
  end

  def event
    handle = T.let(params.fetch("handle"), String)
    redirect_to("https://cal.com/launchweek/#{handle}", allow_other_host: true)
  end
end
