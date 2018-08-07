class AddAnnonymousUserColunmToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :anonymous_user, :string
  end
end
