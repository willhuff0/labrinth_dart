//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetLatestVersionsFromHashesRequest {
  /// Returns a new [GetLatestVersionsFromHashesRequest] instance.
  GetLatestVersionsFromHashesRequest({
    required this.hashes,
    required this.algorithm,
    required this.loaders,
    required this.gameVersions,
  });

  Object? hashes;

  GetLatestVersionsFromHashesRequestAlgorithmEnum? algorithm;

  Object? loaders;

  Object? gameVersions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetLatestVersionsFromHashesRequest && other.hashes == hashes && other.algorithm == algorithm && other.loaders == loaders && other.gameVersions == gameVersions;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (hashes == null ? 0 : hashes!.hashCode) + (algorithm == null ? 0 : algorithm!.hashCode) + (loaders == null ? 0 : loaders!.hashCode) + (gameVersions == null ? 0 : gameVersions!.hashCode);

  @override
  String toString() => 'GetLatestVersionsFromHashesRequest[hashes=$hashes, algorithm=$algorithm, loaders=$loaders, gameVersions=$gameVersions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.hashes != null) {
      json[r'hashes'] = this.hashes;
    } else {
      json[r'hashes'] = null;
    }
    if (this.algorithm != null) {
      json[r'algorithm'] = this.algorithm;
    } else {
      json[r'algorithm'] = null;
    }
    if (this.loaders != null) {
      json[r'loaders'] = this.loaders;
    } else {
      json[r'loaders'] = null;
    }
    if (this.gameVersions != null) {
      json[r'game_versions'] = this.gameVersions;
    } else {
      json[r'game_versions'] = null;
    }
    return json;
  }

  /// Returns a new [GetLatestVersionsFromHashesRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetLatestVersionsFromHashesRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetLatestVersionsFromHashesRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetLatestVersionsFromHashesRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetLatestVersionsFromHashesRequest(
        hashes: mapValueOfType<Object>(json, r'hashes'),
        algorithm: GetLatestVersionsFromHashesRequestAlgorithmEnum.fromJson(json[r'algorithm']),
        loaders: mapValueOfType<Object>(json, r'loaders'),
        gameVersions: mapValueOfType<Object>(json, r'game_versions'),
      );
    }
    return null;
  }

  static List<GetLatestVersionsFromHashesRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GetLatestVersionsFromHashesRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetLatestVersionsFromHashesRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetLatestVersionsFromHashesRequest> mapFromJson(dynamic json) {
    final map = <String, GetLatestVersionsFromHashesRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetLatestVersionsFromHashesRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetLatestVersionsFromHashesRequest-objects as value to a dart map
  static Map<String, List<GetLatestVersionsFromHashesRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GetLatestVersionsFromHashesRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetLatestVersionsFromHashesRequest.listFromJson(
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
    'hashes',
    'algorithm',
    'loaders',
    'game_versions',
  };
}

class GetLatestVersionsFromHashesRequestAlgorithmEnum {
  /// Instantiate a new enum with the provided [value].
  const GetLatestVersionsFromHashesRequestAlgorithmEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const sha1 = GetLatestVersionsFromHashesRequestAlgorithmEnum._('sha1');
  static const sha512 = GetLatestVersionsFromHashesRequestAlgorithmEnum._('sha512');

  /// List of all possible values in this [enum][GetLatestVersionsFromHashesRequestAlgorithmEnum].
  static const values = <GetLatestVersionsFromHashesRequestAlgorithmEnum>[
    sha1,
    sha512,
  ];

  static GetLatestVersionsFromHashesRequestAlgorithmEnum? fromJson(dynamic value) => GetLatestVersionsFromHashesRequestAlgorithmEnumTypeTransformer().decode(value);

  static List<GetLatestVersionsFromHashesRequestAlgorithmEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GetLatestVersionsFromHashesRequestAlgorithmEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetLatestVersionsFromHashesRequestAlgorithmEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetLatestVersionsFromHashesRequestAlgorithmEnum] to Object,
/// and [decode] dynamic data back to [GetLatestVersionsFromHashesRequestAlgorithmEnum].
class GetLatestVersionsFromHashesRequestAlgorithmEnumTypeTransformer {
  factory GetLatestVersionsFromHashesRequestAlgorithmEnumTypeTransformer() => _instance ??= const GetLatestVersionsFromHashesRequestAlgorithmEnumTypeTransformer._();

  const GetLatestVersionsFromHashesRequestAlgorithmEnumTypeTransformer._();

  Object encode(GetLatestVersionsFromHashesRequestAlgorithmEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetLatestVersionsFromHashesRequestAlgorithmEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetLatestVersionsFromHashesRequestAlgorithmEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'sha1':
          return GetLatestVersionsFromHashesRequestAlgorithmEnum.sha1;
        case 'sha512':
          return GetLatestVersionsFromHashesRequestAlgorithmEnum.sha512;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetLatestVersionsFromHashesRequestAlgorithmEnumTypeTransformer] instance.
  static GetLatestVersionsFromHashesRequestAlgorithmEnumTypeTransformer? _instance;
}
