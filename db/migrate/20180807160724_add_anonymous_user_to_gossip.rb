class AddAnonymousUserToGossip < ActiveRecord::Migration[5.2]
  def change
    add_column :gossips, :anonymous_user, :string
  end
end
