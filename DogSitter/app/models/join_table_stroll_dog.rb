class JoinTableStrollDog < ApplicationRecord
  belongs_to :stroll
  belongs_to :dog
  has_many :dogsitters, through: :stroll
end
