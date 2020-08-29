class Problem < ApplicationRecord

  has_many :matches, dependent: :destroy
  has_many :no_matches, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :type
  end

  def match_words
    matches.pluck(:word)
  end

  def no_match_words
    no_matches.pluck(:word)
  end
end
