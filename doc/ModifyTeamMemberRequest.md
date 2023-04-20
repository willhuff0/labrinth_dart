# openapi.model.ModifyTeamMemberRequest

## Load the model package
```dart
import 'package:labrinth/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**role** | [**Object**](.md) |  | [optional] 
**permissions** | [**Object**](.md) | The user's permissions in bitfield format  In order from first to tenth bit, the bits are: - UPLOAD_VERSION - DELETE_VERSION - EDIT_DETAILS - EDIT_BODY - MANAGE_INVITES - REMOVE_MEMBER - EDIT_MEMBER - DELETE_PROJECT - VIEW_ANALYTICS - VIEW_PAYOUTS  | [optional] 
**payoutsSplit** | [**Object**](.md) | The split of payouts going to this user. The proportion of payouts they get is their split divided by the sum of the splits of all members. | [optional] 
**ordering** | [**Object**](.md) | The order of the team member. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


