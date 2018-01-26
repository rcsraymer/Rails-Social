class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.references :leader, index: true
      t.references :follower, index: true

      t.timestamps
    end
  end
end
