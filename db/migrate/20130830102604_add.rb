class Add < ActiveRecord::Migration
  def change
    add_index :emails, :email, unique: true
  end
end
