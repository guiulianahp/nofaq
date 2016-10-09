class AddDoubtIdToOffer < ActiveRecord::Migration[5.0]
  def change
    add_column :offers, :doubt_id, :integer
  end
end
