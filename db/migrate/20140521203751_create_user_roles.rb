class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.references :user, index: true
      t.references :role

      t.timestamps
    end
  end
end
