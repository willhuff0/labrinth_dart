//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/default_api.dart';
part 'api/misc_api.dart';
part 'api/projects_api.dart';
part 'api/tags_api.dart';
part 'api/teams_api.dart';
part 'api/users_api.dart';
part 'api/version_files_api.dart';
part 'api/versions_api.dart';

part 'model/add_team_member_request.dart';
part 'model/auth_error.dart';
part 'model/base_project.dart';
part 'model/base_version.dart';
part 'model/category_tag.dart';
part 'model/check_project_validity200_response.dart';
part 'model/creatable_report.dart';
part 'model/delete_project401_response.dart';
part 'model/donation_platform_tag.dart';
part 'model/editable_user.dart';
part 'model/game_version_tag.dart';
part 'model/get_dependencies200_response.dart';
part 'model/get_latest_version_from_hash_request.dart';
part 'model/get_latest_versions_from_hashes_request.dart';
part 'model/get_payout_history200_response.dart';
part 'model/invalid_input_error.dart';
part 'model/license_tag.dart';
part 'model/loader_tag.dart';
part 'model/modify_team_member_request.dart';
part 'model/modify_user_request.dart';
part 'model/modify_user_request_payout_data.dart';
part 'model/notification.dart';
part 'model/patch_projects_request.dart';
part 'model/project_dependency_list.dart';
part 'model/schedule_project_request.dart';
part 'model/schedule_version_request.dart';
part 'model/search_projects200_response.dart';
part 'model/search_projects400_response.dart';
part 'model/search_results.dart';
part 'model/statistics200_response.dart';
part 'model/submit_report_request.dart';
part 'model/team_member.dart';
part 'model/versions_from_hashes200_response.dart';
part 'model/versions_from_hashes_request.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
