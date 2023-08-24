# typed: strict

module Mocktail
  class RegistersMatcher
    extend T::Sig

    sig { void }
    def initialize
      @grabs_original_method_parameters = T.let(GrabsOriginalMethodParameters.new, GrabsOriginalMethodParameters)
    end

    sig { params(matcher_type: T.class_of(Matchers::Base)).void }
    def register(matcher_type)
      if invalid_type?(matcher_type)
        raise InvalidMatcherError.new <<~MSG.tr("\n", " ")
          Matchers must be Ruby classes
        MSG
      elsif invalid_name?(matcher_type)
        raise InvalidMatcherError.new <<~MSG.tr("\n", " ")
          #{matcher_type.name}.matcher_name must return a valid method name
        MSG
      elsif invalid_match?(matcher_type)
        raise InvalidMatcherError.new <<~MSG.tr("\n", " ")
          #{matcher_type.name}#match? must be defined as a one-argument method
        MSG
      elsif invalid_flag?(matcher_type)
        raise InvalidMatcherError.new <<~MSG.tr("\n", " ")
          #{matcher_type.name}#is_mocktail_matcher? must be defined
        MSG
      else
        MatcherRegistry.instance.add(matcher_type)
      end
    end

    private

    sig { params(matcher_type: T.class_of(Matchers::Base)).returns(T::Boolean) }
    def invalid_type?(matcher_type)
      !matcher_type.is_a?(Class)
    end

    sig { params(matcher_type: T.class_of(Matchers::Base)).returns(T::Boolean) }
    def invalid_name?(matcher_type)
      return true unless matcher_type.respond_to?(:matcher_name)
      name = matcher_type.matcher_name

      !name.respond_to?(:to_sym) || name.to_sym.inspect.start_with?(":\"")
    end

    sig { params(matcher_type: T.class_of(Matchers::Base)).returns(T::Boolean) }
    def invalid_match?(matcher_type)
      params = @grabs_original_method_parameters.grab(matcher_type.instance_method(:match?))
      params.size > 1 || ![:req, :opt].include?(T.unsafe(params).first[0])
    rescue NameError
      true
    end

    sig { params(matcher_type: T.class_of(Matchers::Base)).returns(T::Boolean) }
    def invalid_flag?(matcher_type)
      !matcher_type.instance_method(:is_mocktail_matcher?)
    rescue NameError
      true
    end
  end
end
