class AddSubmittedByToBills < ActiveRecord::Migration[7.1]
  def change
    add_reference :bills, :submitted_by, foreign_key: { to_table: :users }
  end
end
