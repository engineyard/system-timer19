require "system-timer19/version"

if defined?(:SystemTimer)
  module Kernel
    def timeout(seconds, &block)
      SystemTimer.timeout(seconds, &block)
    end
    alias_method :timeout_after, :timeout
  end
else
  require 'timeout'
end
