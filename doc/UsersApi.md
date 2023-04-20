# openapi.api.UsersApi

## Load the API package
```dart
import 'package:labrinth/api.dart';
```

All URIs are relative to *https://api.modrinth.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeUserIcon**](UsersApi.md#changeusericon) | **PATCH** /user/{id|username}/icon | Change user's avatar
[**deleteUser**](UsersApi.md#deleteuser) | **DELETE** /user/{id|username} | Delete a user
[**getFollowedProjects**](UsersApi.md#getfollowedprojects) | **GET** /user/{id|username}/follows | Get user's followed projects
[**getNotifications**](UsersApi.md#getnotifications) | **GET** /user/{id|username}/notifications | Get user's notifications
[**getPayoutHistory**](UsersApi.md#getpayouthistory) | **GET** /user/{id|username}/payouts | Get user's payout history
[**getUser**](UsersApi.md#getuser) | **GET** /user/{id|username} | Get a user
[**getUserFromAuth**](UsersApi.md#getuserfromauth) | **GET** /user | Get user from authorization header
[**getUserProjects**](UsersApi.md#getuserprojects) | **GET** /user/{id|username}/projects | Get user's projects
[**getUsers**](UsersApi.md#getusers) | **GET** /users | Get multiple users
[**modifyUser**](UsersApi.md#modifyuser) | **PATCH** /user/{id|username} | Modify a user
[**withdrawPayout**](UsersApi.md#withdrawpayout) | **POST** /user/{id|username}/payouts | Withdraw payout balance to PayPal or Venmo


# **changeUserIcon**
> changeUserIcon(idPipeUsername)

Change user's avatar

By default, Modrinth uses a user's GitHub icon. This route allows it to be changed to a custom one. The new avatar may be up to 2MiB in size.

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final idPipeUsername = [EEFFGGHH, my_user]; // Object | The ID or username of the user

try {
    api_instance.changeUserIcon(idPipeUsername);
} catch (e) {
    print('Exception when calling UsersApi->changeUserIcon: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeUsername** | [**Object**](.md)| The ID or username of the user | 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> deleteUser(idPipeUsername)

Delete a user

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final idPipeUsername = [EEFFGGHH, my_user]; // Object | The ID or username of the user

try {
    api_instance.deleteUser(idPipeUsername);
} catch (e) {
    print('Exception when calling UsersApi->deleteUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeUsername** | [**Object**](.md)| The ID or username of the user | 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFollowedProjects**
> Object getFollowedProjects(idPipeUsername)

Get user's followed projects

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final idPipeUsername = [EEFFGGHH, my_user]; // Object | The ID or username of the user

try {
    final result = api_instance.getFollowedProjects(idPipeUsername);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getFollowedProjects: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeUsername** | [**Object**](.md)| The ID or username of the user | 

### Return type

[**Object**](Object.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotifications**
> Object getNotifications(idPipeUsername)

Get user's notifications

Notifications can be project updates or team invites

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final idPipeUsername = [EEFFGGHH, my_user]; // Object | The ID or username of the user

try {
    final result = api_instance.getNotifications(idPipeUsername);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getNotifications: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeUsername** | [**Object**](.md)| The ID or username of the user | 

### Return type

[**Object**](Object.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPayoutHistory**
> GetPayoutHistory200Response getPayoutHistory(idPipeUsername)

Get user's payout history

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final idPipeUsername = [EEFFGGHH, my_user]; // Object | The ID or username of the user

try {
    final result = api_instance.getPayoutHistory(idPipeUsername);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getPayoutHistory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeUsername** | [**Object**](.md)| The ID or username of the user | 

### Return type

[**GetPayoutHistory200Response**](GetPayoutHistory200Response.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> Object getUser(idPipeUsername)

Get a user

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = UsersApi();
final idPipeUsername = ["EEFFGGHH","my_user"]; // Object | The ID or username of the user

try {
    final result = api_instance.getUser(idPipeUsername);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeUsername** | [**Object**](.md)| The ID or username of the user | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserFromAuth**
> Object getUserFromAuth()

Get user from authorization header

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();

try {
    final result = api_instance.getUserFromAuth();
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUserFromAuth: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserProjects**
> Object getUserProjects(idPipeUsername)

Get user's projects

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = UsersApi();
final idPipeUsername = [EEFFGGHH, my_user]; // Object | The ID or username of the user

try {
    final result = api_instance.getUserProjects(idPipeUsername);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUserProjects: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeUsername** | [**Object**](.md)| The ID or username of the user | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
> Object getUsers(ids)

Get multiple users

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = UsersApi();
final ids = ["AABBCCDD", "EEFFGGHH"]; // Object | The IDs of the users

try {
    final result = api_instance.getUsers(ids);
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->getUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**Object**](.md)| The IDs of the users | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyUser**
> modifyUser(idPipeUsername, modifyUserRequest)

Modify a user

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final idPipeUsername = [EEFFGGHH, my_user]; // Object | The ID or username of the user
final modifyUserRequest = ModifyUserRequest(); // ModifyUserRequest | Modified user fields

try {
    api_instance.modifyUser(idPipeUsername, modifyUserRequest);
} catch (e) {
    print('Exception when calling UsersApi->modifyUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeUsername** | [**Object**](.md)| The ID or username of the user | 
 **modifyUserRequest** | [**ModifyUserRequest**](ModifyUserRequest.md)| Modified user fields | [optional] 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **withdrawPayout**
> withdrawPayout(idPipeUsername, amount)

Withdraw payout balance to PayPal or Venmo

Warning: certain amounts get withheld for fees. Please do not call this API endpoint without first acknowledging the warnings on the corresponding frontend page.

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = UsersApi();
final idPipeUsername = [EEFFGGHH, my_user]; // Object | The ID or username of the user
final amount = ; // Object | Amount to withdraw

try {
    api_instance.withdrawPayout(idPipeUsername, amount);
} catch (e) {
    print('Exception when calling UsersApi->withdrawPayout: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeUsername** | [**Object**](.md)| The ID or username of the user | 
 **amount** | [**Object**](.md)| Amount to withdraw | 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

