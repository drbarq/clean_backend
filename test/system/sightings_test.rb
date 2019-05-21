require "application_system_test_case"

class SightingsTest < ApplicationSystemTestCase
  setup do
    @sighting = sightings(:one)
  end

  test "visiting the index" do
    visit sightings_url
    assert_selector "h1", text: "Sightings"
  end

  test "creating a Sighting" do
    visit sightings_url
    click_on "New Sighting"

    fill_in "Blood alcohol level", with: @sighting.blood_alcohol_level
    fill_in "Incident lat", with: @sighting.incident_lat
    fill_in "Incident location", with: @sighting.incident_location
    fill_in "Incident long", with: @sighting.incident_long
    fill_in "Incident occurrence", with: @sighting.incident_occurrence
    fill_in "Plausibility", with: @sighting.plausibility
    fill_in "Responding police department location", with: @sighting.responding_police_department_location
    fill_in "Witness gibberish", with: @sighting.witness_gibberish
    click_on "Create Sighting"

    assert_text "Sighting was successfully created"
    click_on "Back"
  end

  test "updating a Sighting" do
    visit sightings_url
    click_on "Edit", match: :first

    fill_in "Blood alcohol level", with: @sighting.blood_alcohol_level
    fill_in "Incident lat", with: @sighting.incident_lat
    fill_in "Incident location", with: @sighting.incident_location
    fill_in "Incident long", with: @sighting.incident_long
    fill_in "Incident occurrence", with: @sighting.incident_occurrence
    fill_in "Plausibility", with: @sighting.plausibility
    fill_in "Responding police department location", with: @sighting.responding_police_department_location
    fill_in "Witness gibberish", with: @sighting.witness_gibberish
    click_on "Update Sighting"

    assert_text "Sighting was successfully updated"
    click_on "Back"
  end

  test "destroying a Sighting" do
    visit sightings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sighting was successfully destroyed"
  end
end
