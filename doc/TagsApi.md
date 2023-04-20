# openapi.api.TagsApi

## Load the API package
```dart
import 'package:labrinth/api.dart';
```

All URIs are relative to *https://api.modrinth.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**categoryList**](TagsApi.md#categorylist) | **GET** /tag/category | Get a list of categories
[**donationPlatformList**](TagsApi.md#donationplatformlist) | **GET** /tag/donation_platform | Get a list of donation platforms
[**licenseList**](TagsApi.md#licenselist) | **GET** /tag/license | Get a list of licenses
[**loaderList**](TagsApi.md#loaderlist) | **GET** /tag/loader | Get a list of loaders
[**reportTypeList**](TagsApi.md#reporttypelist) | **GET** /tag/report_type | Get a list of report types
[**versionList**](TagsApi.md#versionlist) | **GET** /tag/game_version | Get a list of game versions


# **categoryList**
> Object categoryList()

Get a list of categories

Gets an array of categories, their icons, and applicable project types

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = TagsApi();

try {
    final result = api_instance.categoryList();
    print(result);
} catch (e) {
    print('Exception when calling TagsApi->categoryList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **donationPlatformList**
> Object donationPlatformList()

Get a list of donation platforms

Gets an array of donation platforms and information about them

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = TagsApi();

try {
    final result = api_instance.donationPlatformList();
    print(result);
} catch (e) {
    print('Exception when calling TagsApi->donationPlatformList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **licenseList**
> Object licenseList()

Get a list of licenses

Gets an array of licenses and information about them

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = TagsApi();

try {
    final result = api_instance.licenseList();
    print(result);
} catch (e) {
    print('Exception when calling TagsApi->licenseList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loaderList**
> Object loaderList()

Get a list of loaders

Gets an array of loaders, their icons, and supported project types

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = TagsApi();

try {
    final result = api_instance.loaderList();
    print(result);
} catch (e) {
    print('Exception when calling TagsApi->loaderList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportTypeList**
> Object reportTypeList()

Get a list of report types

Gets an array of valid report types

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = TagsApi();

try {
    final result = api_instance.reportTypeList();
    print(result);
} catch (e) {
    print('Exception when calling TagsApi->reportTypeList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **versionList**
> Object versionList()

Get a list of game versions

Gets an array of game versions and information about them

### Example
```dart
import 'package:labrinth/api.dart';

final api_instance = TagsApi();

try {
    final result = api_instance.versionList();
    print(result);
} catch (e) {
    print('Exception when calling TagsApi->versionList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

