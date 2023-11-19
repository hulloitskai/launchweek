# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `graphql-rails_logger` gem.
# Please instead update this file by running `bin/tapioca gem graphql-rails_logger`.

# source://graphql-rails_logger//lib/graphql/rails_logger/version.rb#1
module GraphQL
  class << self
    # source://graphql/2.0.24/lib/graphql.rb#35
    def default_parser; end

    # source://graphql/2.0.24/lib/graphql.rb#39
    def default_parser=(_arg0); end

    # source://graphql/2.0.24/lib/graphql.rb#45
    def parse(graphql_string, trace: T.unsafe(nil)); end

    # source://graphql/2.0.24/lib/graphql.rb#52
    def parse_file(filename); end

    # source://graphql/2.0.24/lib/graphql.rb#62
    def parse_with_racc(string, filename: T.unsafe(nil), trace: T.unsafe(nil)); end

    # source://graphql/2.0.24/lib/graphql.rb#58
    def scan(graphql_string); end

    # source://graphql/2.0.24/lib/graphql.rb#66
    def scan_with_ruby(graphql_string); end
  end
end

# source://graphql-rails_logger//lib/graphql/rails_logger/version.rb#2
module GraphQL::RailsLogger
  class << self
    # Returns the value of attribute configuration.
    #
    # source://graphql-rails_logger//lib/graphql/rails_logger/subscriber.rb#12
    def configuration; end

    # Sets the attribute configuration
    #
    # @param value the value to set the attribute configuration to.
    #
    # source://graphql-rails_logger//lib/graphql/rails_logger/subscriber.rb#9
    def configuration=(_arg0); end

    # @yield [configuration]
    #
    # source://graphql-rails_logger//lib/graphql/rails_logger/subscriber.rb#16
    def configure; end
  end
end

# source://graphql-rails_logger//lib/graphql/rails_logger/configuration.rb#5
class GraphQL::RailsLogger::Configuration
  # @return [Configuration] a new instance of Configuration
  #
  # source://graphql-rails_logger//lib/graphql/rails_logger/configuration.rb#8
  def initialize; end

  # Returns the value of attribute skip_introspection_query.
  #
  # source://graphql-rails_logger//lib/graphql/rails_logger/configuration.rb#6
  def skip_introspection_query; end

  # Sets the attribute skip_introspection_query
  #
  # @param value the value to set the attribute skip_introspection_query to.
  #
  # source://graphql-rails_logger//lib/graphql/rails_logger/configuration.rb#6
  def skip_introspection_query=(_arg0); end

  # Returns the value of attribute theme.
  #
  # source://graphql-rails_logger//lib/graphql/rails_logger/configuration.rb#6
  def theme; end

  # Sets the attribute theme
  #
  # @param value the value to set the attribute theme to.
  #
  # source://graphql-rails_logger//lib/graphql/rails_logger/configuration.rb#6
  def theme=(_arg0); end

  # Returns the value of attribute white_list.
  #
  # source://graphql-rails_logger//lib/graphql/rails_logger/configuration.rb#6
  def white_list; end

  # Sets the attribute white_list
  #
  # @param value the value to set the attribute white_list to.
  #
  # source://graphql-rails_logger//lib/graphql/rails_logger/configuration.rb#6
  def white_list=(_arg0); end
end

# source://graphql-rails_logger//lib/graphql/rails_logger/railtie.rb#5
class GraphQL::RailsLogger::Railtie < ::Rails::Railtie; end

# source://graphql-rails_logger//lib/graphql/rails_logger/subscriber.rb#20
class GraphQL::RailsLogger::Subscriber < ::ActionController::LogSubscriber
  sig { params(data: T.untyped).returns(T.untyped) }
  def indent(data); end

  sig { params(data: T.untyped).returns(T.untyped) }
  def pretty(data); end

  sig { params(event: T.untyped).void }
  def start_processing(event); end
end

# source://graphql-rails_logger//lib/graphql/rails_logger/version.rb#3
GraphQL::RailsLogger::VERSION = T.let(T.unsafe(nil), String)
