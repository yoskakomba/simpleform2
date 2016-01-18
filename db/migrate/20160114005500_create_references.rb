class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :drive_and_walk_by
      t.string :google_search
      t.string :gift_voucher
      t.string :yellow_pages
      t.string :yelp
      t.string :trip_advisor
      t.string :start_local
      t.string :tenbest
      t.string :time_out
      t.string :friend_referral
    end
  end
end
