class CreateRfqs < ActiveRecord::Migration[5.2]
  def change
    create_table :rfqs do |t|
      t.references :project, foreign_key: true
      t.string :name
      t.string :number
      t.string :initiator
      t.datetime :issue_date
      t.datetime :due_date
      t.string :status
      t.boolean :sealed

      t.timestamps
    end
  end
end
