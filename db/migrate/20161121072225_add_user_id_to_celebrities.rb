class AddUserIdToCelebrities < ActiveRecord::Migration
  def change
    add_column :celebrities, :user_id, :integer
  end
end
