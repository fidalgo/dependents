require 'test_helper'

class VariantFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @variant_field = variant_fields(:one)
  end

  test "should get index" do
    get variant_fields_url
    assert_response :success
  end

  test "should get new" do
    get new_variant_field_url
    assert_response :success
  end

  test "should create variant_field" do
    assert_difference('VariantField.count') do
      post variant_fields_url, params: { variant_field: { belongs_to: @variant_field.belongs_to, name: @variant_field.name } }
    end

    assert_redirected_to variant_field_url(VariantField.last)
  end

  test "should show variant_field" do
    get variant_field_url(@variant_field)
    assert_response :success
  end

  test "should get edit" do
    get edit_variant_field_url(@variant_field)
    assert_response :success
  end

  test "should update variant_field" do
    patch variant_field_url(@variant_field), params: { variant_field: { belongs_to: @variant_field.belongs_to, name: @variant_field.name } }
    assert_redirected_to variant_field_url(@variant_field)
  end

  test "should destroy variant_field" do
    assert_difference('VariantField.count', -1) do
      delete variant_field_url(@variant_field)
    end

    assert_redirected_to variant_fields_url
  end
end
