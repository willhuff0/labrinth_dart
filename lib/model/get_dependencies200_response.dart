//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetDependencies200Response {
  /// Returns a new [GetDependencies200Response] instance.
  GetDependencies200Response({
    this.projects,
    this.versions,
  });

  /// Projects that the project depends upon
  Object? projects;

  /// Versions that the project depends upon
  Object? versions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetDependencies200Response &&
     other.projects == projects &&
     other.versions == versions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projects == null ? 0 : projects!.hashCode) +
    (versions == null ? 0 : versions!.hashCode);

  @override
  String toString() => 'GetDependencies200Response[projects=$projects, versions=$versions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.projects != null) {
      json[r'projects'] = this.projects;
    } else {
      json[r'projects'] = null;
    }
    if (this.versions != null) {
      json[r'versions'] = this.versions;
    } else {
      json[r'versions'] = null;
    }
    return json;
  }

  /// Returns a new [GetDependencies200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetDependencies200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetDependencies200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetDependencies200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetDependencies200Response(
        projects: mapValueOfType<Object>(json, r'projects'),
        versions: mapValueOfType<Object>(json, r'versions'),
      );
    }
    return null;
  }

  static List<GetDependencies200Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetDependencies200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetDependencies200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetDependencies200Response> mapFromJson(dynamic json) {
    final map = <String, GetDependencies200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetDependencies200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetDependencies200Response-objects as value to a dart map
  static Map<String, List<GetDependencies200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetDependencies200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetDependencies200Response.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

