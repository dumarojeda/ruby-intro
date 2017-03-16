class RemoveWeightFromDogs < ActiveRecord::Migration
  def change
    change_table :dogs do |t|
      t.remove  :weight
    end
  end
end