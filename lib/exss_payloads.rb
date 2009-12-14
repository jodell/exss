
require 'exss_constants'
module EXSS

  # Convenience for the CLI script
  def self.run!(url = 'http://localhost')
    Payloads::Payloader.new(url).run
  end


  module Payloads
    # This class handles all XSS payloads
    class Payloader
      include EXSS::Constants
      attr_accessor :sources, :target

      def initialize(target = '')
        @sources = get_sources
        @target = target
      end

      def get_sources
        [ RSNAKE_URL ]
      end

      def to_s
        "<#{self.class} id=#{self.object_id} @sources=#{@sources}>"
      end

      def run
        "Running with #{@sources} against #{@target}"
      end

    end

  end # Payloads
end # EXSS
