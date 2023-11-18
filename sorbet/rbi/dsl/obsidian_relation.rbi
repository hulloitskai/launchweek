# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ObsidianRelation`.
# Please instead update this file by running `bin/tapioca dsl ObsidianRelation`.

class ObsidianRelation
  include GeneratedAssociationMethods
  include GeneratedAttributeMethods
  extend CommonRelationMethods
  extend GeneratedRelationMethods

  private

  sig { returns(NilClass) }
  def to_ary; end

  module CommonRelationMethods
    sig { params(block: T.nilable(T.proc.params(record: ::ObsidianRelation).returns(T.untyped))).returns(T::Boolean) }
    def any?(&block); end

    sig { params(column_name: T.any(String, Symbol)).returns(T.untyped) }
    def average(column_name); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ObsidianRelation).void)
      ).returns(::ObsidianRelation)
    end
    def build(attributes = nil, &block); end

    sig { params(operation: Symbol, column_name: T.any(String, Symbol)).returns(T.untyped) }
    def calculate(operation, column_name); end

    sig { params(column_name: T.untyped).returns(T.untyped) }
    def count(column_name = nil); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ObsidianRelation).void)
      ).returns(::ObsidianRelation)
    end
    def create(attributes = nil, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ObsidianRelation).void)
      ).returns(::ObsidianRelation)
    end
    def create!(attributes = nil, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ObsidianRelation).void)
      ).returns(::ObsidianRelation)
    end
    def create_or_find_by(attributes, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ObsidianRelation).void)
      ).returns(::ObsidianRelation)
    end
    def create_or_find_by!(attributes, &block); end

    sig { returns(T::Array[::ObsidianRelation]) }
    def destroy_all; end

    sig { params(conditions: T.untyped).returns(T::Boolean) }
    def exists?(conditions = :none); end

    sig { returns(T.nilable(::ObsidianRelation)) }
    def fifth; end

    sig { returns(::ObsidianRelation) }
    def fifth!; end

    sig { params(args: T.untyped).returns(T.untyped) }
    def find(*args); end

    sig { params(args: T.untyped).returns(T.nilable(::ObsidianRelation)) }
    def find_by(*args); end

    sig { params(args: T.untyped).returns(::ObsidianRelation) }
    def find_by!(*args); end

    sig do
      params(
        start: T.untyped,
        finish: T.untyped,
        batch_size: Integer,
        error_on_ignore: T.untyped,
        order: Symbol,
        block: T.nilable(T.proc.params(object: ::ObsidianRelation).void)
      ).returns(T.nilable(T::Enumerator[::ObsidianRelation]))
    end
    def find_each(start: nil, finish: nil, batch_size: 1000, error_on_ignore: nil, order: :asc, &block); end

    sig do
      params(
        start: T.untyped,
        finish: T.untyped,
        batch_size: Integer,
        error_on_ignore: T.untyped,
        order: Symbol,
        block: T.nilable(T.proc.params(object: T::Array[::ObsidianRelation]).void)
      ).returns(T.nilable(T::Enumerator[T::Enumerator[::ObsidianRelation]]))
    end
    def find_in_batches(start: nil, finish: nil, batch_size: 1000, error_on_ignore: nil, order: :asc, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ObsidianRelation).void)
      ).returns(::ObsidianRelation)
    end
    def find_or_create_by(attributes, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ObsidianRelation).void)
      ).returns(::ObsidianRelation)
    end
    def find_or_create_by!(attributes, &block); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ObsidianRelation).void)
      ).returns(::ObsidianRelation)
    end
    def find_or_initialize_by(attributes, &block); end

    sig { params(signed_id: T.untyped, purpose: T.untyped).returns(T.nilable(::ObsidianRelation)) }
    def find_signed(signed_id, purpose: nil); end

    sig { params(signed_id: T.untyped, purpose: T.untyped).returns(::ObsidianRelation) }
    def find_signed!(signed_id, purpose: nil); end

    sig { params(arg: T.untyped, args: T.untyped).returns(::ObsidianRelation) }
    def find_sole_by(arg, *args); end

    sig { params(limit: T.untyped).returns(T.untyped) }
    def first(limit = nil); end

    sig { returns(::ObsidianRelation) }
    def first!; end

    sig { returns(T.nilable(::ObsidianRelation)) }
    def forty_two; end

    sig { returns(::ObsidianRelation) }
    def forty_two!; end

    sig { returns(T.nilable(::ObsidianRelation)) }
    def fourth; end

    sig { returns(::ObsidianRelation) }
    def fourth!; end

    sig { returns(Array) }
    def ids; end

    sig do
      params(
        of: Integer,
        start: T.untyped,
        finish: T.untyped,
        load: T.untyped,
        error_on_ignore: T.untyped,
        order: Symbol,
        use_ranges: T.untyped,
        block: T.nilable(T.proc.params(object: PrivateRelation).void)
      ).returns(T.nilable(::ActiveRecord::Batches::BatchEnumerator))
    end
    def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, order: :asc, use_ranges: nil, &block); end

    sig { params(record: T.untyped).returns(T::Boolean) }
    def include?(record); end

    sig { params(limit: T.untyped).returns(T.untyped) }
    def last(limit = nil); end

    sig { returns(::ObsidianRelation) }
    def last!; end

    sig { params(block: T.nilable(T.proc.params(record: ::ObsidianRelation).returns(T.untyped))).returns(T::Boolean) }
    def many?(&block); end

    sig { params(column_name: T.any(String, Symbol)).returns(T.untyped) }
    def maximum(column_name); end

    sig { params(record: T.untyped).returns(T::Boolean) }
    def member?(record); end

    sig { params(column_name: T.any(String, Symbol)).returns(T.untyped) }
    def minimum(column_name); end

    sig do
      params(
        attributes: T.untyped,
        block: T.nilable(T.proc.params(object: ::ObsidianRelation).void)
      ).returns(::ObsidianRelation)
    end
    def new(attributes = nil, &block); end

    sig { params(block: T.nilable(T.proc.params(record: ::ObsidianRelation).returns(T.untyped))).returns(T::Boolean) }
    def none?(&block); end

    sig { params(block: T.nilable(T.proc.params(record: ::ObsidianRelation).returns(T.untyped))).returns(T::Boolean) }
    def one?(&block); end

    sig { params(column_names: T.untyped).returns(T.untyped) }
    def pick(*column_names); end

    sig { params(column_names: T.untyped).returns(T.untyped) }
    def pluck(*column_names); end

    sig { returns(T.nilable(::ObsidianRelation)) }
    def second; end

    sig { returns(::ObsidianRelation) }
    def second!; end

    sig { returns(T.nilable(::ObsidianRelation)) }
    def second_to_last; end

    sig { returns(::ObsidianRelation) }
    def second_to_last!; end

    sig { returns(::ObsidianRelation) }
    def sole; end

    sig do
      params(
        column_name: T.nilable(T.any(String, Symbol)),
        block: T.nilable(T.proc.params(record: T.untyped).returns(T.untyped))
      ).returns(T.untyped)
    end
    def sum(column_name = nil, &block); end

    sig { params(limit: T.untyped).returns(T.untyped) }
    def take(limit = nil); end

    sig { returns(::ObsidianRelation) }
    def take!; end

    sig { returns(T.nilable(::ObsidianRelation)) }
    def third; end

    sig { returns(::ObsidianRelation) }
    def third!; end

    sig { returns(T.nilable(::ObsidianRelation)) }
    def third_to_last; end

    sig { returns(::ObsidianRelation) }
    def third_to_last!; end
  end

  module GeneratedAssociationMethods
    sig { params(args: T.untyped, blk: T.untyped).returns(::ObsidianNote) }
    def build_from(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ObsidianNote) }
    def create_from(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(::ObsidianNote) }
    def create_from!(*args, &blk); end

    sig { returns(T.nilable(::ObsidianNote)) }
    def from; end

    sig { params(value: T.nilable(::ObsidianNote)).void }
    def from=(value); end

    sig { returns(T.nilable(::ObsidianNote)) }
    def reload_from; end

    sig { returns(T.untyped) }
    def reload_to; end

    sig { returns(T.untyped) }
    def to; end

    sig { params(value: T.untyped).void }
    def to=(value); end
  end

  module GeneratedAssociationRelationMethods
    sig { returns(PrivateAssociationRelation) }
    def all; end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def and(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def annotate(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def chronological(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def create_with(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def distinct(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def eager_load(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def except(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def excluding(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def extending(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def extract_associated(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def from(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def group(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def having(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def in_order_of(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def includes(*args, &blk); end

    sig do
      params(
        attributes: Hash,
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass)),
        unique_by: T.nilable(T.any(T::Array[Symbol], Symbol))
      ).returns(ActiveRecord::Result)
    end
    def insert(attributes, returning: nil, unique_by: nil); end

    sig do
      params(
        attributes: Hash,
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass))
      ).returns(ActiveRecord::Result)
    end
    def insert!(attributes, returning: nil); end

    sig do
      params(
        attributes: T::Array[Hash],
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass)),
        unique_by: T.nilable(T.any(T::Array[Symbol], Symbol))
      ).returns(ActiveRecord::Result)
    end
    def insert_all(attributes, returning: nil, unique_by: nil); end

    sig do
      params(
        attributes: T::Array[Hash],
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass))
      ).returns(ActiveRecord::Result)
    end
    def insert_all!(attributes, returning: nil); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def invert_where(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def left_joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def left_outer_joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def limit(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def lock(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def merge(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def none(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def null_relation?(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def offset(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def only(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def optimizer_hints(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def or(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def order(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def preload(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def readonly(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def references(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def regroup(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def reorder(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def reselect(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def reverse_chronological(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def reverse_order(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def rewhere(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def select(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def strict_loading(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def structurally_compatible?(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def uniq!(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def unscope(*args, &blk); end

    sig do
      params(
        attributes: Hash,
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass)),
        unique_by: T.nilable(T.any(T::Array[Symbol], Symbol))
      ).returns(ActiveRecord::Result)
    end
    def upsert(attributes, returning: nil, unique_by: nil); end

    sig do
      params(
        attributes: T::Array[Hash],
        returning: T.nilable(T.any(T::Array[Symbol], FalseClass)),
        unique_by: T.nilable(T.any(T::Array[Symbol], Symbol))
      ).returns(ActiveRecord::Result)
    end
    def upsert_all(attributes, returning: nil, unique_by: nil); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelationWhereChain) }
    def where(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def with(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateAssociationRelation) }
    def without(*args, &blk); end
  end

  module GeneratedAttributeMethods
    sig { returns(::String) }
    def from_id; end

    sig { params(value: ::String).returns(::String) }
    def from_id=(value); end

    sig { returns(T::Boolean) }
    def from_id?; end

    sig { returns(T.nilable(::String)) }
    def from_id_before_last_save; end

    sig { returns(T.untyped) }
    def from_id_before_type_cast; end

    sig { returns(T::Boolean) }
    def from_id_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def from_id_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def from_id_change_to_be_saved; end

    sig { params(from: ::String, to: ::String).returns(T::Boolean) }
    def from_id_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::String)) }
    def from_id_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
    def from_id_previous_change; end

    sig { params(from: ::String, to: ::String).returns(T::Boolean) }
    def from_id_previously_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::String)) }
    def from_id_previously_was; end

    sig { returns(T.nilable(::String)) }
    def from_id_was; end

    sig { void }
    def from_id_will_change!; end

    sig { returns(T.nilable(::String)) }
    def id; end

    sig { params(value: ::String).returns(::String) }
    def id=(value); end

    sig { returns(T::Boolean) }
    def id?; end

    sig { returns(T.nilable(::String)) }
    def id_before_last_save; end

    sig { returns(T.untyped) }
    def id_before_type_cast; end

    sig { returns(T::Boolean) }
    def id_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def id_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def id_change_to_be_saved; end

    sig { params(from: ::String, to: ::String).returns(T::Boolean) }
    def id_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::String)) }
    def id_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def id_previous_change; end

    sig { params(from: ::String, to: ::String).returns(T::Boolean) }
    def id_previously_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::String)) }
    def id_previously_was; end

    sig { returns(T.nilable(::String)) }
    def id_value; end

    sig { params(value: ::String).returns(::String) }
    def id_value=(value); end

    sig { returns(T::Boolean) }
    def id_value?; end

    sig { returns(T.nilable(::String)) }
    def id_value_before_last_save; end

    sig { returns(T.untyped) }
    def id_value_before_type_cast; end

    sig { returns(T::Boolean) }
    def id_value_came_from_user?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def id_value_change; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def id_value_change_to_be_saved; end

    sig { params(from: ::String, to: ::String).returns(T::Boolean) }
    def id_value_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::String)) }
    def id_value_in_database; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def id_value_previous_change; end

    sig { params(from: ::String, to: ::String).returns(T::Boolean) }
    def id_value_previously_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::String)) }
    def id_value_previously_was; end

    sig { returns(T.nilable(::String)) }
    def id_value_was; end

    sig { void }
    def id_value_will_change!; end

    sig { returns(T.nilable(::String)) }
    def id_was; end

    sig { void }
    def id_will_change!; end

    sig { void }
    def restore_from_id!; end

    sig { void }
    def restore_id!; end

    sig { void }
    def restore_id_value!; end

    sig { void }
    def restore_to_id!; end

    sig { void }
    def restore_to_type!; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_from_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_from_id?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_id?; end

    sig { returns(T.nilable([T.nilable(::String), T.nilable(::String)])) }
    def saved_change_to_id_value; end

    sig { returns(T::Boolean) }
    def saved_change_to_id_value?; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_to_id; end

    sig { returns(T::Boolean) }
    def saved_change_to_to_id?; end

    sig { returns(T.nilable([::String, ::String])) }
    def saved_change_to_to_type; end

    sig { returns(T::Boolean) }
    def saved_change_to_to_type?; end

    sig { returns(::String) }
    def to_id; end

    sig { params(value: ::String).returns(::String) }
    def to_id=(value); end

    sig { returns(T::Boolean) }
    def to_id?; end

    sig { returns(T.nilable(::String)) }
    def to_id_before_last_save; end

    sig { returns(T.untyped) }
    def to_id_before_type_cast; end

    sig { returns(T::Boolean) }
    def to_id_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def to_id_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def to_id_change_to_be_saved; end

    sig { params(from: ::String, to: ::String).returns(T::Boolean) }
    def to_id_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::String)) }
    def to_id_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
    def to_id_previous_change; end

    sig { params(from: ::String, to: ::String).returns(T::Boolean) }
    def to_id_previously_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::String)) }
    def to_id_previously_was; end

    sig { returns(T.nilable(::String)) }
    def to_id_was; end

    sig { void }
    def to_id_will_change!; end

    sig { returns(::String) }
    def to_type; end

    sig { params(value: ::String).returns(::String) }
    def to_type=(value); end

    sig { returns(T::Boolean) }
    def to_type?; end

    sig { returns(T.nilable(::String)) }
    def to_type_before_last_save; end

    sig { returns(T.untyped) }
    def to_type_before_type_cast; end

    sig { returns(T::Boolean) }
    def to_type_came_from_user?; end

    sig { returns(T.nilable([::String, ::String])) }
    def to_type_change; end

    sig { returns(T.nilable([::String, ::String])) }
    def to_type_change_to_be_saved; end

    sig { params(from: ::String, to: ::String).returns(T::Boolean) }
    def to_type_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::String)) }
    def to_type_in_database; end

    sig { returns(T.nilable([::String, ::String])) }
    def to_type_previous_change; end

    sig { params(from: ::String, to: ::String).returns(T::Boolean) }
    def to_type_previously_changed?(from: T.unsafe(nil), to: T.unsafe(nil)); end

    sig { returns(T.nilable(::String)) }
    def to_type_previously_was; end

    sig { returns(T.nilable(::String)) }
    def to_type_was; end

    sig { void }
    def to_type_will_change!; end

    sig { returns(T::Boolean) }
    def will_save_change_to_from_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_id_value?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_to_id?; end

    sig { returns(T::Boolean) }
    def will_save_change_to_to_type?; end
  end

  module GeneratedRelationMethods
    sig { returns(PrivateRelation) }
    def all; end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def and(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def annotate(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def chronological(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def create_with(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def distinct(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def eager_load(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def except(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def excluding(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def extending(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def extract_associated(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def from(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def group(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def having(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def in_order_of(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def includes(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def invert_where(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def left_joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def left_outer_joins(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def limit(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def lock(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def merge(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def none(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def null_relation?(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def offset(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def only(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def optimizer_hints(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def or(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def order(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def preload(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def readonly(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def references(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def regroup(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def reorder(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def reselect(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def reverse_chronological(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def reverse_order(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def rewhere(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def select(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def strict_loading(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def structurally_compatible?(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def uniq!(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def unscope(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelationWhereChain) }
    def where(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def with(*args, &blk); end

    sig { params(args: T.untyped, blk: T.untyped).returns(PrivateRelation) }
    def without(*args, &blk); end
  end

  class PrivateAssociationRelation < ::ActiveRecord::AssociationRelation
    include CommonRelationMethods
    include GeneratedAssociationRelationMethods

    Elem = type_member { { fixed: ::ObsidianRelation } }

    sig { returns(T::Array[::ObsidianRelation]) }
    def to_a; end

    sig { returns(T::Array[::ObsidianRelation]) }
    def to_ary; end
  end

  class PrivateAssociationRelationWhereChain < PrivateAssociationRelation
    Elem = type_member { { fixed: ::ObsidianRelation } }

    sig { params(args: T.untyped).returns(PrivateAssociationRelation) }
    def associated(*args); end

    sig { params(args: T.untyped).returns(PrivateAssociationRelation) }
    def missing(*args); end

    sig { params(opts: T.untyped, rest: T.untyped).returns(PrivateAssociationRelation) }
    def not(opts, *rest); end
  end

  class PrivateCollectionProxy < ::ActiveRecord::Associations::CollectionProxy
    include CommonRelationMethods
    include GeneratedAssociationRelationMethods

    Elem = type_member { { fixed: ::ObsidianRelation } }

    sig do
      params(
        records: T.any(::ObsidianRelation, T::Enumerable[T.any(::ObsidianRelation, T::Enumerable[::ObsidianRelation])])
      ).returns(PrivateCollectionProxy)
    end
    def <<(*records); end

    sig do
      params(
        records: T.any(::ObsidianRelation, T::Enumerable[T.any(::ObsidianRelation, T::Enumerable[::ObsidianRelation])])
      ).returns(PrivateCollectionProxy)
    end
    def append(*records); end

    sig { returns(PrivateCollectionProxy) }
    def clear; end

    sig do
      params(
        records: T.any(::ObsidianRelation, T::Enumerable[T.any(::ObsidianRelation, T::Enumerable[::ObsidianRelation])])
      ).returns(PrivateCollectionProxy)
    end
    def concat(*records); end

    sig do
      params(
        records: T.any(::ObsidianRelation, Integer, String, T::Enumerable[T.any(::ObsidianRelation, Integer, String, T::Enumerable[::ObsidianRelation])])
      ).returns(T::Array[::ObsidianRelation])
    end
    def delete(*records); end

    sig do
      params(
        records: T.any(::ObsidianRelation, Integer, String, T::Enumerable[T.any(::ObsidianRelation, Integer, String, T::Enumerable[::ObsidianRelation])])
      ).returns(T::Array[::ObsidianRelation])
    end
    def destroy(*records); end

    sig { returns(T::Array[::ObsidianRelation]) }
    def load_target; end

    sig do
      params(
        records: T.any(::ObsidianRelation, T::Enumerable[T.any(::ObsidianRelation, T::Enumerable[::ObsidianRelation])])
      ).returns(PrivateCollectionProxy)
    end
    def prepend(*records); end

    sig do
      params(
        records: T.any(::ObsidianRelation, T::Enumerable[T.any(::ObsidianRelation, T::Enumerable[::ObsidianRelation])])
      ).returns(PrivateCollectionProxy)
    end
    def push(*records); end

    sig do
      params(
        other_array: T.any(::ObsidianRelation, T::Enumerable[T.any(::ObsidianRelation, T::Enumerable[::ObsidianRelation])])
      ).returns(T::Array[::ObsidianRelation])
    end
    def replace(other_array); end

    sig { returns(PrivateAssociationRelation) }
    def scope; end

    sig { returns(T::Array[::ObsidianRelation]) }
    def target; end

    sig { returns(T::Array[::ObsidianRelation]) }
    def to_a; end

    sig { returns(T::Array[::ObsidianRelation]) }
    def to_ary; end
  end

  class PrivateRelation < ::ActiveRecord::Relation
    include CommonRelationMethods
    include GeneratedRelationMethods

    Elem = type_member { { fixed: ::ObsidianRelation } }

    sig { returns(T::Array[::ObsidianRelation]) }
    def to_a; end

    sig { returns(T::Array[::ObsidianRelation]) }
    def to_ary; end
  end

  class PrivateRelationWhereChain < PrivateRelation
    Elem = type_member { { fixed: ::ObsidianRelation } }

    sig { params(args: T.untyped).returns(PrivateRelation) }
    def associated(*args); end

    sig { params(args: T.untyped).returns(PrivateRelation) }
    def missing(*args); end

    sig { params(opts: T.untyped, rest: T.untyped).returns(PrivateRelation) }
    def not(opts, *rest); end
  end
end
