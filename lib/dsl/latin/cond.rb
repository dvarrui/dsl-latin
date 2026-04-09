# frozen_string_literal: true

module Dsl
  module Latin
    class Cond
      def initialize(state)
        @state = state
        @done = false
      end
    
      def tum(&block)
        ejecutar(true, block)
      end
    
      def si_non(&block)
        ejecutar(false, block)
      end
    
      private
      
      def ejecutar(state, block)
        return self if @done
    
        if @state == state
          block.call
          @done = true
        end
        self
      end
    end
    
  end
end


def si(cond)
  Dsl::Latin::Cond.new(cond)
end

