class RenameRateridFromRatings < ActiveRecord::Migration
  def change
    change_table :ratings do |t|
      t.rename :rater_id, :judge_id
    end
  end
end
