class Dog < ApplicationRecord
  belongs_to :city
  has_many :join_table_stroll_dogs
  has_many :strolls, through: :join_table_stroll_dogs 
end
