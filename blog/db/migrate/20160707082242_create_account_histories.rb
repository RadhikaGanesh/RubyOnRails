class CreateAccountHistories < ActiveRecord::Migration
  def change
    create_table :account_histories do |t|
      t.belongs_to :bank, index: true
      t.string :credit_rating
      t.string :integer

      t.timestamps null: false
    end
  end
end
