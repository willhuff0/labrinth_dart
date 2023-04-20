//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SearchProjects200Response {
  /// Returns a new [SearchProjects200Response] instance.
  SearchProjects200Response({
    required this.hits,
    required this.offset,
    required this.limit,
    required this.totalHits,
  });

  /// The list of results
  Object? hits;

  /// The number of results that were skipped by the query
  Object? offset;

  /// The number of results that were returned by the query
  Object? limit;

  /// The total number of results that match the query
  Object? totalHits;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchProjects200Response &&
     other.hits == hits &&
     other.offset == offset &&
     other.limit == limit &&
     other.totalHits == totalHits;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hits == null ? 0 : hits!.hashCode) +
    (offset == null ? 0 : offset!.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (totalHits == null ? 0 : totalHits!.hashCode);

  @override
  String toString() => 'SearchProjects200Response[hits=$hits, offset=$offset, limit=$limit, totalHits=$totalHits]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.hits != null) {
      json[r'hits'] = this.hits;
    } else {
      json[r'hits'] = null;
    }
    if (this.offset != null) {
      json[r'offset'] = this.offset;
    } else {
      json[r'offset'] = null;
    }
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.totalHits != null) {
      json[r'total_hits'] = this.totalHits;
    } else {
      json[r'total_hits'] = null;
    }
    return json;
  }

  /// Returns a new [SearchProjects200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchProjects200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchProjects200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchProjects200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchProjects200Response(
        hits: mapValueOfType<Object>(json, r'hits'),
        offset: mapValueOfType<Object>(json, r'offset'),
        limit: mapValueOfType<Object>(json, r'limit'),
        totalHits: mapValueOfType<Object>(json, r'total_hits'),
      );
    }
    return null;
  }

  static List<SearchProjects200Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchProjects200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchProjects200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchProjects200Response> mapFromJson(dynamic json) {
    final map = <String, SearchProjects200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchProjects200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchProjects200Response-objects as value to a dart map
  static Map<String, List<SearchProjects200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchProjects200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchProjects200Response.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'hits',
    'offset',
    'limit',
    'total_hits',
  };
}

