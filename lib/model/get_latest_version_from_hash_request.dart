//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetLatestVersionFromHashRequest {
  /// Returns a new [GetLatestVersionFromHashRequest] instance.
  GetLatestVersionFromHashRequest({
    required this.loaders,
    required this.gameVersions,
  });

  Object? loaders;

  Object? gameVersions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetLatestVersionFromHashRequest &&
     other.loaders == loaders &&
     other.gameVersions == gameVersions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (loaders == null ? 0 : loaders!.hashCode) +
    (gameVersions == null ? 0 : gameVersions!.hashCode);

  @override
  String toString() => 'GetLatestVersionFromHashRequest[loaders=$loaders, gameVersions=$gameVersions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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

  /// Returns a new [GetLatestVersionFromHashRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetLatestVersionFromHashRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetLatestVersionFromHashRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetLatestVersionFromHashRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetLatestVersionFromHashRequest(
        loaders: mapValueOfType<Object>(json, r'loaders'),
        gameVersions: mapValueOfType<Object>(json, r'game_versions'),
      );
    }
    return null;
  }

  static List<GetLatestVersionFromHashRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetLatestVersionFromHashRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetLatestVersionFromHashRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetLatestVersionFromHashRequest> mapFromJson(dynamic json) {
    final map = <String, GetLatestVersionFromHashRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetLatestVersionFromHashRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetLatestVersionFromHashRequest-objects as value to a dart map
  static Map<String, List<GetLatestVersionFromHashRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetLatestVersionFromHashRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetLatestVersionFromHashRequest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'loaders',
    'game_versions',
  };
}

