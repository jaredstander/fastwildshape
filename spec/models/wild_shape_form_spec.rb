require 'spec_helper'

describe WildShapeForm do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:size) }
  it { should validate_presence_of(:type) }
  it { should validate_presence_of(:subtype) }
  it { should validate_presence_of(:abilities) }
  it { should validate_presence_of(:attacks) }
end
