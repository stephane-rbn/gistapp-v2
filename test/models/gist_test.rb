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

require 'test_helper'

class GistTest < ActiveSupport::TestCase
  def setup
    @gist = Gist.new(
      filename: 'hello_world.rb',
      description: 'Just a simple ruby code',
      content: "puts 'Hello, World!'"
    )
  end

  test 'should be valid' do
    assert @gist.valid?
  end

  test 'filename should be present' do
    @gist.filename = ''
    assert_not @gist.valid?
  end

  test 'description should be present' do
    @gist.description = ''
    assert_not @gist.valid?
  end

  test 'content should be present' do
    @gist.content = ''
    assert_not @gist.valid?
  end

  test 'filename should not only contain whitespaces' do
    @gist.filename = '     '
    assert_not @gist.valid?
  end

  test 'description should not only contain whitespaces' do
    @gist.description = '     '
    assert_not @gist.valid?
  end

  test 'content should not only contain whitespaces' do
    @gist.content = '     '
    assert_not @gist.valid?
  end

  test 'filename should not be too short' do
    @gist.filename = '.c'
    assert_not @gist.valid?
  end

  test 'filename should not be too long' do
    @gist.filename = 'this_filename_is_way_too_long_and_i_really_don_t_like_it.rb'
    assert_not @gist.valid?
  end
end
