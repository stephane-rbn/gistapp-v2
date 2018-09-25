# == Schema Information
#
# Table name: gists
#
#  id          :bigint(8)        not null, primary key
#  filename    :string
#  description :string
#  content     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint(8)
#

class Gist < ApplicationRecord
  validates :filename, presence: true, length: { minimum: 3, maximum: 55 }
  validates :content, presence: true
  validates :description, presence: true
end
