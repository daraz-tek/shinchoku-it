require "test_helper"

describe SocialProfile do
  let(:social_profile) { SocialProfile.new }

  it "must be valid" do
    value(social_profile).must_be :valid?
  end
end
