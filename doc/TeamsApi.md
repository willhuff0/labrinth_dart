# openapi.api.TeamsApi

## Load the API package
```dart
import 'package:labrinth/api.dart';
```

All URIs are relative to *https://api.modrinth.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTeamMember**](TeamsApi.md#addteammember) | **POST** /team/{id}/members | Add a user to a team
[**deleteTeamMember**](TeamsApi.md#deleteteammember) | **DELETE** /team/{team_id}/members/{user_id} | Remove a member from a team
[**getProjectTeamMembers**](TeamsApi.md#getprojectteammembers) | **GET** /project/{id|slug}/members | Get a project's team members
[**getTeamMembers**](TeamsApi.md#getteammembers) | **GET** /team/{id}/members | Get a team's members
[**getTeams**](TeamsApi.md#getteams) | **GET** /teams | Get the members of multiple teams
[**joinTeam**](TeamsApi.md#jointeam) | **POST** /team/{id}/join | Join a team
[**modifyTeamMember**](TeamsApi.md#modifyteammember) | **PATCH** /team/{team_id}/members/{user_id} | Modify a team member's information
[**transferTeamOwnership**](TeamsApi.md#transferteamownership) | **PATCH** /team/{id}/owner | Transfer team's ownership to another user


# **addTeamMember**
> addTeamMember(id, addTeamMemberRequest)

Add a user to a team

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final id = [MMNNOOPP]; // Object | The ID of the team
final addTeamMemberRequest = AddTeamMemberRequest(); // AddTeamMemberRequest | User to be added (must be the ID, usernames cannot be used here)

try {
    api_instance.addTeamMember(id, addTeamMemberRequest);
} catch (e) {
    print('Exception when calling TeamsApi->addTeamMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**Object**](.md)| The ID of the team | 
 **addTeamMemberRequest** | [**AddTeamMemberRequest**](AddTeamMemberRequest.md)| User to be added (must be the ID, usernames cannot be used here) | [optional] 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTeamMember**
> deleteTeamMember(id, idPipeUsername)

Remove a member from a team

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final id = [MMNNOOPP]; // Object | The ID of the team
final idPipeUsername = [EEFFGGHH, my_user]; // Object | The ID or username of the user

try {
    api_instance.deleteTeamMember(id, idPipeUsername);
} catch (e) {
    print('Exception when calling TeamsApi->deleteTeamMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**Object**](.md)| The ID of the team | 
 **idPipeUsername** | [**Object**](.md)| The ID or username of the user | 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectTeamMembers**
> Object getProjectTeamMembers(idPipeSlug)

Get a project's team members

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = TeamsApi();
final idPipeSlug = [AABBCCDD, my_project]; // Object | The ID or slug of the project

try {
    final result = api_instance.getProjectTeamMembers(idPipeSlug);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->getProjectTeamMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeSlug** | [**Object**](.md)| The ID or slug of the project | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeamMembers**
> Object getTeamMembers(id)

Get a team's members

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final id = ["MMNNOOPP"]; // Object | The ID of the team

try {
    final result = api_instance.getTeamMembers(id);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->getTeamMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**Object**](.md)| The ID of the team | 

### Return type

[**Object**](Object.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTeams**
> Object getTeams(ids)

Get the members of multiple teams

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = TeamsApi();
final ids = ["AABBCCDD", "EEFFGGHH"]; // Object | The IDs of the teams

try {
    final result = api_instance.getTeams(ids);
    print(result);
} catch (e) {
    print('Exception when calling TeamsApi->getTeams: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**Object**](.md)| The IDs of the teams | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **joinTeam**
> joinTeam(id)

Join a team

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final id = [MMNNOOPP]; // Object | The ID of the team

try {
    api_instance.joinTeam(id);
} catch (e) {
    print('Exception when calling TeamsApi->joinTeam: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**Object**](.md)| The ID of the team | 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyTeamMember**
> modifyTeamMember(id, userId, modifyTeamMemberRequest)

Modify a team member's information

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final id = [MMNNOOPP]; // Object | The ID of the team
final userId = ; // Object | The ID of the user to modify
final modifyTeamMemberRequest = ModifyTeamMemberRequest(); // ModifyTeamMemberRequest | Contents to be modified

try {
    api_instance.modifyTeamMember(id, userId, modifyTeamMemberRequest);
} catch (e) {
    print('Exception when calling TeamsApi->modifyTeamMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**Object**](.md)| The ID of the team | 
 **userId** | [**Object**](.md)| The ID of the user to modify | 
 **modifyTeamMemberRequest** | [**ModifyTeamMemberRequest**](ModifyTeamMemberRequest.md)| Contents to be modified | [optional] 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transferTeamOwnership**
> transferTeamOwnership(id, addTeamMemberRequest)

Transfer team's ownership to another user

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = TeamsApi();
final id = [MMNNOOPP]; // Object | The ID of the team
final addTeamMemberRequest = AddTeamMemberRequest(); // AddTeamMemberRequest | New owner's ID

try {
    api_instance.transferTeamOwnership(id, addTeamMemberRequest);
} catch (e) {
    print('Exception when calling TeamsApi->transferTeamOwnership: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**Object**](.md)| The ID of the team | 
 **addTeamMemberRequest** | [**AddTeamMemberRequest**](AddTeamMemberRequest.md)| New owner's ID | [optional] 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

