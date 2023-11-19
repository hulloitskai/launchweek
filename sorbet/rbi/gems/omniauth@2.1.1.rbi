# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `omniauth` gem.
# Please instead update this file by running `bin/tapioca gem omniauth`.

# source://omniauth//lib/omniauth.rb#5
module OmniAuth
  class << self
    # source://omniauth//lib/omniauth.rb#130
    def config; end

    # @yield [config]
    #
    # source://omniauth//lib/omniauth.rb#134
    def configure; end

    # source://omniauth//lib/omniauth.rb#138
    def logger; end

    # source://omniauth//lib/omniauth.rb#142
    def mock_auth_for(provider); end

    # source://omniauth//lib/omniauth.rb#20
    def strategies; end
  end
end

# The AuthHash is a normalized schema returned by all OmniAuth
# strategies. It maps as much user information as the provider
# is able to provide into the InfoHash (stored as the `'info'`
# key).
#
# source://omniauth//lib/omniauth/auth_hash.rb#8
class OmniAuth::AuthHash < ::OmniAuth::KeyStore
  # source://omniauth//lib/omniauth/auth_hash.rb#22
  def regular_writer(key, value); end

  # Tells you if this is considered to be a valid
  # OmniAuth AuthHash. The requirements for that
  # are that it has a provider name, a uid, and a
  # valid info hash. See InfoHash#valid? for
  # more details there.
  #
  # @return [Boolean]
  #
  # source://omniauth//lib/omniauth/auth_hash.rb#18
  def valid?; end

  class << self
    # source://omniauth//lib/omniauth/auth_hash.rb#9
    def subkey_class; end
  end
end

# source://omniauth//lib/omniauth/auth_hash.rb#27
class OmniAuth::AuthHash::InfoHash < ::OmniAuth::KeyStore
  # source://omniauth//lib/omniauth/auth_hash.rb#32
  def name; end

  # @return [Boolean]
  #
  # source://omniauth//lib/omniauth/auth_hash.rb#41
  def name?; end

  # source://omniauth//lib/omniauth/auth_hash.rb#46
  def to_hash; end

  # @return [Boolean]
  #
  # source://omniauth//lib/omniauth/auth_hash.rb#41
  def valid?; end

  class << self
    # source://omniauth//lib/omniauth/auth_hash.rb#28
    def subkey_class; end
  end
end

# source://omniauth//lib/omniauth/authenticity_token_protection.rb#4
class OmniAuth::AuthenticityError < ::StandardError; end

# source://omniauth//lib/omniauth/authenticity_token_protection.rb#5
class OmniAuth::AuthenticityTokenProtection < ::Rack::Protection::AuthenticityToken
  # @return [AuthenticityTokenProtection] a new instance of AuthenticityTokenProtection
  #
  # source://omniauth//lib/omniauth/authenticity_token_protection.rb#6
  def initialize(options = T.unsafe(nil)); end

  # source://omniauth//lib/omniauth/authenticity_token_protection.rb#14
  def call(env); end

  # source://omniauth//lib/omniauth/authenticity_token_protection.rb#14
  def call!(env); end

  private

  # @raise [AuthenticityError]
  #
  # source://omniauth//lib/omniauth/authenticity_token_protection.rb#25
  def default_reaction(_env); end

  # @raise [AuthenticityError]
  #
  # source://omniauth//lib/omniauth/authenticity_token_protection.rb#25
  def deny(_env); end

  class << self
    # source://omniauth//lib/omniauth/authenticity_token_protection.rb#10
    def call(env); end
  end
end

# source://omniauth//lib/omniauth/builder.rb#2
class OmniAuth::Builder < ::Rack::Builder
  # source://omniauth//lib/omniauth/builder.rb#15
  def before_callback_phase(&block); end

  # source://omniauth//lib/omniauth/builder.rb#7
  def before_options_phase(&block); end

  # source://omniauth//lib/omniauth/builder.rb#11
  def before_request_phase(&block); end

  # source://omniauth//lib/omniauth/builder.rb#43
  def call(env); end

  # source://omniauth//lib/omniauth/builder.rb#19
  def configure(&block); end

  # source://omniauth//lib/omniauth/builder.rb#3
  def on_failure(&block); end

  # source://omniauth//lib/omniauth/builder.rb#23
  def options(options = T.unsafe(nil)); end

  # source://omniauth//lib/omniauth/builder.rb#29
  def provider(klass, *args, **opts, &block); end
end

# source://omniauth//lib/omniauth.rb#24
class OmniAuth::Configuration
  include ::Singleton
  extend ::Singleton::SingletonClassMethods

  # @return [Configuration] a new instance of Configuration
  #
  # source://omniauth//lib/omniauth.rb#52
  def initialize; end

  # This is a convenience method to be used by strategy authors
  # so that they can add special cases to the camelization utility
  # method that allows OmniAuth::Builder to work.
  #
  # @param name [String] The underscored name, e.g. `oauth`
  # @param camelized [String] The properly camelized name, e.g. 'OAuth'
  #
  # source://omniauth//lib/omniauth.rb#121
  def add_camelization(name, camelized); end

  # source://omniauth//lib/omniauth.rb#96
  def add_mock(provider, original = T.unsafe(nil)); end

  # Returns the value of attribute allowed_request_methods.
  #
  # source://omniauth//lib/omniauth.rb#126
  def allowed_request_methods; end

  # Sets the attribute allowed_request_methods
  #
  # @param value the value to set the attribute allowed_request_methods to.
  #
  # source://omniauth//lib/omniauth.rb#126
  def allowed_request_methods=(_arg0); end

  # source://omniauth//lib/omniauth.rb#64
  def before_callback_phase(&block); end

  # Sets the attribute before_callback_phase
  #
  # @param value the value to set the attribute before_callback_phase to.
  #
  # source://omniauth//lib/omniauth.rb#125
  def before_callback_phase=(_arg0); end

  # source://omniauth//lib/omniauth.rb#72
  def before_options_phase(&block); end

  # Sets the attribute before_options_phase
  #
  # @param value the value to set the attribute before_options_phase to.
  #
  # source://omniauth//lib/omniauth.rb#125
  def before_options_phase=(_arg0); end

  # source://omniauth//lib/omniauth.rb#88
  def before_request_phase(&block); end

  # Sets the attribute before_request_phase
  #
  # @param value the value to set the attribute before_request_phase to.
  #
  # source://omniauth//lib/omniauth.rb#125
  def before_request_phase=(_arg0); end

  # Returns the value of attribute camelizations.
  #
  # source://omniauth//lib/omniauth.rb#126
  def camelizations; end

  # Sets the attribute camelizations
  #
  # @param value the value to set the attribute camelizations to.
  #
  # source://omniauth//lib/omniauth.rb#126
  def camelizations=(_arg0); end

  # Returns the value of attribute failure_raise_out_environments.
  #
  # source://omniauth//lib/omniauth.rb#126
  def failure_raise_out_environments; end

  # Sets the attribute failure_raise_out_environments
  #
  # @param value the value to set the attribute failure_raise_out_environments to.
  #
  # source://omniauth//lib/omniauth.rb#126
  def failure_raise_out_environments=(_arg0); end

  # Returns the value of attribute form_css.
  #
  # source://omniauth//lib/omniauth.rb#126
  def form_css; end

  # Sets the attribute form_css
  #
  # @param value the value to set the attribute form_css to.
  #
  # source://omniauth//lib/omniauth.rb#126
  def form_css=(_arg0); end

  # Returns the value of attribute full_host.
  #
  # source://omniauth//lib/omniauth.rb#126
  def full_host; end

  # Sets the attribute full_host
  #
  # @param value the value to set the attribute full_host to.
  #
  # source://omniauth//lib/omniauth.rb#126
  def full_host=(_arg0); end

  # Returns the value of attribute logger.
  #
  # source://omniauth//lib/omniauth.rb#126
  def logger; end

  # Sets the attribute logger
  #
  # @param value the value to set the attribute logger to.
  #
  # source://omniauth//lib/omniauth.rb#126
  def logger=(_arg0); end

  # Returns the value of attribute mock_auth.
  #
  # source://omniauth//lib/omniauth.rb#126
  def mock_auth; end

  # Sets the attribute mock_auth
  #
  # @param value the value to set the attribute mock_auth to.
  #
  # source://omniauth//lib/omniauth.rb#126
  def mock_auth=(_arg0); end

  # source://omniauth//lib/omniauth.rb#56
  def on_failure(&block); end

  # Sets the attribute on_failure
  #
  # @param value the value to set the attribute on_failure to.
  #
  # source://omniauth//lib/omniauth.rb#125
  def on_failure=(_arg0); end

  # Returns the value of attribute path_prefix.
  #
  # source://omniauth//lib/omniauth.rb#126
  def path_prefix; end

  # Sets the attribute path_prefix
  #
  # @param value the value to set the attribute path_prefix to.
  #
  # source://omniauth//lib/omniauth.rb#126
  def path_prefix=(_arg0); end

  # source://omniauth//lib/omniauth.rb#80
  def request_validation_phase(&block); end

  # Sets the attribute request_validation_phase
  #
  # @param value the value to set the attribute request_validation_phase to.
  #
  # source://omniauth//lib/omniauth.rb#125
  def request_validation_phase=(_arg0); end

  # Returns the value of attribute silence_get_warning.
  #
  # source://omniauth//lib/omniauth.rb#126
  def silence_get_warning; end

  # Sets the attribute silence_get_warning
  #
  # @param value the value to set the attribute silence_get_warning to.
  #
  # source://omniauth//lib/omniauth.rb#126
  def silence_get_warning=(_arg0); end

  # Returns the value of attribute test_mode.
  #
  # source://omniauth//lib/omniauth.rb#126
  def test_mode; end

  # Sets the attribute test_mode
  #
  # @param value the value to set the attribute test_mode to.
  #
  # source://omniauth//lib/omniauth.rb#126
  def test_mode=(_arg0); end

  class << self
    # source://omniauth//lib/omniauth.rb#27
    def default_logger; end

    # source://omniauth//lib/omniauth.rb#33
    def defaults; end

    private

    def allocate; end
    def new(*_arg0); end
  end
end

# source://omniauth//lib/omniauth.rb#6
class OmniAuth::Error < ::StandardError; end

# This simple Rack endpoint that serves as the default
# 'failure' mechanism for OmniAuth. If a strategy fails for
# any reason this endpoint will be invoked. The default behavior
# is to redirect to `/auth/failure` except in the case of
# a development `RACK_ENV`, in which case an exception will
# be raised.
#
# source://omniauth//lib/omniauth/failure_endpoint.rb#8
class OmniAuth::FailureEndpoint
  # @return [FailureEndpoint] a new instance of FailureEndpoint
  #
  # source://omniauth//lib/omniauth/failure_endpoint.rb#15
  def initialize(env); end

  # source://omniauth//lib/omniauth/failure_endpoint.rb#19
  def call; end

  # Returns the value of attribute env.
  #
  # source://omniauth//lib/omniauth/failure_endpoint.rb#9
  def env; end

  # source://omniauth//lib/omniauth/failure_endpoint.rb#49
  def origin_query_param; end

  # source://omniauth//lib/omniauth/failure_endpoint.rb#24
  def raise_out!; end

  # source://omniauth//lib/omniauth/failure_endpoint.rb#28
  def redirect_to_failure; end

  # source://omniauth//lib/omniauth/failure_endpoint.rb#43
  def strategy_name_query_param; end

  # source://omniauth//lib/omniauth/failure_endpoint.rb#35
  def strategy_path_prefix; end

  class << self
    # source://omniauth//lib/omniauth/failure_endpoint.rb#11
    def call(env); end
  end
end

# source://omniauth//lib/omniauth/form.rb#2
class OmniAuth::Form
  # @return [Form] a new instance of Form
  #
  # source://omniauth//lib/omniauth/form.rb#7
  def initialize(options = T.unsafe(nil)); end

  # source://omniauth//lib/omniauth/form.rb#50
  def button(text); end

  # source://omniauth//lib/omniauth/form.rb#59
  def fieldset(legend, options = T.unsafe(nil), &block); end

  # source://omniauth//lib/omniauth/form.rb#83
  def footer; end

  # source://omniauth//lib/omniauth/form.rb#66
  def header(title, header_info); end

  # source://omniauth//lib/omniauth/form.rb#55
  def html(html); end

  # source://omniauth//lib/omniauth/form.rb#33
  def input_field(type, name); end

  # source://omniauth//lib/omniauth/form.rb#28
  def label_field(text, target); end

  # Returns the value of attribute options.
  #
  # source://omniauth//lib/omniauth/form.rb#5
  def options; end

  # Sets the attribute options
  #
  # @param value the value to set the attribute options to.
  #
  # source://omniauth//lib/omniauth/form.rb#5
  def options=(_arg0); end

  # source://omniauth//lib/omniauth/form.rb#44
  def password_field(label, name); end

  # source://omniauth//lib/omniauth/form.rb#38
  def text_field(label, name); end

  # source://omniauth//lib/omniauth/form.rb#96
  def to_html; end

  # source://omniauth//lib/omniauth/form.rb#101
  def to_response; end

  protected

  # source://omniauth//lib/omniauth/form.rb#108
  def css; end

  class << self
    # source://omniauth//lib/omniauth/form.rb#18
    def build(options = T.unsafe(nil), &block); end
  end
end

# source://omniauth//lib/omniauth/form.rb#3
OmniAuth::Form::DEFAULT_CSS = T.let(T.unsafe(nil), String)

# Generic helper hash that allows method access on deeply nested keys.
#
# source://omniauth//lib/omniauth/key_store.rb#5
class OmniAuth::KeyStore < ::Hashie::Mash
  class << self
    # Disables warnings on Hashie 3.5.0+ for overwritten keys
    #
    # source://omniauth//lib/omniauth/key_store.rb#7
    def override_logging; end
  end
end

# source://omniauth//lib/omniauth/strategy.rb#4
class OmniAuth::NoSessionError < ::StandardError; end

# source://omniauth//lib/omniauth.rb#8
module OmniAuth::Strategies; end

# The Developer strategy is a very simple strategy that can be used as a
# placeholder in your application until a different authentication strategy
# is swapped in. It has zero security and should *never* be used in a
# production setting.
#
# ## Usage
#
# To use the Developer strategy, all you need to do is put it in like any
# other strategy:
#
# This will create a strategy that, when the user visits `/auth/developer`
# they will be presented a form that prompts for (by default) their name
# and email address. The auth hash will be populated with these fields and
# the `uid` will simply be set to the provided email.
#
# @example Basic Usage
#
#   use OmniAuth::Builder do
#   provider :developer
#   end
# @example Custom Fields
#
#   use OmniAuth::Builder do
#   provider :developer,
#   :fields => [:first_name, :last_name],
#   :uid_field => :last_name
#   end
#
# source://omniauth//lib/omniauth/strategies/developer.rb#31
class OmniAuth::Strategies::Developer
  include ::OmniAuth::Strategy
  extend ::OmniAuth::Strategy::ClassMethods

  # source://omniauth//lib/omniauth/strategies/developer.rb#37
  def request_phase; end
end

# The Strategy is the base unit of OmniAuth's ability to
# wrangle multiple providers. Each strategy provided by
# OmniAuth includes this mixin to gain the default functionality
# necessary to be compatible with the OmniAuth library.
#
# source://omniauth//lib/omniauth/strategy.rb#9
module OmniAuth::Strategy
  mixes_in_class_methods ::OmniAuth::Strategy::ClassMethods

  # Initializes the strategy by passing in the Rack endpoint,
  # the unique URL segment name for this strategy, and any
  # additional arguments. An `options` hash is automatically
  # created from the last argument if it is a hash.
  #
  # @overload new
  # @overload new
  # @param app [Rack application] The application on which this middleware is applied.
  # @raise [ArgumentError]
  # @yield [Options] Yields options to block for further configuration.
  #
  # source://omniauth//lib/omniauth/strategy.rb#133
  def initialize(app, *args, &block); end

  # Returns the value of attribute app.
  #
  # source://omniauth//lib/omniauth/strategy.rb#116
  def app; end

  # source://omniauth//lib/omniauth/strategy.rb#390
  def auth_hash; end

  # Duplicates this instance and runs #call! on it.
  #
  # @param The [Hash] Rack environment.
  #
  # source://omniauth//lib/omniauth/strategy.rb#168
  def call(env); end

  # The logic for dispatching any additional actions that need
  # to be taken. For instance, calling the request phase if
  # the request path is recognized.
  #
  # @param env [Hash] The Rack environment.
  #
  # source://omniauth//lib/omniauth/strategy.rb#177
  def call!(env); end

  # source://omniauth//lib/omniauth/strategy.rb#469
  def call_app!(env = T.unsafe(nil)); end

  # Performs the steps necessary to run the callback phase of a strategy.
  #
  # source://omniauth//lib/omniauth/strategy.rb#265
  def callback_call; end

  # source://omniauth//lib/omniauth/strategy.rb#445
  def callback_path; end

  # source://omniauth//lib/omniauth/strategy.rb#416
  def callback_phase; end

  # source://omniauth//lib/omniauth/strategy.rb#496
  def callback_url; end

  # source://omniauth//lib/omniauth/strategy.rb#382
  def credentials; end

  # source://omniauth//lib/omniauth/strategy.rb#461
  def current_path; end

  # source://omniauth//lib/omniauth/strategy.rb#425
  def custom_path(kind); end

  # Returns the value of attribute env.
  #
  # source://omniauth//lib/omniauth/strategy.rb#116
  def env; end

  # source://omniauth//lib/omniauth/strategy.rb#386
  def extra; end

  # source://omniauth//lib/omniauth/strategy.rb#534
  def fail!(message_key, exception = T.unsafe(nil)); end

  # source://omniauth//lib/omniauth/strategy.rb#476
  def full_host; end

  # source://omniauth//lib/omniauth/strategy.rb#378
  def info; end

  # source://omniauth//lib/omniauth/strategy.rb#153
  def inspect; end

  # Direct access to the OmniAuth logger, automatically prefixed
  # with this strategy's name.
  #
  # @example
  #   log :warn, "This is a warning."
  #
  # source://omniauth//lib/omniauth/strategy.rb#162
  def log(level, message); end

  # This is called in lieu of the normal request process
  # in the event that OmniAuth has been configured to be
  # in test mode.
  #
  # source://omniauth//lib/omniauth/strategy.rb#304
  def mock_call!(*_arg0); end

  # source://omniauth//lib/omniauth/strategy.rb#336
  def mock_callback_call; end

  # source://omniauth//lib/omniauth/strategy.rb#317
  def mock_request_call; end

  # source://omniauth//lib/omniauth/strategy.rb#513
  def name; end

  # Returns true if the environment recognizes either the
  # request or callback path.
  #
  # @return [Boolean]
  #
  # source://omniauth//lib/omniauth/strategy.rb#277
  def on_auth_path?; end

  # @return [Boolean]
  #
  # source://omniauth//lib/omniauth/strategy.rb#289
  def on_callback_path?; end

  # @return [Boolean]
  #
  # source://omniauth//lib/omniauth/strategy.rb#293
  def on_path?(path); end

  # @return [Boolean]
  #
  # source://omniauth//lib/omniauth/strategy.rb#281
  def on_request_path?; end

  # Returns the value of attribute options.
  #
  # source://omniauth//lib/omniauth/strategy.rb#116
  def options; end

  # Responds to an OPTIONS request.
  #
  # source://omniauth//lib/omniauth/strategy.rb#226
  def options_call; end

  # @return [Boolean]
  #
  # source://omniauth//lib/omniauth/strategy.rb#297
  def options_request?; end

  # source://omniauth//lib/omniauth/strategy.rb#421
  def path_prefix; end

  # source://omniauth//lib/omniauth/strategy.rb#465
  def query_string; end

  # source://omniauth//lib/omniauth/strategy.rb#517
  def redirect(uri); end

  # source://omniauth//lib/omniauth/strategy.rb#509
  def request; end

  # Performs the steps necessary to run the request phase of a strategy.
  #
  # source://omniauth//lib/omniauth/strategy.rb#233
  def request_call; end

  # source://omniauth//lib/omniauth/strategy.rb#436
  def request_path; end

  # perform any information gathering you need to be able to authenticate
  # the user in this phase.
  #
  # @abstract This method is called when the user is on the request path. You should
  # @raise [NotImplementedError]
  #
  # source://omniauth//lib/omniauth/strategy.rb#370
  def request_phase; end

  # Returns the value of attribute response.
  #
  # source://omniauth//lib/omniauth/strategy.rb#116
  def response; end

  # source://omniauth//lib/omniauth/strategy.rb#500
  def script_name; end

  # source://omniauth//lib/omniauth/strategy.rb#505
  def session; end

  # source://omniauth//lib/omniauth/strategy.rb#455
  def setup_path; end

  # The setup phase looks for the `:setup` option to exist and,
  # if it is, will call either the Rack endpoint supplied to the
  # `:setup` option or it will call out to the setup path of the
  # underlying application. This will default to `/auth/:provider/setup`.
  #
  # source://omniauth//lib/omniauth/strategy.rb#356
  def setup_phase; end

  # Determines whether or not user info should be retrieved. This
  # allows some strategies to save a call to an external API service
  # for existing users. You can use it either by setting the `:skip_info`
  # to true or by setting `:skip_info` to a Proc that takes a uid and
  # evaluates to true when you would like to skip info.
  #
  # @example
  #
  #   use MyStrategy, :skip_info => lambda{|uid| User.find_by_uid(uid)}
  # @return [Boolean]
  #
  # source://omniauth//lib/omniauth/strategy.rb#409
  def skip_info?; end

  # source://omniauth//lib/omniauth/strategy.rb#374
  def uid; end

  # source://omniauth//lib/omniauth/strategy.rb#530
  def user_info; end

  # source://omniauth//lib/omniauth/strategy.rb#205
  def warn_if_using_get_on_request_path; end

  protected

  # source://omniauth//lib/omniauth/strategy.rb#557
  def merge_stack(stack); end

  # @return [Boolean]
  #
  # source://omniauth//lib/omniauth/strategy.rb#564
  def ssl?; end

  private

  # source://omniauth//lib/omniauth/strategy.rb#552
  def initialize_copy(*args); end

  class << self
    # source://omniauth//lib/omniauth/strategy.rb#10
    def included(base); end
  end
end

# source://omniauth//lib/omniauth/strategy.rb#459
OmniAuth::Strategy::CURRENT_PATH_REGEX = T.let(T.unsafe(nil), Regexp)

# source://omniauth//lib/omniauth/strategy.rb#21
module OmniAuth::Strategy::ClassMethods
  # Sets (and retrieves) option key names for initializer arguments to be
  # recorded as. This takes care of 90% of the use cases for overriding
  # the initializer in OmniAuth Strategies.
  #
  # source://omniauth//lib/omniauth/strategy.rb#82
  def args(args = T.unsafe(nil)); end

  # source://omniauth//lib/omniauth/strategy.rb#107
  def compile_stack(ancestors, method, context); end

  # This allows for more declarative subclassing of strategies by allowing
  # default options to be set using a simple configure call.
  #
  # @example Using a yield to configure the default options.
  #
  #   class MyStrategy
  #   include OmniAuth::Strategy
  #
  #   configure do |c|
  #   c.foo = 'bar'
  #   end
  #   end
  # @example Using a hash to configure the default options.
  #
  #   class MyStrategy
  #   include OmniAuth::Strategy
  #   configure foo: 'bar'
  #   end
  # @param options [Hash] If supplied, these will be the default options (deep-merged into the superclass's default options).
  # @yield [Options] The options Mash that allows you to set your defaults as you'd like.
  #
  # source://omniauth//lib/omniauth/strategy.rb#52
  def configure(options = T.unsafe(nil)); end

  # source://omniauth//lib/omniauth/strategy.rb#96
  def credentials(&block); end

  # source://omniauth//lib/omniauth/strategy.rb#101
  def credentials_stack(context); end

  # Returns an inherited set of default options set at the class-level
  # for each strategy.
  #
  # source://omniauth//lib/omniauth/strategy.rb#24
  def default_options; end

  # source://omniauth//lib/omniauth/strategy.rb#96
  def extra(&block); end

  # source://omniauth//lib/omniauth/strategy.rb#101
  def extra_stack(context); end

  # source://omniauth//lib/omniauth/strategy.rb#96
  def info(&block); end

  # source://omniauth//lib/omniauth/strategy.rb#101
  def info_stack(context); end

  # Directly declare a default option for your class. This is a useful from
  # a documentation perspective as it provides a simple line-by-line analysis
  # of the kinds of options your strategy provides by default.
  #
  # @example
  #
  #   class MyStrategy
  #   include OmniAuth::Strategy
  #
  #   option :foo, 'bar'
  #   option
  #   end
  # @param name [Symbol] The key of the default option in your configuration hash.
  # @param value [Object] The value your object defaults to. Nil if not provided.
  #
  # source://omniauth//lib/omniauth/strategy.rb#75
  def option(name, value = T.unsafe(nil)); end

  # source://omniauth//lib/omniauth/strategy.rb#96
  def uid(&block); end

  # source://omniauth//lib/omniauth/strategy.rb#101
  def uid_stack(context); end

  private

  # source://omniauth//lib/omniauth/strategy.rb#93
  def credentials_proc; end

  # source://omniauth//lib/omniauth/strategy.rb#93
  def extra_proc; end

  # source://omniauth//lib/omniauth/strategy.rb#93
  def info_proc; end

  # source://omniauth//lib/omniauth/strategy.rb#93
  def uid_proc; end
end

# source://omniauth//lib/omniauth/strategy.rb#460
OmniAuth::Strategy::EMPTY_STRING = T.let(T.unsafe(nil), String)

# source://omniauth//lib/omniauth/strategy.rb#548
class OmniAuth::Strategy::Options < ::OmniAuth::KeyStore; end

# Support for testing OmniAuth strategies.
#
# source://omniauth//lib/omniauth/test.rb#3
module OmniAuth::Test; end

# source://omniauth//lib/omniauth/test/phony_session.rb#3
class OmniAuth::Test::PhonySession
  # @return [PhonySession] a new instance of PhonySession
  #
  # source://omniauth//lib/omniauth/test/phony_session.rb#4
  def initialize(app); end

  # source://omniauth//lib/omniauth/test/phony_session.rb#8
  def call(env); end
end

# source://omniauth//lib/omniauth/test/strategy_macros.rb#3
module OmniAuth::Test::StrategyMacros
  # source://omniauth//lib/omniauth/test/strategy_macros.rb#4
  def sets_an_auth_hash; end

  # source://omniauth//lib/omniauth/test/strategy_macros.rb#10
  def sets_provider_to(provider); end

  # source://omniauth//lib/omniauth/test/strategy_macros.rb#16
  def sets_uid_to(uid); end

  # source://omniauth//lib/omniauth/test/strategy_macros.rb#22
  def sets_user_info_to(user_info); end
end

# Support for testing OmniAuth strategies.
#
# @example Usage
#   class MyStrategyTest < Test::Unit::TestCase
#   include OmniAuth::Test::StrategyTestCase
#   def strategy
#   # return the parameters to a Rack::Builder map call:
#   [MyStrategy, :some, :configuration, :options => 'here']
#   end
#   setup do
#   post '/auth/my_strategy/callback', :user => { 'name' => 'Dylan', 'id' => '445' }
#   end
#   end
#
# source://omniauth//lib/omniauth/test/strategy_test_case.rb#19
module OmniAuth::Test::StrategyTestCase
  # source://omniauth//lib/omniauth/test/strategy_test_case.rb#20
  def app; end

  # source://omniauth//lib/omniauth/test/strategy_test_case.rb#30
  def app_response; end

  # source://omniauth//lib/omniauth/test/strategy_test_case.rb#34
  def session; end

  # source://omniauth//lib/omniauth/test/strategy_test_case.rb#38
  def strategy; end
end

# source://omniauth//lib/omniauth.rb#146
module OmniAuth::Utils
  private

  # source://omniauth//lib/omniauth.rb#168
  def camelize(word, first_letter_in_uppercase = T.unsafe(nil)); end

  # source://omniauth//lib/omniauth.rb#153
  def deep_merge(hash, other_hash); end

  # source://omniauth//lib/omniauth.rb#149
  def form_css; end

  class << self
    # source://omniauth//lib/omniauth.rb#168
    def camelize(word, first_letter_in_uppercase = T.unsafe(nil)); end

    # source://omniauth//lib/omniauth.rb#153
    def deep_merge(hash, other_hash); end

    # source://omniauth//lib/omniauth.rb#149
    def form_css; end
  end
end
