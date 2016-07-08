class CreateAssemblies < ActiveRecord::Migration
  def change
    create_table :assemblies do |t|
      t.string :name
      t.string :string

      t.timestamps null: false
    end
  end
end
