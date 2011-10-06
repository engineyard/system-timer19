require "system_timer19/version"

begin
  require 'system_timer'
rescue LoadError
end

if defined?(SystemTimer)
  module Kernel
    def timeout(*args, &block)
      SystemTimer.timeout(*args, &block)
    end
  end
else
  require 'timeout'
end
module Kernel
  alias_method :timeout_after, :timeout
end
