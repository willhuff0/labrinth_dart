//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BaseVersion {
  /// Returns a new [BaseVersion] instance.
  BaseVersion({
    this.name,
    this.versionNumber,
    this.changelog,
    this.dependencies,
    this.gameVersions,
    this.versionType,
    this.loaders,
    this.featured,
    this.status,
    this.requestedStatus,
  });

  /// The name of this version
  Object? name;

  /// The version number. Ideally will follow semantic versioning
  Object? versionNumber;

  /// The changelog for this version
  Object? changelog;

  /// A list of specific versions of projects that this version depends on
  Object? dependencies;

  /// A list of versions of Minecraft that this version supports
  Object? gameVersions;

  /// The release channel for this version
  BaseVersionVersionTypeEnum? versionType;

  /// The mod loaders that this version supports
  Object? loaders;

  /// Whether the version is featured or not
  Object? featured;

  BaseVersionStatusEnum? status;

  BaseVersionRequestedStatusEnum? requestedStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BaseVersion && other.name == name && other.versionNumber == versionNumber && other.changelog == changelog && other.dependencies == dependencies && other.gameVersions == gameVersions && other.versionType == versionType && other.loaders == loaders && other.featured == featured && other.status == status && other.requestedStatus == requestedStatus;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (name == null ? 0 : name!.hashCode) + (versionNumber == null ? 0 : versionNumber!.hashCode) + (changelog == null ? 0 : changelog!.hashCode) + (dependencies == null ? 0 : dependencies!.hashCode) + (gameVersions == null ? 0 : gameVersions!.hashCode) + (versionType == null ? 0 : versionType!.hashCode) + (loaders == null ? 0 : loaders!.hashCode) + (featured == null ? 0 : featured!.hashCode) + (status == null ? 0 : status!.hashCode) + (requestedStatus == null ? 0 : requestedStatus!.hashCode);

  @override
  String toString() => 'BaseVersion[name=$name, versionNumber=$versionNumber, changelog=$changelog, dependencies=$dependencies, gameVersions=$gameVersions, versionType=$versionType, loaders=$loaders, featured=$featured, status=$status, requestedStatus=$requestedStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.versionNumber != null) {
      json[r'version_number'] = this.versionNumber;
    } else {
      json[r'version_number'] = null;
    }
    if (this.changelog != null) {
      json[r'changelog'] = this.changelog;
    } else {
      json[r'changelog'] = null;
    }
    if (this.dependencies != null) {
      json[r'dependencies'] = this.dependencies;
    } else {
      json[r'dependencies'] = null;
    }
    if (this.gameVersions != null) {
      json[r'game_versions'] = this.gameVersions;
    } else {
      json[r'game_versions'] = null;
    }
    if (this.versionType != null) {
      json[r'version_type'] = this.versionType;
    } else {
      json[r'version_type'] = null;
    }
    if (this.loaders != null) {
      json[r'loaders'] = this.loaders;
    } else {
      json[r'loaders'] = null;
    }
    if (this.featured != null) {
      json[r'featured'] = this.featured;
    } else {
      json[r'featured'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.requestedStatus != null) {
      json[r'requested_status'] = this.requestedStatus;
    } else {
      json[r'requested_status'] = null;
    }
    return json;
  }

  /// Returns a new [BaseVersion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BaseVersion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BaseVersion[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BaseVersion[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BaseVersion(
        name: mapValueOfType<Object>(json, r'name'),
        versionNumber: mapValueOfType<Object>(json, r'version_number'),
        changelog: mapValueOfType<Object>(json, r'changelog'),
        dependencies: mapValueOfType<Object>(json, r'dependencies'),
        gameVersions: mapValueOfType<Object>(json, r'game_versions'),
        versionType: BaseVersionVersionTypeEnum.fromJson(json[r'version_type']),
        loaders: mapValueOfType<Object>(json, r'loaders'),
        featured: mapValueOfType<Object>(json, r'featured'),
        status: BaseVersionStatusEnum.fromJson(json[r'status']),
        requestedStatus: BaseVersionRequestedStatusEnum.fromJson(json[r'requested_status']),
      );
    }
    return null;
  }

  static List<BaseVersion>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BaseVersion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BaseVersion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BaseVersion> mapFromJson(dynamic json) {
    final map = <String, BaseVersion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BaseVersion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BaseVersion-objects as value to a dart map
  static Map<String, List<BaseVersion>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<BaseVersion>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BaseVersion.listFromJson(
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

/// The release channel for this version
class BaseVersionVersionTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const BaseVersionVersionTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const release = BaseVersionVersionTypeEnum._('release');
  static const beta = BaseVersionVersionTypeEnum._('beta');
  static const alpha = BaseVersionVersionTypeEnum._('alpha');

  /// List of all possible values in this [enum][BaseVersionVersionTypeEnum].
  static const values = <BaseVersionVersionTypeEnum>[
    release,
    beta,
    alpha,
  ];

  static BaseVersionVersionTypeEnum? fromJson(dynamic value) => BaseVersionVersionTypeEnumTypeTransformer().decode(value);

  static List<BaseVersionVersionTypeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BaseVersionVersionTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BaseVersionVersionTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BaseVersionVersionTypeEnum] to Object,
/// and [decode] dynamic data back to [BaseVersionVersionTypeEnum].
class BaseVersionVersionTypeEnumTypeTransformer {
  factory BaseVersionVersionTypeEnumTypeTransformer() => _instance ??= const BaseVersionVersionTypeEnumTypeTransformer._();

  const BaseVersionVersionTypeEnumTypeTransformer._();

  Object encode(BaseVersionVersionTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BaseVersionVersionTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BaseVersionVersionTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'release':
          return BaseVersionVersionTypeEnum.release;
        case 'beta':
          return BaseVersionVersionTypeEnum.beta;
        case 'alpha':
          return BaseVersionVersionTypeEnum.alpha;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BaseVersionVersionTypeEnumTypeTransformer] instance.
  static BaseVersionVersionTypeEnumTypeTransformer? _instance;
}

class BaseVersionStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const BaseVersionStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const listed = BaseVersionStatusEnum._('listed');
  static const archived = BaseVersionStatusEnum._('archived');
  static const draft = BaseVersionStatusEnum._('draft');
  static const unlisted = BaseVersionStatusEnum._('unlisted');
  static const scheduled = BaseVersionStatusEnum._('scheduled');
  static const unknown = BaseVersionStatusEnum._('unknown');

  /// List of all possible values in this [enum][BaseVersionStatusEnum].
  static const values = <BaseVersionStatusEnum>[
    listed,
    archived,
    draft,
    unlisted,
    scheduled,
    unknown,
  ];

  static BaseVersionStatusEnum? fromJson(dynamic value) => BaseVersionStatusEnumTypeTransformer().decode(value);

  static List<BaseVersionStatusEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BaseVersionStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BaseVersionStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BaseVersionStatusEnum] to Object,
/// and [decode] dynamic data back to [BaseVersionStatusEnum].
class BaseVersionStatusEnumTypeTransformer {
  factory BaseVersionStatusEnumTypeTransformer() => _instance ??= const BaseVersionStatusEnumTypeTransformer._();

  const BaseVersionStatusEnumTypeTransformer._();

  Object encode(BaseVersionStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BaseVersionStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BaseVersionStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'listed':
          return BaseVersionStatusEnum.listed;
        case 'archived':
          return BaseVersionStatusEnum.archived;
        case 'draft':
          return BaseVersionStatusEnum.draft;
        case 'unlisted':
          return BaseVersionStatusEnum.unlisted;
        case 'scheduled':
          return BaseVersionStatusEnum.scheduled;
        case 'unknown':
          return BaseVersionStatusEnum.unknown;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BaseVersionStatusEnumTypeTransformer] instance.
  static BaseVersionStatusEnumTypeTransformer? _instance;
}

class BaseVersionRequestedStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const BaseVersionRequestedStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const listed = BaseVersionRequestedStatusEnum._('listed');
  static const archived = BaseVersionRequestedStatusEnum._('archived');
  static const draft = BaseVersionRequestedStatusEnum._('draft');
  static const unlisted = BaseVersionRequestedStatusEnum._('unlisted');

  /// List of all possible values in this [enum][BaseVersionRequestedStatusEnum].
  static const values = <BaseVersionRequestedStatusEnum>[
    listed,
    archived,
    draft,
    unlisted,
  ];

  static BaseVersionRequestedStatusEnum? fromJson(dynamic value) => BaseVersionRequestedStatusEnumTypeTransformer().decode(value);

  static List<BaseVersionRequestedStatusEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <BaseVersionRequestedStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BaseVersionRequestedStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BaseVersionRequestedStatusEnum] to Object,
/// and [decode] dynamic data back to [BaseVersionRequestedStatusEnum].
class BaseVersionRequestedStatusEnumTypeTransformer {
  factory BaseVersionRequestedStatusEnumTypeTransformer() => _instance ??= const BaseVersionRequestedStatusEnumTypeTransformer._();

  const BaseVersionRequestedStatusEnumTypeTransformer._();

  Object encode(BaseVersionRequestedStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BaseVersionRequestedStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BaseVersionRequestedStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'listed':
          return BaseVersionRequestedStatusEnum.listed;
        case 'archived':
          return BaseVersionRequestedStatusEnum.archived;
        case 'draft':
          return BaseVersionRequestedStatusEnum.draft;
        case 'unlisted':
          return BaseVersionRequestedStatusEnum.unlisted;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BaseVersionRequestedStatusEnumTypeTransformer] instance.
  static BaseVersionRequestedStatusEnumTypeTransformer? _instance;
}
