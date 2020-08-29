class Problem < ApplicationRecord

  with_options presence: true do
    validates :title
    validates :statement
    validates :type
  end
end
