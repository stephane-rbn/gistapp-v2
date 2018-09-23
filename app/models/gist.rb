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
#

class Gist < ApplicationRecord
end
