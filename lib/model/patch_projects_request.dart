//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchProjectsRequest {
  /// Returns a new [PatchProjectsRequest] instance.
  PatchProjectsRequest({
    this.categories,
    this.addCategories,
    this.removeCategories,
    this.additionalCategories,
    this.addAdditionalCategories,
    this.removeAdditionalCategories,
    this.donationUrls,
    this.addDonationUrls,
    this.removeDonationUrls,
    this.issuesUrl,
    this.sourceUrl,
    this.wikiUrl,
    this.discordUrl,
  });

  /// Set all of the categories to the categories specified here
  Object? categories;

  /// Add all of the categories specified here
  Object? addCategories;

  /// Remove all of the categories specified here
  Object? removeCategories;

  /// Set all of the additional categories to the categories specified here
  Object? additionalCategories;

  /// Add all of the additional categories specified here
  Object? addAdditionalCategories;

  /// Remove all of the additional categories specified here
  Object? removeAdditionalCategories;

  /// Set all of the donation links to the donation links specified here
  Object? donationUrls;

  /// Add all of the donation links specified here
  Object? addDonationUrls;

  /// Remove all of the donation links specified here
  Object? removeDonationUrls;

  /// An optional link to where to submit bugs or issues with the projects
  Object? issuesUrl;

  /// An optional link to the source code of the projects
  Object? sourceUrl;

  /// An optional link to the projects' wiki page or other relevant information
  Object? wikiUrl;

  /// An optional invite link to the projects' discord
  Object? discordUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchProjectsRequest &&
     other.categories == categories &&
     other.addCategories == addCategories &&
     other.removeCategories == removeCategories &&
     other.additionalCategories == additionalCategories &&
     other.addAdditionalCategories == addAdditionalCategories &&
     other.removeAdditionalCategories == removeAdditionalCategories &&
     other.donationUrls == donationUrls &&
     other.addDonationUrls == addDonationUrls &&
     other.removeDonationUrls == removeDonationUrls &&
     other.issuesUrl == issuesUrl &&
     other.sourceUrl == sourceUrl &&
     other.wikiUrl == wikiUrl &&
     other.discordUrl == discordUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (categories == null ? 0 : categories!.hashCode) +
    (addCategories == null ? 0 : addCategories!.hashCode) +
    (removeCategories == null ? 0 : removeCategories!.hashCode) +
    (additionalCategories == null ? 0 : additionalCategories!.hashCode) +
    (addAdditionalCategories == null ? 0 : addAdditionalCategories!.hashCode) +
    (removeAdditionalCategories == null ? 0 : removeAdditionalCategories!.hashCode) +
    (donationUrls == null ? 0 : donationUrls!.hashCode) +
    (addDonationUrls == null ? 0 : addDonationUrls!.hashCode) +
    (removeDonationUrls == null ? 0 : removeDonationUrls!.hashCode) +
    (issuesUrl == null ? 0 : issuesUrl!.hashCode) +
    (sourceUrl == null ? 0 : sourceUrl!.hashCode) +
    (wikiUrl == null ? 0 : wikiUrl!.hashCode) +
    (discordUrl == null ? 0 : discordUrl!.hashCode);

  @override
  String toString() => 'PatchProjectsRequest[categories=$categories, addCategories=$addCategories, removeCategories=$removeCategories, additionalCategories=$additionalCategories, addAdditionalCategories=$addAdditionalCategories, removeAdditionalCategories=$removeAdditionalCategories, donationUrls=$donationUrls, addDonationUrls=$addDonationUrls, removeDonationUrls=$removeDonationUrls, issuesUrl=$issuesUrl, sourceUrl=$sourceUrl, wikiUrl=$wikiUrl, discordUrl=$discordUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.categories != null) {
      json[r'categories'] = this.categories;
    } else {
      json[r'categories'] = null;
    }
    if (this.addCategories != null) {
      json[r'add_categories'] = this.addCategories;
    } else {
      json[r'add_categories'] = null;
    }
    if (this.removeCategories != null) {
      json[r'remove_categories'] = this.removeCategories;
    } else {
      json[r'remove_categories'] = null;
    }
    if (this.additionalCategories != null) {
      json[r'additional_categories'] = this.additionalCategories;
    } else {
      json[r'additional_categories'] = null;
    }
    if (this.addAdditionalCategories != null) {
      json[r'add_additional_categories'] = this.addAdditionalCategories;
    } else {
      json[r'add_additional_categories'] = null;
    }
    if (this.removeAdditionalCategories != null) {
      json[r'remove_additional_categories'] = this.removeAdditionalCategories;
    } else {
      json[r'remove_additional_categories'] = null;
    }
    if (this.donationUrls != null) {
      json[r'donation_urls'] = this.donationUrls;
    } else {
      json[r'donation_urls'] = null;
    }
    if (this.addDonationUrls != null) {
      json[r'add_donation_urls'] = this.addDonationUrls;
    } else {
      json[r'add_donation_urls'] = null;
    }
    if (this.removeDonationUrls != null) {
      json[r'remove_donation_urls'] = this.removeDonationUrls;
    } else {
      json[r'remove_donation_urls'] = null;
    }
    if (this.issuesUrl != null) {
      json[r'issues_url'] = this.issuesUrl;
    } else {
      json[r'issues_url'] = null;
    }
    if (this.sourceUrl != null) {
      json[r'source_url'] = this.sourceUrl;
    } else {
      json[r'source_url'] = null;
    }
    if (this.wikiUrl != null) {
      json[r'wiki_url'] = this.wikiUrl;
    } else {
      json[r'wiki_url'] = null;
    }
    if (this.discordUrl != null) {
      json[r'discord_url'] = this.discordUrl;
    } else {
      json[r'discord_url'] = null;
    }
    return json;
  }

  /// Returns a new [PatchProjectsRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchProjectsRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchProjectsRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchProjectsRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PatchProjectsRequest(
        categories: mapValueOfType<Object>(json, r'categories'),
        addCategories: mapValueOfType<Object>(json, r'add_categories'),
        removeCategories: mapValueOfType<Object>(json, r'remove_categories'),
        additionalCategories: mapValueOfType<Object>(json, r'additional_categories'),
        addAdditionalCategories: mapValueOfType<Object>(json, r'add_additional_categories'),
        removeAdditionalCategories: mapValueOfType<Object>(json, r'remove_additional_categories'),
        donationUrls: mapValueOfType<Object>(json, r'donation_urls'),
        addDonationUrls: mapValueOfType<Object>(json, r'add_donation_urls'),
        removeDonationUrls: mapValueOfType<Object>(json, r'remove_donation_urls'),
        issuesUrl: mapValueOfType<Object>(json, r'issues_url'),
        sourceUrl: mapValueOfType<Object>(json, r'source_url'),
        wikiUrl: mapValueOfType<Object>(json, r'wiki_url'),
        discordUrl: mapValueOfType<Object>(json, r'discord_url'),
      );
    }
    return null;
  }

  static List<PatchProjectsRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchProjectsRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchProjectsRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchProjectsRequest> mapFromJson(dynamic json) {
    final map = <String, PatchProjectsRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchProjectsRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchProjectsRequest-objects as value to a dart map
  static Map<String, List<PatchProjectsRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchProjectsRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchProjectsRequest.listFromJson(entry.value, growable: growable,);
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

