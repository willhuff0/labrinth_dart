//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TeamMember {
  /// Returns a new [TeamMember] instance.
  TeamMember({
    required this.teamId,
    required this.user,
    required this.role,
    this.permissions,
    required this.accepted,
    this.payoutsSplit,
    this.ordering,
  });

  /// The ID of the team this team member is a member of
  Object? teamId;

  Object? user;

  /// The user's role on the team
  Object? role;

  /// The user's permissions in bitfield format (requires authorization to view)  In order from first to tenth bit, the bits are: - UPLOAD_VERSION - DELETE_VERSION - EDIT_DETAILS - EDIT_BODY - MANAGE_INVITES - REMOVE_MEMBER - EDIT_MEMBER - DELETE_PROJECT - VIEW_ANALYTICS - VIEW_PAYOUTS 
  Object? permissions;

  /// Whether or not the user has accepted to be on the team (requires authorization to view)
  Object? accepted;

  /// The split of payouts going to this user. The proportion of payouts they get is their split divided by the sum of the splits of all members.
  Object? payoutsSplit;

  /// The order of the team member.
  Object? ordering;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TeamMember &&
     other.teamId == teamId &&
     other.user == user &&
     other.role == role &&
     other.permissions == permissions &&
     other.accepted == accepted &&
     other.payoutsSplit == payoutsSplit &&
     other.ordering == ordering;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (teamId == null ? 0 : teamId!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (permissions == null ? 0 : permissions!.hashCode) +
    (accepted == null ? 0 : accepted!.hashCode) +
    (payoutsSplit == null ? 0 : payoutsSplit!.hashCode) +
    (ordering == null ? 0 : ordering!.hashCode);

  @override
  String toString() => 'TeamMember[teamId=$teamId, user=$user, role=$role, permissions=$permissions, accepted=$accepted, payoutsSplit=$payoutsSplit, ordering=$ordering]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.teamId != null) {
      json[r'team_id'] = this.teamId;
    } else {
      json[r'team_id'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
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
    if (this.accepted != null) {
      json[r'accepted'] = this.accepted;
    } else {
      json[r'accepted'] = null;
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

  /// Returns a new [TeamMember] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TeamMember? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TeamMember[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TeamMember[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TeamMember(
        teamId: mapValueOfType<Object>(json, r'team_id'),
        user: mapValueOfType<Object>(json, r'user'),
        role: mapValueOfType<Object>(json, r'role'),
        permissions: mapValueOfType<Object>(json, r'permissions'),
        accepted: mapValueOfType<Object>(json, r'accepted'),
        payoutsSplit: mapValueOfType<Object>(json, r'payouts_split'),
        ordering: mapValueOfType<Object>(json, r'ordering'),
      );
    }
    return null;
  }

  static List<TeamMember>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TeamMember>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TeamMember.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TeamMember> mapFromJson(dynamic json) {
    final map = <String, TeamMember>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TeamMember.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TeamMember-objects as value to a dart map
  static Map<String, List<TeamMember>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TeamMember>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TeamMember.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'team_id',
    'user',
    'role',
    'accepted',
  };
}

