module Mocktail
  class DemoConfig < Struct.new(
    :ignore_blocks,
    :ignore_extra_args,
    keyword_init: true
  )
  end
end