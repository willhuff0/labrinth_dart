# openapi.api.VersionsApi

## Load the API package
```dart
import 'package:labrinth/api.dart';
```

All URIs are relative to *https://api.modrinth.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addFilesToVersion**](VersionsApi.md#addfilestoversion) | **POST** /version/{id}/file | Add files to version
[**createVersion**](VersionsApi.md#createversion) | **POST** /version | Create a version
[**deleteVersion**](VersionsApi.md#deleteversion) | **DELETE** /version/{id} | Delete a version
[**getProjectVersions**](VersionsApi.md#getprojectversions) | **GET** /project/{id|slug}/version | List project's versions
[**getVersion**](VersionsApi.md#getversion) | **GET** /version/{id} | Get a version
[**getVersions**](VersionsApi.md#getversions) | **GET** /versions | Get multiple versions
[**modifyVersion**](VersionsApi.md#modifyversion) | **PATCH** /version/{id} | Modify a version
[**scheduleVersion**](VersionsApi.md#scheduleversion) | **POST** /version/{id}/schedule | Schedule a version


# **addFilesToVersion**
> addFilesToVersion(id, data)

Add files to version

Project files are attached. `.mrpack` and `.jar` files are accepted.

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = VersionsApi();
final id = [IIJJKKLL]; // Object | The ID of the version
final data = ; // Object | 

try {
    api_instance.addFilesToVersion(id, data);
} catch (e) {
    print('Exception when calling VersionsApi->addFilesToVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**Object**](.md)| The ID of the version | 
 **data** | [**Object**](Object.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createVersion**
> Object createVersion(data)

Create a version

Project files are attached. `.mrpack` and `.jar` files are accepted.

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = VersionsApi();
final data = ; // Object | 

try {
    final result = api_instance.createVersion(data);
    print(result);
} catch (e) {
    print('Exception when calling VersionsApi->createVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Object**](Object.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteVersion**
> deleteVersion(id)

Delete a version

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = VersionsApi();
final id = [IIJJKKLL]; // Object | The ID of the version

try {
    api_instance.deleteVersion(id);
} catch (e) {
    print('Exception when calling VersionsApi->deleteVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**Object**](.md)| The ID of the version | 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectVersions**
> Object getProjectVersions(idPipeSlug, loaders, gameVersions, featured)

List project's versions

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = VersionsApi();
final idPipeSlug = [AABBCCDD, my_project]; // Object | The ID or slug of the project
final loaders = ["fabric"]; // Object | The types of loaders to filter for
final gameVersions = ["1.18.1"]; // Object | The game versions to filter for
final featured = ; // Object | Allows to filter for featured or non-featured versions only

try {
    final result = api_instance.getProjectVersions(idPipeSlug, loaders, gameVersions, featured);
    print(result);
} catch (e) {
    print('Exception when calling VersionsApi->getProjectVersions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idPipeSlug** | [**Object**](.md)| The ID or slug of the project | 
 **loaders** | [**Object**](.md)| The types of loaders to filter for | [optional] 
 **gameVersions** | [**Object**](.md)| The game versions to filter for | [optional] 
 **featured** | [**Object**](.md)| Allows to filter for featured or non-featured versions only | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVersion**
> Object getVersion(id)

Get a version

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = VersionsApi();
final id = ["IIJJKKLL"]; // Object | The ID of the version

try {
    final result = api_instance.getVersion(id);
    print(result);
} catch (e) {
    print('Exception when calling VersionsApi->getVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**Object**](.md)| The ID of the version | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVersions**
> Object getVersions(ids)

Get multiple versions

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = VersionsApi();
final ids = ["AABBCCDD", "EEFFGGHH"]; // Object | The IDs of the versions

try {
    final result = api_instance.getVersions(ids);
    print(result);
} catch (e) {
    print('Exception when calling VersionsApi->getVersions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**Object**](.md)| The IDs of the versions | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyVersion**
> modifyVersion(id, body)

Modify a version

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = VersionsApi();
final id = [IIJJKKLL]; // Object | The ID of the version
final body = Object(); // Object | Modified version fields

try {
    api_instance.modifyVersion(id, body);
} catch (e) {
    print('Exception when calling VersionsApi->modifyVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**Object**](.md)| The ID of the version | 
 **body** | **Object**| Modified version fields | [optional] 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scheduleVersion**
> scheduleVersion(id, scheduleVersionRequest)

Schedule a version

### Example
```dart
import 'package:labrinth/api.dart';
// TODO Configure API key authorization: TokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('TokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = VersionsApi();
final id = [IIJJKKLL]; // Object | The ID of the version
final scheduleVersionRequest = ScheduleVersionRequest(); // ScheduleVersionRequest | Information about date and requested status

try {
    api_instance.scheduleVersion(id, scheduleVersionRequest);
} catch (e) {
    print('Exception when calling VersionsApi->scheduleVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**Object**](.md)| The ID of the version | 
 **scheduleVersionRequest** | [**ScheduleVersionRequest**](ScheduleVersionRequest.md)| Information about date and requested status | [optional] 

### Return type

void (empty response body)

### Authorization

[TokenAuth](../README.md#TokenAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

