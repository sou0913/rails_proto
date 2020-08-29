class Problem < ApplicationRecord

  has_many :matches
  has_many :no_matches

  with_options presence: true do
    validates :title
    validates :statement
    validates :type
  end
end
