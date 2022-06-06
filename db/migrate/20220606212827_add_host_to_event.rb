class AddHostToEvent < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :host, index: true
  end
end
