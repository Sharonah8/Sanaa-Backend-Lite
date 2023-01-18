require 'rails_helper'

RSpec.describe Review, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "validations" do

    it { should validate_presence_of(:comment) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:image_url) }
    it { should validate_length_of(:name).is_at_most(10) }
    it { should validate_length_of(:comment).is_at_most(12) }
  end

end
