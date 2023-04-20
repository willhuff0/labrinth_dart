//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BaseProject {
  /// Returns a new [BaseProject] instance.
  BaseProject({
    this.slug,
    this.title,
    this.description,
    this.categories,
    this.clientSide,
    this.serverSide,
  });

  /// The slug of a project, used for vanity URLs. Regex: ```^[\\w!@$()`.+,\"\\-']{3,64}$```
  Object? slug;

  /// The title or name of the project
  Object? title;

  /// A short description of the project
  Object? description;

  /// A list of the categories that the project has
  Object? categories;

  /// The client side support of the project
  BaseProjectClientSideEnum? clientSide;

  /// The server side support of the project
  BaseProjectServerSideEnum? serverSide;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BaseProject && other.slug == slug && other.title == title && other.description == description && other.categories == categories && other.clientSide == clientSide && other.serverSide == serverSide;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (slug == null ? 0 : slug!.hashCode) + (title == null ? 0 : title!.hashCode) + (description == null ? 0 : description!.hashCode) + (categories == null ? 0 : categories!.hashCode) + (clientSide == null ? 0 : clientSide!.hashCode) + (serverSide == null ? 0 : serverSide!.hashCode);

  @override
  String toString() => 'BaseProject[slug=$slug, title=$title, description=$description, categories=$categories, clientSide=$clientSide, serverSide=$serverSide]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.categories != null) {
      json[r'categories'] = this.categories;
    } else {
      json[r'categories'] = null;
    }
    if (this.clientSide != null) {
      json[r'client_side'] = this.clientSide;
    } else {
      json[r'client_side'] = null;
    }
    if (this.serverSide != null) {
      json[r'server_side'] = this.serverSide;
    } else {
      json[r'server_side'] = null;
    }
    return json;
  }

  /// Returns a new [BaseProject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BaseProject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BaseProject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BaseProject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BaseProject(
        slug: mapValueOfType<Object>(json, r'slug'),
        title: mapValueOfType<Object>(json, r'title'),
        description: mapValueOfType<Object>(json, r'description'),
        categories: mapValueOfType<Object>(json, r'categories'),
        clientSide: BaseProjectClientSideEnum.fromJson(json[r'client_side']),
        serverSide: BaseProjectServerSideEnum.fromJson(json[r'server_side']),
      );
    }
    return null;
  }

  static List<BaseProject>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BaseProject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BaseProject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BaseProject> mapFromJson(dynamic json) {
    final map = <String, BaseProject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BaseProject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BaseProject-objects as value to a dart map
  static Map<String, List<BaseProject>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<BaseProject>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BaseProject.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}

/// The client side support of the project
class BaseProjectClientSideEnum {
  /// Instantiate a new enum with the provided [value].
  const BaseProjectClientSideEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const required_ = BaseProjectClientSideEnum._('required');
  static const optional = BaseProjectClientSideEnum._('optional');
  static const unsupported = BaseProjectClientSideEnum._('unsupported');

  /// List of all possible values in this [enum][BaseProjectClientSideEnum].
  static const values = <BaseProjectClientSideEnum>[
    required_,
    optional,
    unsupported,
  ];

  static BaseProjectClientSideEnum? fromJson(dynamic value) => BaseProjectClientSideEnumTypeTransformer().decode(value);

  static List<BaseProjectClientSideEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BaseProjectClientSideEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BaseProjectClientSideEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BaseProjectClientSideEnum] to Object,
/// and [decode] dynamic data back to [BaseProjectClientSideEnum].
class BaseProjectClientSideEnumTypeTransformer {
  factory BaseProjectClientSideEnumTypeTransformer() => _instance ??= const BaseProjectClientSideEnumTypeTransformer._();

  const BaseProjectClientSideEnumTypeTransformer._();

  Object encode(BaseProjectClientSideEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BaseProjectClientSideEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BaseProjectClientSideEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'required':
          return BaseProjectClientSideEnum.required_;
        case 'optional':
          return BaseProjectClientSideEnum.optional;
        case 'unsupported':
          return BaseProjectClientSideEnum.unsupported;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BaseProjectClientSideEnumTypeTransformer] instance.
  static BaseProjectClientSideEnumTypeTransformer? _instance;
}

/// The server side support of the project
class BaseProjectServerSideEnum {
  /// Instantiate a new enum with the provided [value].
  const BaseProjectServerSideEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const required_ = BaseProjectServerSideEnum._('required');
  static const optional = BaseProjectServerSideEnum._('optional');
  static const unsupported = BaseProjectServerSideEnum._('unsupported');

  /// List of all possible values in this [enum][BaseProjectServerSideEnum].
  static const values = <BaseProjectServerSideEnum>[
    required_,
    optional,
    unsupported,
  ];

  static BaseProjectServerSideEnum? fromJson(dynamic value) => BaseProjectServerSideEnumTypeTransformer().decode(value);

  static List<BaseProjectServerSideEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BaseProjectServerSideEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BaseProjectServerSideEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BaseProjectServerSideEnum] to Object,
/// and [decode] dynamic data back to [BaseProjectServerSideEnum].
class BaseProjectServerSideEnumTypeTransformer {
  factory BaseProjectServerSideEnumTypeTransformer() => _instance ??= const BaseProjectServerSideEnumTypeTransformer._();

  const BaseProjectServerSideEnumTypeTransformer._();

  Object encode(BaseProjectServerSideEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BaseProjectServerSideEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BaseProjectServerSideEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'required':
          return BaseProjectServerSideEnum.required_;
        case 'optional':
          return BaseProjectServerSideEnum.optional;
        case 'unsupported':
          return BaseProjectServerSideEnum.unsupported;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BaseProjectServerSideEnumTypeTransformer] instance.
  static BaseProjectServerSideEnumTypeTransformer? _instance;
}
