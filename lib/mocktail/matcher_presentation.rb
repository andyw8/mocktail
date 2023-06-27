module Mocktail
  class MatcherPresentation
    extend T::Sig

    def respond_to_missing?(name, include_private = false)
      !!MatcherRegistry.instance.get(name) || super
    end

    def method_missing(name, *args, **kwargs, &blk)
      if (matcher = MatcherRegistry.instance.get(name))
        matcher.new(*args, **kwargs, &blk)
      else
        super
      end
    end
  end
end
