require "application_system_test_case"

class ArtifactsTest < ApplicationSystemTestCase
  setup do
    @artifact = artifacts(:one)
  end

  test "visiting the index" do
    visit artifacts_url
    assert_selector "h1", text: "Artifacts"
  end

  test "should create artifact" do
    visit artifacts_url
    click_on "New artifact"

    fill_in "Name", with: @artifact.name
    fill_in "Picture", with: @artifact.picture
    fill_in "User", with: @artifact.user_id
    click_on "Create Artifact"

    assert_text "Artifact was successfully created"
    click_on "Back"
  end

  test "should update Artifact" do
    visit artifact_url(@artifact)
    click_on "Edit this artifact", match: :first

    fill_in "Name", with: @artifact.name
    fill_in "Picture", with: @artifact.picture
    fill_in "User", with: @artifact.user_id
    click_on "Update Artifact"

    assert_text "Artifact was successfully updated"
    click_on "Back"
  end

  test "should destroy Artifact" do
    visit artifact_url(@artifact)
    click_on "Destroy this artifact", match: :first

    assert_text "Artifact was successfully destroyed"
  end
end
