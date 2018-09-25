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
  belongs_to :category

  validates :filename, presence: true, length: { minimum: 3, maximum: 55 }
  validates :content, presence: true
  validates :description, presence: true

  def self.search(search)
    where(
      'filename ILIKE ? OR description ILIKE ? OR content ILIKE ?',
      "%#{search}%",
      "%#{search}%",
      "%#{search}%"
    )
  end
end
