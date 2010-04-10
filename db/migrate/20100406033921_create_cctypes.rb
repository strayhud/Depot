class CreateCctypes < ActiveRecord::Migration
  def self.up
    create_table :cctypes do |t|
      t.string :display_name
      t.string :code_name

      t.timestamps
    end
    
    Cctype.create(:display_name => 'Check', :code_name => 'check')
    Cctype.create(:display_name => 'Credit Card', :code_name => 'cc')
    Cctype.create(:display_name => 'Purchase Order', :code_name => 'po')    
  end

  def self.down
    drop_table :cctypes
  end
end
