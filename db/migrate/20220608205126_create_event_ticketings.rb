class CreateEventTicketings < ActiveRecord::Migration[7.0]
  def change
    create_table :event_ticketings, id: false do |t|
      t.references :event_attendee, index: true, foreign_key: { to_table: :users }
      t.references :attended_event, index: true, foreign_key: { to_table: :events }
    end
  end
end
