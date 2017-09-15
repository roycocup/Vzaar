class CreateEmails < ActiveRecord::Migration[5.1]
  def change
    create_table :emails do |t|

      t.string :to
      t.string :content
      t.string :status

      t.timestamps
    end
  end
end
