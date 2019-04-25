class CreateSpecialties < ActiveRecord::Migration[5.2]
  def change
    remove_column :doctors, :specialty, :string
    create_table :specialties do |t|
      t.string :name
      t.timestamps
    end
    create_table :doctor_specialties do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :specialty, index: true
      t.timestamps
    end
    add_column :cities, :name, :string
  end
end
