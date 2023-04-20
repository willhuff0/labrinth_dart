//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EditableUser {
  /// Returns a new [EditableUser] instance.
  EditableUser({
    required this.username,
    this.name,
    this.email,
    this.bio,
    this.payoutData,
  });

  /// The user's username
  Object? username;

  /// The user's display name
  Object? name;

  /// The user's email (only your own is ever displayed)
  Object? email;

  /// A description of the user
  Object? bio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ModifyUserRequestPayoutData? payoutData;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EditableUser &&
     other.username == username &&
     other.name == name &&
     other.email == email &&
     other.bio == bio &&
     other.payoutData == payoutData;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (username == null ? 0 : username!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (bio == null ? 0 : bio!.hashCode) +
    (payoutData == null ? 0 : payoutData!.hashCode);

  @override
  String toString() => 'EditableUser[username=$username, name=$name, email=$email, bio=$bio, payoutData=$payoutData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.bio != null) {
      json[r'bio'] = this.bio;
    } else {
      json[r'bio'] = null;
    }
    if (this.payoutData != null) {
      json[r'payout_data'] = this.payoutData;
    } else {
      json[r'payout_data'] = null;
    }
    return json;
  }

  /// Returns a new [EditableUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EditableUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EditableUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EditableUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EditableUser(
        username: mapValueOfType<Object>(json, r'username'),
        name: mapValueOfType<Object>(json, r'name'),
        email: mapValueOfType<Object>(json, r'email'),
        bio: mapValueOfType<Object>(json, r'bio'),
        payoutData: ModifyUserRequestPayoutData.fromJson(json[r'payout_data']),
      );
    }
    return null;
  }

  static List<EditableUser>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EditableUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EditableUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EditableUser> mapFromJson(dynamic json) {
    final map = <String, EditableUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EditableUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EditableUser-objects as value to a dart map
  static Map<String, List<EditableUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EditableUser>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EditableUser.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'username',
  };
}

