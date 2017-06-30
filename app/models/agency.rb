# == Schema Information
#
# Table name: agencies
#
#  id         :integer          not null, primary key
#  name       :string
#  logo       :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Agency < ApplicationRecord
end
