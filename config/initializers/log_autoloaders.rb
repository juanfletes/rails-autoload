# Rails.autoloaders.logger = Logger.new("#{Rails.root}/log/autoloading.log")
# Rails.autoloaders.logger = Rails.logger

ActiveSupport::Dependencies.singleton_class.prepend(Module.new do
  def load_missing_constant(*args)
    Rails.logger.debug "#{__method__}(#{args.map(&:inspect).join(', ')})"
    super
  end
end)