# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `standard` gem.
# Please instead update this file by running `bin/tapioca gem standard`.

# source://standard//lib/standard/rubocop/ext.rb#1
module RuboCop; end

# source://standard//lib/standard/rubocop/ext.rb#17
class RuboCop::CommentConfig
  # @return [CommentConfig] a new instance of CommentConfig
  #
  # source://standard//lib/standard/rubocop/ext.rb#20
  def initialize(processed_source); end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#63
  def comment_only_line?(line_number); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def config(*args, **_arg1, &block); end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#51
  def cop_disabled_line_ranges; end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#39
  def cop_enabled_at_line?(cop, line_number); end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#47
  def cop_opted_in?(cop); end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#55
  def extra_enabled_comments; end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#30
  def processed_source; end

  # source://forwardable/1.3.3/forwardable.rb#231
  def registry(*args, **_arg1, &block); end

  private

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#96
  def analyze; end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#124
  def analyze_cop(analysis, directive); end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#144
  def analyze_disabled(analysis, directive); end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#155
  def analyze_rest(analysis, directive); end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#135
  def analyze_single_line(analysis, directive); end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#164
  def cop_line_ranges(analysis); end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#170
  def each_directive; end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#69
  def extra_enabled_comments_with_names(extras:, names:); end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#190
  def handle_enable_all(directive, names, extras); end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#204
  def handle_switch(directive, names, extras); end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#115
  def inject_disabled_cops_directives(analyses); end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#183
  def non_comment_token_line_numbers; end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#34
  def old_initialize(processed_source); end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#83
  def opt_in_cops; end

  # source://rubocop/1.50.2/lib/rubocop/comment_config.rb#179
  def qualified_cop_name(cop_name); end
end

module RuboCop::Cop; end
module RuboCop::Cop::Lint; end

# source://standard//lib/standard/rubocop/ext.rb#2
class RuboCop::Cop::Lint::AssignmentInCondition < ::RuboCop::Cop::Base
  # source://standard//lib/standard/rubocop/ext.rb#4
  def message(_); end

  # source://rubocop/1.50.2/lib/rubocop/cop/lint/assignment_in_condition.rb#55
  def on_if(node); end

  # source://rubocop/1.50.2/lib/rubocop/cop/lint/assignment_in_condition.rb#55
  def on_until(node); end

  # source://rubocop/1.50.2/lib/rubocop/cop/lint/assignment_in_condition.rb#55
  def on_while(node); end

  private

  # source://rubocop/1.50.2/lib/rubocop/cop/lint/assignment_in_condition.rb#82
  def allowed_construct?(asgn_node); end

  # source://rubocop/1.50.2/lib/rubocop/cop/lint/assignment_in_condition.rb#86
  def conditional_assignment?(asgn_node); end

  # source://rubocop/1.50.2/lib/rubocop/cop/lint/assignment_in_condition.rb#90
  def skip_children?(asgn_node); end

  # source://rubocop/1.50.2/lib/rubocop/cop/lint/assignment_in_condition.rb#96
  def traverse_node(node, &block); end
end

# source://standard//lib/standard/rubocop/ext.rb#9
class RuboCop::DirectiveComment
  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#30
  def initialize(comment, cop_registry = T.unsafe(nil)); end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#80
  def all_cops?; end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#28
  def comment; end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#85
  def cop_names; end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#28
  def cop_registry; end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#28
  def cops; end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#91
  def department_names; end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#105
  def directive_count; end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#60
  def disabled?; end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#75
  def disabled_all?; end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#65
  def enabled?; end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#70
  def enabled_all?; end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#96
  def in_directive_department?(cop); end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#110
  def line_number; end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#42
  def match?(cop_names); end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#55
  def match_captures; end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#28
  def mode; end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#101
  def overridden_by_department?(cop); end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#46
  def range; end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#37
  def single_line?; end

  private

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#130
  def all_cop_names; end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#134
  def cop_names_for_department(department); end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#126
  def department?(name); end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#140
  def exclude_redundant_directive_cop(cops); end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#120
  def parsed_cop_names; end

  # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#116
  def splitted_cops_string; end

  class << self
    # source://rubocop/1.50.2/lib/rubocop/directive_comment.rb#24
    def before_comment(line); end
  end
end

# source://standard//lib/standard/rubocop/ext.rb#11
RuboCop::DirectiveComment::DIRECTIVE_COMMENT_REGEXP = T.let(T.unsafe(nil), Regexp)

# source://standard//lib/standard.rb#4
module Standard; end

# source://standard//lib/standard/builds_config.rb#8
class Standard::BuildsConfig
  # @return [BuildsConfig] a new instance of BuildsConfig
  #
  # source://standard//lib/standard/builds_config.rb#9
  def initialize; end

  # source://standard//lib/standard/builds_config.rb#16
  def call(argv, search_path = T.unsafe(nil)); end
end

# source://standard//lib/standard/cli.rb#5
class Standard::Cli
  # @return [Cli] a new instance of Cli
  #
  # source://standard//lib/standard/cli.rb#6
  def initialize(argv); end

  # source://standard//lib/standard/cli.rb#12
  def run; end
end

# source://standard//lib/standard/builds_config.rb#6
class Standard::Config < ::Struct
  # Returns the value of attribute paths
  #
  # @return [Object] the current value of paths
  def paths; end

  # Sets the attribute paths
  #
  # @param value [Object] the value to set the attribute paths to.
  # @return [Object] the newly set value
  def paths=(_); end

  # Returns the value of attribute rubocop_config_store
  #
  # @return [Object] the current value of rubocop_config_store
  def rubocop_config_store; end

  # Sets the attribute rubocop_config_store
  #
  # @param value [Object] the value to set the attribute rubocop_config_store to.
  # @return [Object] the newly set value
  def rubocop_config_store=(_); end

  # Returns the value of attribute rubocop_options
  #
  # @return [Object] the current value of rubocop_options
  def rubocop_options; end

  # Sets the attribute rubocop_options
  #
  # @param value [Object] the value to set the attribute rubocop_options to.
  # @return [Object] the newly set value
  def rubocop_options=(_); end

  # Returns the value of attribute runner
  #
  # @return [Object] the current value of runner
  def runner; end

  # Sets the attribute runner
  #
  # @param value [Object] the value to set the attribute runner to.
  # @return [Object] the newly set value
  def runner=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

# source://standard//lib/standard/creates_config_store/assigns_rubocop_yaml.rb#3
class Standard::CreatesConfigStore
  # @return [CreatesConfigStore] a new instance of CreatesConfigStore
  #
  # source://standard//lib/standard/creates_config_store.rb#10
  def initialize; end

  # source://standard//lib/standard/creates_config_store.rb#18
  def call(standard_config); end
end

# source://standard//lib/standard/creates_config_store/assigns_rubocop_yaml.rb#4
class Standard::CreatesConfigStore::AssignsRubocopYaml
  # source://standard//lib/standard/creates_config_store/assigns_rubocop_yaml.rb#5
  def call(config_store, standard_config); end
end

# source://standard//lib/standard/creates_config_store/configures_ignored_paths.rb#2
class Standard::CreatesConfigStore::ConfiguresIgnoredPaths
  # source://standard//lib/standard/creates_config_store/configures_ignored_paths.rb#14
  def call(options_config, standard_config); end

  private

  # @return [Boolean]
  #
  # source://standard//lib/standard/creates_config_store/configures_ignored_paths.rb#41
  def absolute?(path); end

  # source://standard//lib/standard/creates_config_store/configures_ignored_paths.rb#33
  def absolutify(config_root, path); end

  # source://standard//lib/standard/creates_config_store/configures_ignored_paths.rb#28
  def ignored_patterns(standard_config); end
end

# source://standard//lib/standard/creates_config_store/configures_ignored_paths.rb#3
Standard::CreatesConfigStore::ConfiguresIgnoredPaths::DEFAULT_IGNORES = T.let(T.unsafe(nil), Array)

# source://standard//lib/standard/creates_config_store/merges_user_config_extensions.rb#5
class Standard::CreatesConfigStore::MergesUserConfigExtensions
  # @return [MergesUserConfigExtensions] a new instance of MergesUserConfigExtensions
  #
  # source://standard//lib/standard/creates_config_store/merges_user_config_extensions.rb#24
  def initialize; end

  # source://standard//lib/standard/creates_config_store/merges_user_config_extensions.rb#28
  def call(options_config, standard_config); end
end

# source://standard//lib/standard/creates_config_store/merges_user_config_extensions.rb#6
class Standard::CreatesConfigStore::MergesUserConfigExtensions::ExtendConfigPlugin < ::LintRoller::Plugin
  # @return [ExtendConfigPlugin] a new instance of ExtendConfigPlugin
  #
  # source://standard//lib/standard/creates_config_store/merges_user_config_extensions.rb#7
  def initialize(path); end

  # source://standard//lib/standard/creates_config_store/merges_user_config_extensions.rb#11
  def about; end

  # source://standard//lib/standard/creates_config_store/merges_user_config_extensions.rb#15
  def rules(context); end
end

# source://standard//lib/standard/creates_config_store/sets_target_ruby_version.rb#2
class Standard::CreatesConfigStore::SetsTargetRubyVersion
  # source://standard//lib/standard/creates_config_store/sets_target_ruby_version.rb#12
  def call(options_config, standard_config); end

  private

  # source://standard//lib/standard/creates_config_store/sets_target_ruby_version.rb#20
  def min_target_ruby_version_supported(desired_target_ruby_version); end

  # source://standard//lib/standard/creates_config_store/sets_target_ruby_version.rb#31
  def normalize_version(version); end
end

# This is minimum version that Rubocop can parse, not the minimum
# version it can run on (e.g. TargetRubyVersion).  See the following
# for more details:
#
# https://docs.rubocop.org/rubocop/configuration.html#setting-the-target-ruby-version
#
# https://github.com/rubocop/rubocop/blob/master/lib/rubocop/target_ruby.rb
#
# source://standard//lib/standard/creates_config_store/sets_target_ruby_version.rb#10
Standard::CreatesConfigStore::SetsTargetRubyVersion::MIN_TARGET_RUBY_VERSION = T.let(T.unsafe(nil), String)

# source://standard//lib/standard/file_finder.rb#4
class Standard::FileFinder
  # source://standard//lib/standard/file_finder.rb#5
  def call(name, search_path); end
end

# source://standard//lib/standard/formatter.rb#5
class Standard::Formatter < ::RuboCop::Formatter::BaseFormatter
  # source://standard//lib/standard/formatter.rb#18
  def file_finished(file, offenses); end

  # source://standard//lib/standard/formatter.rb#37
  def finished(_inspected_files); end

  # source://standard//lib/standard/formatter.rb#10
  def started(_target_files); end

  # source://standard//lib/standard/formatter.rb#30
  def track_stats(offenses); end

  private

  # source://standard//lib/standard/formatter.rb#106
  def determine_run_mode; end

  # source://standard//lib/standard/formatter.rb#114
  def fixable_error_message(command); end

  # source://standard//lib/standard/formatter.rb#92
  def path_to(file); end

  # source://standard//lib/standard/formatter.rb#96
  def potential_fix_mode; end

  # source://standard//lib/standard/formatter.rb#52
  def print_fix_suggestion; end

  # source://standard//lib/standard/formatter.rb#44
  def print_header_once; end

  # source://standard//lib/standard/formatter.rb#82
  def print_todo_congratulations; end

  # source://standard//lib/standard/formatter.rb#66
  def print_todo_warning; end
end

# source://standard//lib/standard/formatter.rb#6
Standard::Formatter::STANDARD_GREETING = T.let(T.unsafe(nil), String)

# source://standard//lib/standard/loads_runner.rb#9
class Standard::LoadsRunner
  # source://standard//lib/standard/loads_runner.rb#19
  def call(command); end
end

# source://standard//lib/standard/loads_runner.rb#10
Standard::LoadsRunner::RUNNERS = T.let(T.unsafe(nil), Hash)

# source://standard//lib/standard/loads_yaml_config.rb#7
class Standard::LoadsYamlConfig
  # source://standard//lib/standard/loads_yaml_config.rb#8
  def call(standard_yaml_path, todo_yaml_path); end

  private

  # source://standard//lib/standard/loads_yaml_config.rb#57
  def arrayify(object); end

  # source://standard//lib/standard/loads_yaml_config.rb#25
  def construct_config(yaml_path, standard_yaml, todo_path, todo_yaml); end

  # source://standard//lib/standard/loads_yaml_config.rb#47
  def expand_ignore_config(ignore_config); end

  # source://standard//lib/standard/loads_yaml_config.rb#17
  def load_standard_yaml(yaml_path); end

  # source://standard//lib/standard/loads_yaml_config.rb#41
  def normalized_ruby_version(version); end
end

# source://standard//lib/standard/lsp/standardizer.rb#4
module Standard::Lsp; end

# source://standard//lib/standard/lsp/kills_server.rb#3
class Standard::Lsp::KillsServer
  # source://standard//lib/standard/lsp/kills_server.rb#4
  def call(&blk); end
end

# source://standard//lib/standard/lsp/logger.rb#3
class Standard::Lsp::Logger
  # @return [Logger] a new instance of Logger
  #
  # source://standard//lib/standard/lsp/logger.rb#4
  def initialize; end

  # source://standard//lib/standard/lsp/logger.rb#8
  def puts(message); end

  # source://standard//lib/standard/lsp/logger.rb#12
  def puts_once(message); end
end

# source://standard//lib/standard/lsp/server.rb#8
Standard::Lsp::Proto = LanguageServer::Protocol

# source://standard//lib/standard/lsp/routes.rb#5
class Standard::Lsp::Routes
  # @return [Routes] a new instance of Routes
  #
  # source://standard//lib/standard/lsp/routes.rb#6
  def initialize(writer, logger, standardizer); end

  # source://standard//lib/standard/lsp/routes.rb#19
  def for(name); end

  # source://standard//lib/standard/lsp/routes.rb#26
  def handle_initialize(request); end

  # source://standard//lib/standard/lsp/routes.rb#39
  def handle_initialized(request); end

  # source://standard//lib/standard/lsp/routes.rb#129
  def handle_method_missing(request); end

  # source://standard//lib/standard/lsp/routes.rb#43
  def handle_shutdown(request); end

  # source://standard//lib/standard/lsp/routes.rb#121
  def handle_unsupported_method(request, method = T.unsafe(nil)); end

  private

  # source://standard//lib/standard/lsp/routes.rb#162
  def diagnostic(file_uri, text); end

  # source://standard//lib/standard/lsp/routes.rb#141
  def format_file(file_uri); end

  # source://standard//lib/standard/lsp/routes.rb#137
  def uri_to_path(uri); end

  class << self
    # source://standard//lib/standard/lsp/routes.rb#15
    def handle(name, &block); end
  end
end

# source://standard//lib/standard/lsp/server.rb#9
Standard::Lsp::SEV = LanguageServer::Protocol::Constant::DiagnosticSeverity

# source://standard//lib/standard/lsp/server.rb#11
class Standard::Lsp::Server
  # @return [Server] a new instance of Server
  #
  # source://standard//lib/standard/lsp/server.rb#12
  def initialize(config); end

  # source://standard//lib/standard/lsp/server.rb#20
  def start; end
end

# source://standard//lib/standard/lsp/standardizer.rb#5
class Standard::Lsp::Standardizer
  # @return [Standardizer] a new instance of Standardizer
  #
  # source://standard//lib/standard/lsp/standardizer.rb#6
  def initialize(config, logger); end

  # This abuses the --stdin option of rubocop and reads the formatted text
  # from the options[:stdin] that rubocop mutates. This depends on
  # parallel: false as well as the fact that rubocop doesn't otherwise dup
  # or reassign that options object. Risky business!
  #
  # Reassigning options[:stdin] is done here:
  #   https://github.com/rubocop/rubocop/blob/master/lib/rubocop/cop/team.rb#L131
  # Printing options[:stdin]
  #   https://github.com/rubocop/rubocop/blob/master/lib/rubocop/cli/command/execute_runner.rb#L95
  # Setting `parallel: true` would break this here:
  #   https://github.com/rubocop/rubocop/blob/master/lib/rubocop/runner.rb#L72
  #
  # source://standard//lib/standard/lsp/standardizer.rb#23
  def format(path, text); end

  # source://standard//lib/standard/lsp/standardizer.rb#29
  def offenses(path, text); end

  private

  # source://standard//lib/standard/lsp/standardizer.rb#59
  def capture_rubocop_stdout(config); end

  # source://standard//lib/standard/lsp/standardizer.rb#50
  def fork_config(path, text, format:); end
end

# source://standard//lib/standard/lsp/standardizer.rb#44
Standard::Lsp::Standardizer::BASE_OPTIONS = T.let(T.unsafe(nil), Hash)

# source://standard//lib/standard/merges_settings.rb#4
class Standard::MergesSettings
  # source://standard//lib/standard/merges_settings.rb#7
  def call(argv, standard_yaml); end

  private

  # source://standard//lib/standard/merges_settings.rb#42
  def determine_command(argv); end

  # source://standard//lib/standard/merges_settings.rb#58
  def merge(standard_yaml, standard_cli_flags, rubocop_cli_flags); end

  # source://standard//lib/standard/merges_settings.rb#27
  def parse_standard_argv(argv); end

  # source://standard//lib/standard/merges_settings.rb#21
  def separate_argv(argv); end

  # source://standard//lib/standard/merges_settings.rb#69
  def without_banned(rubocop_cli_flags); end
end

# source://standard//lib/standard/merges_settings.rb#5
class Standard::MergesSettings::Settings < ::Struct
  # Returns the value of attribute options
  #
  # @return [Object] the current value of options
  def options; end

  # Sets the attribute options
  #
  # @param value [Object] the value to set the attribute options to.
  # @return [Object] the newly set value
  def options=(_); end

  # Returns the value of attribute paths
  #
  # @return [Object] the current value of paths
  def paths; end

  # Sets the attribute paths
  #
  # @param value [Object] the value to set the attribute paths to.
  # @return [Object] the newly set value
  def paths=(_); end

  # Returns the value of attribute runner
  #
  # @return [Object] the current value of runner
  def runner; end

  # Sets the attribute runner
  #
  # @param value [Object] the value to set the attribute runner to.
  # @return [Object] the newly set value
  def runner=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

# source://standard//lib/standard/plugin.rb#2
module Standard::Plugin; end

# source://standard//lib/standard/plugin/combines_plugin_configs.rb#3
class Standard::Plugin::CombinesPluginConfigs
  # @return [CombinesPluginConfigs] a new instance of CombinesPluginConfigs
  #
  # source://standard//lib/standard/plugin/combines_plugin_configs.rb#4
  def initialize; end

  # source://standard//lib/standard/plugin/combines_plugin_configs.rb#9
  def call(options_config, standard_config); end
end

# source://standard//lib/standard/plugin/creates_runner_context.rb#3
class Standard::Plugin::CreatesRunnerContext
  # source://standard//lib/standard/plugin/creates_runner_context.rb#4
  def call(standard_config); end
end

# source://standard//lib/standard/plugin/determines_class_constant.rb#3
class Standard::Plugin::DeterminesClassConstant
  # source://standard//lib/standard/plugin/determines_class_constant.rb#4
  def call(plugin_name, user_config); end

  private

  # source://standard//lib/standard/plugin/determines_class_constant.rb#41
  def require_plugin(require_path); end
end

# source://standard//lib/standard/plugin/initializes_plugins.rb#3
class Standard::Plugin::InitializesPlugins
  # @return [InitializesPlugins] a new instance of InitializesPlugins
  #
  # source://standard//lib/standard/plugin/initializes_plugins.rb#4
  def initialize; end

  # source://standard//lib/standard/plugin/initializes_plugins.rb#9
  def call(plugins); end
end

# source://standard//lib/standard/plugin/merges_plugins_into_rubocop_config.rb#3
class Standard::Plugin::MergesPluginsIntoRubocopConfig
  # @return [MergesPluginsIntoRubocopConfig] a new instance of MergesPluginsIntoRubocopConfig
  #
  # source://standard//lib/standard/plugin/merges_plugins_into_rubocop_config.rb#24
  def initialize; end

  # source://standard//lib/standard/plugin/merges_plugins_into_rubocop_config.rb#28
  def call(options_config, standard_config, plugins, permit_merging:); end

  private

  # source://standard//lib/standard/plugin/merges_plugins_into_rubocop_config.rb#126
  def all_cop_keys_previously_configured_by_plugins(options_config, permit_merging:); end

  # source://standard//lib/standard/plugin/merges_plugins_into_rubocop_config.rb#152
  def blank_rubocop_config(example_config); end

  # source://standard//lib/standard/plugin/merges_plugins_into_rubocop_config.rb#37
  def combine_rubocop_configs(options_config, runner_context, plugins, permit_merging:); end

  # source://standard//lib/standard/plugin/merges_plugins_into_rubocop_config.rb#56
  def config_for_plugin(plugin, runner_context); end

  # source://standard//lib/standard/plugin/merges_plugins_into_rubocop_config.rb#96
  def delete_already_configured_keys!(configured_keys, next_config, dont_delete_keys: T.unsafe(nil)); end

  # source://standard//lib/standard/plugin/merges_plugins_into_rubocop_config.rb#156
  def except(hash_or_config, keys); end

  # source://standard//lib/standard/plugin/merges_plugins_into_rubocop_config.rb#134
  def fake_out_rubocop_default_configuration(options_config); end

  # Always deletes nil entries, always overwrites arrays
  # This is a simplified version of rubocop's ConfigLoader#merge:
  # https://github.com/rubocop/rubocop/blob/v1.48.1/lib/rubocop/config_loader_resolver.rb#L98
  #
  # source://standard//lib/standard/plugin/merges_plugins_into_rubocop_config.rb#163
  def merge(old_hash, new_hash); end

  # This is how we ensure "first-in wins": plugins can override AllCops settings that are
  # set by RuboCop's default configuration, but once a plugin sets an AllCop setting, they
  # have exclusive first-in-wins rights to that setting.
  #
  # The one exception to this are array fields, because we don't want to
  # overwrite the AllCops defaults but rather munge the arrays (`existing |
  # new`) to allow plugins to add to the array, for example Include and
  # Exclude paths and patterns.
  #
  # source://standard//lib/standard/plugin/merges_plugins_into_rubocop_config.rb#77
  def merge_all_cop_settings(existing_all_cops, new_all_cops, already_configured_keys); end

  # source://standard//lib/standard/plugin/merges_plugins_into_rubocop_config.rb#104
  def merge_config_into_all_cops!(options_config, plugin_config); end

  # source://standard//lib/standard/plugin/merges_plugins_into_rubocop_config.rb#110
  def merge_config_into_standard!(options_config, plugin_config, permit_merging:); end

  # Avoid a warning that would otherwise be emitted by any plugin that set TargetRailsVersion
  # because it's not a default AllCops key specified in RuboCop's embedded default config.
  #
  # See: https://github.com/rubocop/rubocop/pull/11833
  #
  # source://standard//lib/standard/plugin/merges_plugins_into_rubocop_config.rb#146
  def set_target_rails_version_on_all_cops_because_its_technically_not_allowed!(options_config); end
end

# AllCops keys that standard does not allow to be set by plugins
#
# source://standard//lib/standard/plugin/merges_plugins_into_rubocop_config.rb#10
Standard::Plugin::MergesPluginsIntoRubocopConfig::DISALLOWED_ALLCOPS_KEYS = T.let(T.unsafe(nil), Array)

# Blank configuration object to merge plugins into, with only the following spared:
#   - AllCops keys set to avoid warnings about unknown properties
#   - Lint/Syntax must be set to avoid a nil error when verifying inherited configs
#
# source://standard//lib/standard/plugin/merges_plugins_into_rubocop_config.rb#7
Standard::Plugin::MergesPluginsIntoRubocopConfig::MANDATORY_RUBOCOP_CONFIG_KEYS = T.let(T.unsafe(nil), Array)

# source://standard//lib/standard/plugin/standardizes_configured_plugins.rb#3
class Standard::Plugin::StandardizesConfiguredPlugins
  # source://standard//lib/standard/plugin/standardizes_configured_plugins.rb#19
  def call(plugins); end

  private

  # source://standard//lib/standard/plugin/standardizes_configured_plugins.rb#25
  def normalize_config_shape(plugins); end
end

# source://standard//lib/standard/plugin/standardizes_configured_plugins.rb#10
Standard::Plugin::StandardizesConfiguredPlugins::BUILT_INS = T.let(T.unsafe(nil), Array)

# source://standard//lib/standard/plugin/standardizes_configured_plugins.rb#4
Standard::Plugin::StandardizesConfiguredPlugins::DEFAULT_PLUGIN_CONFIG = T.let(T.unsafe(nil), Hash)

# source://standard//lib/standard/resolves_yaml_option.rb#4
class Standard::ResolvesYamlOption
  # source://standard//lib/standard/resolves_yaml_option.rb#5
  def call(argv, search_path, option_name, default_file); end

  private

  # source://standard//lib/standard/resolves_yaml_option.rb#22
  def argv_value_for(argv, option_name); end

  # source://standard//lib/standard/resolves_yaml_option.rb#11
  def search_argv(argv, option_name); end
end

# source://standard//lib/standard/runners/rubocop.rb#4
module Standard::Runners; end

# source://standard//lib/standard/runners/genignore.rb#7
class Standard::Runners::Genignore
  # source://standard//lib/standard/runners/genignore.rb#8
  def call(config); end
end

# source://standard//lib/standard/runners/help.rb#5
class Standard::Runners::Help
  # source://standard//lib/standard/runners/help.rb#6
  def call(config); end
end

# source://standard//lib/standard/runners/lsp.rb#5
class Standard::Runners::Lsp
  # source://standard//lib/standard/runners/lsp.rb#6
  def call(config); end
end

# source://standard//lib/standard/runners/rubocop.rb#5
class Standard::Runners::Rubocop
  # source://standard//lib/standard/runners/rubocop.rb#6
  def call(config); end

  private

  # This is a workaround for an issue with how `parallel` and `stdin`
  # interact when invoked in this way. See:
  #   https://github.com/standardrb/standard/issues/536
  #
  # source://standard//lib/standard/runners/rubocop.rb#23
  def without_parallelizing_in_stdin_mode(options); end
end

# source://standard//lib/standard/runners/verbose_version.rb#5
class Standard::Runners::VerboseVersion
  # source://standard//lib/standard/runners/verbose_version.rb#6
  def call(config); end
end

# source://standard//lib/standard/runners/version.rb#3
class Standard::Runners::Version
  # source://standard//lib/standard/runners/version.rb#4
  def call(config); end
end

# source://standard//lib/standard/version.rb#2
Standard::VERSION = T.let(T.unsafe(nil), Gem::Version)
