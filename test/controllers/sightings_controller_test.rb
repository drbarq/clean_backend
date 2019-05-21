require 'test_helper'

class SightingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sighting = sightings(:one)
  end

  test "should get index" do
    get sightings_url
    assert_response :success
  end

  test "should get new" do
    get new_sighting_url
    assert_response :success
  end

  test "should create sighting" do
    assert_difference('Sighting.count') do
      post sightings_url, params: { sighting: { blood_alcohol_level: @sighting.blood_alcohol_level, incident_lat: @sighting.incident_lat, incident_location: @sighting.incident_location, incident_long: @sighting.incident_long, incident_occurrence: @sighting.incident_occurrence, plausibility: @sighting.plausibility, responding_police_department_location: @sighting.responding_police_department_location, witness_gibberish: @sighting.witness_gibberish } }
    end

    assert_redirected_to sighting_url(Sighting.last)
  end

  test "should show sighting" do
    get sighting_url(@sighting)
    assert_response :success
  end

  test "should get edit" do
    get edit_sighting_url(@sighting)
    assert_response :success
  end

  test "should update sighting" do
    patch sighting_url(@sighting), params: { sighting: { blood_alcohol_level: @sighting.blood_alcohol_level, incident_lat: @sighting.incident_lat, incident_location: @sighting.incident_location, incident_long: @sighting.incident_long, incident_occurrence: @sighting.incident_occurrence, plausibility: @sighting.plausibility, responding_police_department_location: @sighting.responding_police_department_location, witness_gibberish: @sighting.witness_gibberish } }
    assert_redirected_to sighting_url(@sighting)
  end

  test "should destroy sighting" do
    assert_difference('Sighting.count', -1) do
      delete sighting_url(@sighting)
    end

    assert_redirected_to sightings_url
  end
end
