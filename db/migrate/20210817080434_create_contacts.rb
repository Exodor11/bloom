class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.references :follower, index: true, foreign_key: {to_table: :users}
      t.references :following, index: true, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
