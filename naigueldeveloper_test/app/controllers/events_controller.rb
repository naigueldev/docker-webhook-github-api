class EventsController < ApplicationController

	skip_before_action :verify_authenticity_token

	def index
		puts "params[:issue][:number] :: #{params[:issue_id]}"
		@issue_number = params[:issue_id]
		@events = Event.where(id_issue: @issue_number)
	end
	def create
		params = JSON.parse(request.body.read)
		Event.push(params)
	end

	private

	def webhook_secret(payload)
		ENV['GITHUB_WEBHOOK_SECRET']
	end



end
