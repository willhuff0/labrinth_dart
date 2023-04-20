//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VersionsFromHashesRequest {
  /// Returns a new [VersionsFromHashesRequest] instance.
  VersionsFromHashesRequest({
    required this.hashes,
    required this.algorithm,
  });

  Object? hashes;

  VersionsFromHashesRequestAlgorithmEnum? algorithm;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VersionsFromHashesRequest && other.hashes == hashes && other.algorithm == algorithm;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (hashes == null ? 0 : hashes!.hashCode) + (algorithm == null ? 0 : algorithm!.hashCode);

  @override
  String toString() => 'VersionsFromHashesRequest[hashes=$hashes, algorithm=$algorithm]';

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
    return json;
  }

  /// Returns a new [VersionsFromHashesRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VersionsFromHashesRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VersionsFromHashesRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VersionsFromHashesRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VersionsFromHashesRequest(
        hashes: mapValueOfType<Object>(json, r'hashes'),
        algorithm: VersionsFromHashesRequestAlgorithmEnum.fromJson(json[r'algorithm']),
      );
    }
    return null;
  }

  static List<VersionsFromHashesRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <VersionsFromHashesRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VersionsFromHashesRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VersionsFromHashesRequest> mapFromJson(dynamic json) {
    final map = <String, VersionsFromHashesRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VersionsFromHashesRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VersionsFromHashesRequest-objects as value to a dart map
  static Map<String, List<VersionsFromHashesRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<VersionsFromHashesRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VersionsFromHashesRequest.listFromJson(
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
  };
}

class VersionsFromHashesRequestAlgorithmEnum {
  /// Instantiate a new enum with the provided [value].
  const VersionsFromHashesRequestAlgorithmEnum._(this.value);

  /// The underlying value of this enum member.
  final Object value;

  @override
  String toString() => value.toString();

  Object toJson() => value;

  static const sha1 = VersionsFromHashesRequestAlgorithmEnum._('sha1');
  static const sha512 = VersionsFromHashesRequestAlgorithmEnum._('sha512');

  /// List of all possible values in this [enum][VersionsFromHashesRequestAlgorithmEnum].
  static const values = <VersionsFromHashesRequestAlgorithmEnum>[
    sha1,
    sha512,
  ];

  static VersionsFromHashesRequestAlgorithmEnum? fromJson(dynamic value) => VersionsFromHashesRequestAlgorithmEnumTypeTransformer().decode(value);

  static List<VersionsFromHashesRequestAlgorithmEnum>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <VersionsFromHashesRequestAlgorithmEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VersionsFromHashesRequestAlgorithmEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VersionsFromHashesRequestAlgorithmEnum] to Object,
/// and [decode] dynamic data back to [VersionsFromHashesRequestAlgorithmEnum].
class VersionsFromHashesRequestAlgorithmEnumTypeTransformer {
  factory VersionsFromHashesRequestAlgorithmEnumTypeTransformer() => _instance ??= const VersionsFromHashesRequestAlgorithmEnumTypeTransformer._();

  const VersionsFromHashesRequestAlgorithmEnumTypeTransformer._();

  Object encode(VersionsFromHashesRequestAlgorithmEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VersionsFromHashesRequestAlgorithmEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VersionsFromHashesRequestAlgorithmEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 'sha1':
          return VersionsFromHashesRequestAlgorithmEnum.sha1;
        case 'sha512':
          return VersionsFromHashesRequestAlgorithmEnum.sha512;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VersionsFromHashesRequestAlgorithmEnumTypeTransformer] instance.
  static VersionsFromHashesRequestAlgorithmEnumTypeTransformer? _instance;
}
