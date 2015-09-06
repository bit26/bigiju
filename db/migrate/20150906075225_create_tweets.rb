class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :username
      t.string :tweet
      t.date :jikan

      t.timestamps null: false
    end
  end
end
