# typed: false
# frozen_string_literal: true

RSpec.describe WithSig do
  it do
    expect(described_class.new([]).foo).to eq(0)
  end

  it do
    expect(described_class.new([1]).foo).to eq(1)
  end

  it do
    expect(described_class.new([2]).foo).to eq(0)
  end
end
