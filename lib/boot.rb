# typed: strict
# frozen_string_literal: true

require 'sorbet-runtime'
require 'zeitwerk'
loader = Zeitwerk::Loader.for_gem
loader.setup

Boot = T.let(Object.new, Object)

loader.eager_load
