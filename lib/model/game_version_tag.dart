//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GameVersionTag {
  /// Returns a new [GameVersionTag] instance.
  GameVersionTag({
    required this.version,
    required this.versionType,
    required this.date,
    required this.major,
  });

  /// The name/number of the game version
  Object? version;

  /// The type of the game version
  GameVersionTagVersionTypeEnum? versionType;

  /// The date of the game version release
  Object? date;

  /// Whether or not this is a major version, used for Featured Versions
  Object? major;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GameVersionTag && other.version == version && other.versionType == versionType && other.date == date && other.major == major;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (version == null ? 0 : version!.hashCode) + (versionType == null ? 0 : versionType!.hashCode) + (date == null ? 0 : date!.hashCode) + (major == null ? 0 : major!.hashCode);

  @override
  String toString() => 'GameVersionTag[version=$version, versionType=$versionType, date=$date, major=$major]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.versionType != null) {
      json[r'version_type'] = this.versionType;
    } else {
      json[r'version_type'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.major != null) {
      json[r'major'] = this.major;
    } else {
      json[r'major'] = null;
    }
    return json;
  }

  /// Returns a new [GameVersionTag] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GameVersionTag? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GameVersionTag[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GameVersionTag[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GameVersionTag(
        version: mapValueOfType<Object>(json, r'version'),
        versionType: GameVersionTagVersionTypeEnum.fromJson(json[r'version_type']),
        date: mapValueOfType<Object>(json, r'date'),
        major: mapValueOfType<Object>(json, r'major'),
      );
    }
    return null;
  }

  static List<GameVersionTag>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GameVersionTag>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameVersionTag.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GameVersionTag> mapFromJson(dynamic json) {
    final map = <String, GameVersionTag>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameVersionTag.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GameVersionTag-objects as value to a dart map
  static Map<String, List<GameVersionTag>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GameVersionTag>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GameVersionTag.listFromJson(
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
  static const requiredKeys = <String>{
    'version',
    'version_type',
    'date',
    'major',
  };
}

/// The type of the game version
class GameVersionTagVersionTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GameVersionTagVersionTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const release = GameVersionTagVersionTypeEnum._('release');
  static const snapshot = GameVersionTagVersionTypeEnum._('snapshot');
  static const alpha = GameVersionTagVersionTypeEnum._('alpha');
  static const beta = GameVersionTagVersionTypeEnum._('beta');

  /// List of all possible values in this [enum][GameVersionTagVersionTypeEnum].
  static const values = <GameVersionTagVersionTypeEnum>[
    release,
    snapshot,
    alpha,
    beta,
  ];

  static GameVersionTagVersionTypeEnum? fromJson(dynamic value) => GameVersionTagVersionTypeEnumTypeTransformer().decode(value);

  static List<GameVersionTagVersionTypeEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GameVersionTagVersionTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GameVersionTagVersionTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GameVersionTagVersionTypeEnum] to Object,
/// and [decode] dynamic data back to [GameVersionTagVersionTypeEnum].
class GameVersionTagVersionTypeEnumTypeTransformer {
  factory GameVersionTagVersionTypeEnumTypeTransformer() => _instance ??= const GameVersionTagVersionTypeEnumTypeTransformer._();

  const GameVersionTagVersionTypeEnumTypeTransformer._();

  Object encode(GameVersionTagVersionTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GameVersionTagVersionTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GameVersionTagVersionTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'release':
          return GameVersionTagVersionTypeEnum.release;
        case 'snapshot':
          return GameVersionTagVersionTypeEnum.snapshot;
        case 'alpha':
          return GameVersionTagVersionTypeEnum.alpha;
        case 'beta':
          return GameVersionTagVersionTypeEnum.beta;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GameVersionTagVersionTypeEnumTypeTransformer] instance.
  static GameVersionTagVersionTypeEnumTypeTransformer? _instance;
}
