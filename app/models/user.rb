# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  uid        :string
#  name       :string
#  agency_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  belongs_to :agency

  def self.search(search)
    select('uid AS id, name AS label').where('name LIKE ? OR uid LIKE ?', "%#{search}%", "%#{search}%")
  end
end
