class Vote < ActiveRecord::Base
  belongs_to :voting_pet, class_name: 'Pet'
  belongs_to :pet
end
