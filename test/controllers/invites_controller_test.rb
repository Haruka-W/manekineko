# frozen_string_literal: true

require 'test_helper'

class InvitesControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get invites_new_url
    assert_response :success
  end

  test 'should get index' do
    get invites_index_url
    assert_response :success
  end

  test 'should get show' do
    get invites_show_url
    assert_response :success
  end
end
