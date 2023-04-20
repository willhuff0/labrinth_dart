//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Statistics200Response {
  /// Returns a new [Statistics200Response] instance.
  Statistics200Response({
    this.projects,
    this.versions,
    this.files,
    this.authors,
  });

  /// Number of projects on Modrinth
  Object? projects;

  /// Number of projects on Modrinth
  Object? versions;

  /// Number of version files on Modrinth
  Object? files;

  /// Number of authors (users with projects) on Modrinth
  Object? authors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Statistics200Response &&
     other.projects == projects &&
     other.versions == versions &&
     other.files == files &&
     other.authors == authors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projects == null ? 0 : projects!.hashCode) +
    (versions == null ? 0 : versions!.hashCode) +
    (files == null ? 0 : files!.hashCode) +
    (authors == null ? 0 : authors!.hashCode);

  @override
  String toString() => 'Statistics200Response[projects=$projects, versions=$versions, files=$files, authors=$authors]';

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
    if (this.files != null) {
      json[r'files'] = this.files;
    } else {
      json[r'files'] = null;
    }
    if (this.authors != null) {
      json[r'authors'] = this.authors;
    } else {
      json[r'authors'] = null;
    }
    return json;
  }

  /// Returns a new [Statistics200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Statistics200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Statistics200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Statistics200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Statistics200Response(
        projects: mapValueOfType<Object>(json, r'projects'),
        versions: mapValueOfType<Object>(json, r'versions'),
        files: mapValueOfType<Object>(json, r'files'),
        authors: mapValueOfType<Object>(json, r'authors'),
      );
    }
    return null;
  }

  static List<Statistics200Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Statistics200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Statistics200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Statistics200Response> mapFromJson(dynamic json) {
    final map = <String, Statistics200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Statistics200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Statistics200Response-objects as value to a dart map
  static Map<String, List<Statistics200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Statistics200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Statistics200Response.listFromJson(entry.value, growable: growable,);
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

