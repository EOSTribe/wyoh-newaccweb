class CreateEosAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :eos_accounts do |t|
      t.string :username
      t.string :email
      t.string :pubkey
      t.text :description

      t.timestamps
    end
  end
end
