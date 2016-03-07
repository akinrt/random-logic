require 'spec_helper'

describe RandomLogic do
  it 'has a version number' do
    expect(RandomLogic::VERSION).not_to be nil
  end

  it 'returns float values' do
    expect(RandomLogic.inverse(RandomLogic.normal_rand).is_a?(Float)).to eq(true)
    expect(RandomLogic.add.is_a?(Float)).to eq(true)
    expect(RandomLogic.multiply.is_a?(Float)).to eq(true)
    expect(RandomLogic.multiply_inverse.is_a?(Float)).to eq(true)
    expect(RandomLogic.square.is_a?(Float)).to eq(true)
    expect(RandomLogic.square_inverse.is_a?(Float)).to eq(true)
    expect(RandomLogic.sqrt.is_a?(Float)).to eq(true)
    expect(RandomLogic.sqrt_inverse.is_a?(Float)).to eq(true)
    expect(RandomLogic.normal.is_a?(Float)).to eq(true)
    expect(RandomLogic.normal_rand.is_a?(Float)).to eq(true)
  end
end
