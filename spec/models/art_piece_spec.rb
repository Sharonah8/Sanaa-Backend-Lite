require 'rails_helper'

RSpec.describe ArtPiece, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "validations" do
      
      it { should validate_presence_of(:image_url) }
      it { should validate_presence_of(:title) }
      it { should validate_presence_of(:description) }
      it { should validate_presence_of(:price) }
      it { should validate_length_of(:title).is_at_most(10) }
      it { should validate_length_of(:description).is_at_most(12) }
      it { should validate_numericality_of(:price).only_integer }
    end
end
