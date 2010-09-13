class AddClickedToSent < ActiveRecord::Migration
  def self.up
    add_column :sents, :clicked, :integer
  end

  def self.down
    remove_column :sents, :clicked
  end
end
