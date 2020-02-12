class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.timestamps
    end

    # We can ensure validations here as well
    # on the database level, in case of it's
    # required, currently it's avaialble on
    # the model itself
    #
    # add_index :users, :email, unique: true
  end
end
