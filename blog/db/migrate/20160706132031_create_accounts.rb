class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
    	 t.belongs_to :supplier, index: true, unique: true, foreign_key: true
      	 t.integer :account_number
		 t.timestamps 
    end
  end
end
