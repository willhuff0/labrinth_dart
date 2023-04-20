//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TeamsApi {
  TeamsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a user to a team
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the team
  ///
  /// * [AddTeamMemberRequest] addTeamMemberRequest:
  ///   User to be added (must be the ID, usernames cannot be used here)
  Future<Response> addTeamMemberWithHttpInfo(Object id, { AddTeamMemberRequest? addTeamMemberRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/team/{id}/members'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = addTeamMemberRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Add a user to a team
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the team
  ///
  /// * [AddTeamMemberRequest] addTeamMemberRequest:
  ///   User to be added (must be the ID, usernames cannot be used here)
  Future<void> addTeamMember(Object id, { AddTeamMemberRequest? addTeamMemberRequest, }) async {
    final response = await addTeamMemberWithHttpInfo(id,  addTeamMemberRequest: addTeamMemberRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Remove a member from a team
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the team
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  Future<Response> deleteTeamMemberWithHttpInfo(Object id, Object idPipeUsername,) async {
    // ignore: prefer_const_declarations
    final path = r'/team/{team_id}/members/{user_id}'
      .replaceAll('{id}', id.toString())
      .replaceAll('{id|username}', idPipeUsername.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Remove a member from a team
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the team
  ///
  /// * [Object] idPipeUsername (required):
  ///   The ID or username of the user
  Future<void> deleteTeamMember(Object id, Object idPipeUsername,) async {
    final response = await deleteTeamMemberWithHttpInfo(id, idPipeUsername,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a project's team members
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  Future<Response> getProjectTeamMembersWithHttpInfo(Object idPipeSlug,) async {
    // ignore: prefer_const_declarations
    final path = r'/project/{id|slug}/members'
      .replaceAll('{id|slug}', idPipeSlug.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a project's team members
  ///
  /// Parameters:
  ///
  /// * [Object] idPipeSlug (required):
  ///   The ID or slug of the project
  Future<Object?> getProjectTeamMembers(Object idPipeSlug,) async {
    final response = await getProjectTeamMembersWithHttpInfo(idPipeSlug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Get a team's members
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the team
  Future<Response> getTeamMembersWithHttpInfo(Object id,) async {
    // ignore: prefer_const_declarations
    final path = r'/team/{id}/members'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a team's members
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the team
  Future<Object?> getTeamMembers(Object id,) async {
    final response = await getTeamMembersWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Get the members of multiple teams
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] ids (required):
  ///   The IDs of the teams
  Future<Response> getTeamsWithHttpInfo(Object ids,) async {
    // ignore: prefer_const_declarations
    final path = r'/teams';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'ids', ids));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get the members of multiple teams
  ///
  /// Parameters:
  ///
  /// * [Object] ids (required):
  ///   The IDs of the teams
  Future<Object?> getTeams(Object ids,) async {
    final response = await getTeamsWithHttpInfo(ids,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Join a team
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the team
  Future<Response> joinTeamWithHttpInfo(Object id,) async {
    // ignore: prefer_const_declarations
    final path = r'/team/{id}/join'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Join a team
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the team
  Future<void> joinTeam(Object id,) async {
    final response = await joinTeamWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Modify a team member's information
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the team
  ///
  /// * [Object] userId (required):
  ///   The ID of the user to modify
  ///
  /// * [ModifyTeamMemberRequest] modifyTeamMemberRequest:
  ///   Contents to be modified
  Future<Response> modifyTeamMemberWithHttpInfo(Object id, Object userId, { ModifyTeamMemberRequest? modifyTeamMemberRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/team/{team_id}/members/{user_id}'
      .replaceAll('{id}', id.toString())
      .replaceAll('{user_id}', userId.toString());

    // ignore: prefer_final_locals
    Object? postBody = modifyTeamMemberRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Modify a team member's information
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the team
  ///
  /// * [Object] userId (required):
  ///   The ID of the user to modify
  ///
  /// * [ModifyTeamMemberRequest] modifyTeamMemberRequest:
  ///   Contents to be modified
  Future<void> modifyTeamMember(Object id, Object userId, { ModifyTeamMemberRequest? modifyTeamMemberRequest, }) async {
    final response = await modifyTeamMemberWithHttpInfo(id, userId,  modifyTeamMemberRequest: modifyTeamMemberRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Transfer team's ownership to another user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the team
  ///
  /// * [AddTeamMemberRequest] addTeamMemberRequest:
  ///   New owner's ID
  Future<Response> transferTeamOwnershipWithHttpInfo(Object id, { AddTeamMemberRequest? addTeamMemberRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/team/{id}/owner'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody = addTeamMemberRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Transfer team's ownership to another user
  ///
  /// Parameters:
  ///
  /// * [Object] id (required):
  ///   The ID of the team
  ///
  /// * [AddTeamMemberRequest] addTeamMemberRequest:
  ///   New owner's ID
  Future<void> transferTeamOwnership(Object id, { AddTeamMemberRequest? addTeamMemberRequest, }) async {
    final response = await transferTeamOwnershipWithHttpInfo(id,  addTeamMemberRequest: addTeamMemberRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
