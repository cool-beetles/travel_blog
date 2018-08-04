class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :email
      t.string :password_digest
      t.integer :user_id

      t.timestamps
    end
  end
end