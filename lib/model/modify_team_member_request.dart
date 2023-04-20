//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModifyTeamMemberRequest {
  /// Returns a new [ModifyTeamMemberRequest] instance.
  ModifyTeamMemberRequest({
    this.role,
    this.permissions,
    this.payoutsSplit,
    this.ordering,
  });

  Object? role;

  /// The user's permissions in bitfield format  In order from first to tenth bit, the bits are: - UPLOAD_VERSION - DELETE_VERSION - EDIT_DETAILS - EDIT_BODY - MANAGE_INVITES - REMOVE_MEMBER - EDIT_MEMBER - DELETE_PROJECT - VIEW_ANALYTICS - VIEW_PAYOUTS 
  Object? permissions;

  /// The split of payouts going to this user. The proportion of payouts they get is their split divided by the sum of the splits of all members.
  Object? payoutsSplit;

  /// The order of the team member.
  Object? ordering;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModifyTeamMemberRequest &&
     other.role == role &&
     other.permissions == permissions &&
     other.payoutsSplit == payoutsSplit &&
     other.ordering == ordering;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (role == null ? 0 : role!.hashCode) +
    (permissions == null ? 0 : permissions!.hashCode) +
    (payoutsSplit == null ? 0 : payoutsSplit!.hashCode) +
    (ordering == null ? 0 : ordering!.hashCode);

  @override
  String toString() => 'ModifyTeamMemberRequest[role=$role, permissions=$permissions, payoutsSplit=$payoutsSplit, ordering=$ordering]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.permissions != null) {
      json[r'permissions'] = this.permissions;
    } else {
      json[r'permissions'] = null;
    }
    if (this.payoutsSplit != null) {
      json[r'payouts_split'] = this.payoutsSplit;
    } else {
      json[r'payouts_split'] = null;
    }
    if (this.ordering != null) {
      json[r'ordering'] = this.ordering;
    } else {
      json[r'ordering'] = null;
    }
    return json;
  }

  /// Returns a new [ModifyTeamMemberRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModifyTeamMemberRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModifyTeamMemberRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModifyTeamMemberRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModifyTeamMemberRequest(
        role: mapValueOfType<Object>(json, r'role'),
        permissions: mapValueOfType<Object>(json, r'permissions'),
        payoutsSplit: mapValueOfType<Object>(json, r'payouts_split'),
        ordering: mapValueOfType<Object>(json, r'ordering'),
      );
    }
    return null;
  }

  static List<ModifyTeamMemberRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModifyTeamMemberRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModifyTeamMemberRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModifyTeamMemberRequest> mapFromJson(dynamic json) {
    final map = <String, ModifyTeamMemberRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModifyTeamMemberRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModifyTeamMemberRequest-objects as value to a dart map
  static Map<String, List<ModifyTeamMemberRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModifyTeamMemberRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModifyTeamMemberRequest.listFromJson(entry.value, growable: growable,);
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

