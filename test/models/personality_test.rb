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

require 'test_helper'

class PersonalityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
