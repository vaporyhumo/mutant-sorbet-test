# typed: strict
# frozen_string_literal: true

class WithNoRuntime
  extend T::Sig
  NR = T::Sig::WithoutRuntime

  T::Sig::WithoutRuntime.sig { params(array: T::Array[Integer]).void }
  def initialize(array)
    @array = T.let(array, T::Array[Integer])
  end

  T::Sig::WithoutRuntime.sig { returns(Integer) }
  def foo
    @array.reject(&:even?).count
  end
end
