class Event < ApplicationRecord
	def self.push(params)
		id         = params['issue']['number']
		action     = params['action']
		title      = params['issue']['title']
		body       = params['issue']['body']
		created_at = params['issue']['created_at']
		updated_at = params['issue']['updated_at']

		Event.create(
			id_issue: id,
			action: action,
			title: title,
			body: body,
			created_at: created_at,
			updated_at: updated_at
		)
	end
end