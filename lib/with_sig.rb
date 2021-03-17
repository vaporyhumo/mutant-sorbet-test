# typed: strict
# frozen_string_literal: true

class WithSig
  extend T::Sig

  sig { params(array: T::Array[Integer]).void }
  def initialize(array)
    @array = T.let(array, T::Array[Integer])
  end

  sig { returns(Integer) }
  def foo
    @array.reject(&:even?).count
  end
end
