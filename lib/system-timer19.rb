require "system_timer19/version"

begin
  require 'system_timer'
rescue LoadError
end

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
