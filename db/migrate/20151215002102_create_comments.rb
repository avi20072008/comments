class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string "content_body", :limit=>100
      	t.timestamps null: false
    end
  end
end
