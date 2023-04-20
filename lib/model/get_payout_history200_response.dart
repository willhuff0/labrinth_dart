//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetPayoutHistory200Response {
  /// Returns a new [GetPayoutHistory200Response] instance.
  GetPayoutHistory200Response({
    this.allTime,
    this.lastMonth,
    this.payouts,
  });

  /// The all-time balance accrued by this user
  Object? allTime;

  /// The amount made by the user in the previous 30 days
  Object? lastMonth;

  /// A history of all of the user's past transactions
  Object? payouts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetPayoutHistory200Response &&
     other.allTime == allTime &&
     other.lastMonth == lastMonth &&
     other.payouts == payouts;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (allTime == null ? 0 : allTime!.hashCode) +
    (lastMonth == null ? 0 : lastMonth!.hashCode) +
    (payouts == null ? 0 : payouts!.hashCode);

  @override
  String toString() => 'GetPayoutHistory200Response[allTime=$allTime, lastMonth=$lastMonth, payouts=$payouts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.allTime != null) {
      json[r'all_time'] = this.allTime;
    } else {
      json[r'all_time'] = null;
    }
    if (this.lastMonth != null) {
      json[r'last_month'] = this.lastMonth;
    } else {
      json[r'last_month'] = null;
    }
    if (this.payouts != null) {
      json[r'payouts'] = this.payouts;
    } else {
      json[r'payouts'] = null;
    }
    return json;
  }

  /// Returns a new [GetPayoutHistory200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetPayoutHistory200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetPayoutHistory200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetPayoutHistory200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetPayoutHistory200Response(
        allTime: mapValueOfType<Object>(json, r'all_time'),
        lastMonth: mapValueOfType<Object>(json, r'last_month'),
        payouts: mapValueOfType<Object>(json, r'payouts'),
      );
    }
    return null;
  }

  static List<GetPayoutHistory200Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetPayoutHistory200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetPayoutHistory200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetPayoutHistory200Response> mapFromJson(dynamic json) {
    final map = <String, GetPayoutHistory200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetPayoutHistory200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetPayoutHistory200Response-objects as value to a dart map
  static Map<String, List<GetPayoutHistory200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetPayoutHistory200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetPayoutHistory200Response.listFromJson(entry.value, growable: growable,);
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

