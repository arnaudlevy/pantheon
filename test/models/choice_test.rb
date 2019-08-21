# == Schema Information
#
# Table name: choices
#
#  id             :bigint           not null, primary key
#  user_id        :bigint
#  personality_id :bigint
#  description    :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  major          :boolean          default(FALSE)
#

require 'test_helper'

class ChoiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
