//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectDependencyList {
  /// Returns a new [ProjectDependencyList] instance.
  ProjectDependencyList({
    this.projects,
    this.versions,
  });

  /// Projects that the project depends upon
  Object? projects;

  /// Versions that the project depends upon
  Object? versions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectDependencyList &&
     other.projects == projects &&
     other.versions == versions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projects == null ? 0 : projects!.hashCode) +
    (versions == null ? 0 : versions!.hashCode);

  @override
  String toString() => 'ProjectDependencyList[projects=$projects, versions=$versions]';

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

  /// Returns a new [ProjectDependencyList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectDependencyList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectDependencyList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectDependencyList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectDependencyList(
        projects: mapValueOfType<Object>(json, r'projects'),
        versions: mapValueOfType<Object>(json, r'versions'),
      );
    }
    return null;
  }

  static List<ProjectDependencyList>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectDependencyList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectDependencyList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectDependencyList> mapFromJson(dynamic json) {
    final map = <String, ProjectDependencyList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectDependencyList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectDependencyList-objects as value to a dart map
  static Map<String, List<ProjectDependencyList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectDependencyList>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectDependencyList.listFromJson(entry.value, growable: growable,);
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

