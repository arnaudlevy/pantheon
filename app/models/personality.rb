# == Schema Information
#
# Table name: personalities
#
#  id            :bigint           not null, primary key
#  first_name    :string
#  last_name     :string
#  name          :string
#  wikipedia_url :string
#  photo         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  description   :text
#

class Personality < ApplicationRecord
  has_many :choices, dependent: :destroy
  has_many :users, through: :choices

  scope :search, -> (term) { where('name ILIKE ?', term) }
  default_scope { order(:name) }

  def to_s
    "#{name}"
  end
end
