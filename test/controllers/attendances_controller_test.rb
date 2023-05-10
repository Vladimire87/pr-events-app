# frozen_string_literal: true

require 'test_helper'

class AttendancesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get attendances_index_url
    assert_response :success
  end

  test 'should get show' do
    get attendances_show_url
    assert_response :success
  end
end
