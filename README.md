# Terraform script to create a VPC and Autoscaling Infrastructure


```
WARNING: 
```

## Usange
Examplo of the use: creating an aws account as member of the a AWS Organizations

```hcl
teste


```


## Requirements
| Name | Version |
| ---- | ------- |
| aws | ~> 3.* |
| terraform | ~> 0.14 |

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Variables Inputs
| Name | Description | Required | Type | Default |
| ---- | ----------- | -------- | ---- | ------- |
| account_name | The name of the new aws account that will be created. | `yes` | `string` | ` ` |
| account_email | The account email of the new aws account. | `yes` | `string` | ` ` |
| assume_role_name | The name of an IAM role that Organizations automatically preconfigures in the new member account. | `yes` | `string` | `OrganizationAccountAccessRole` |
| organizational_unit_name | The name of the specific Organizations Unit that will be assigned to the new account. | `yes` | `string` | ` ` |
| enable_user_access_to_billing | Enables IAM users to access account billing information if they have the required permissions. Value valid `ALLOW` and `DENY`. | `yes` | `string` | `DENY` |
| sso_group_name | A list of groups has SSO access to accounts. | `no` | `list` | `[ ]` |
| sso_permission_set_name | A list of permission set names has SSO access to accounts. | `no` | `list` | `[ ]` |

## Variable Outputs
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
| Name | Description |
| ---- | ----------- |
| account_id | The AWS account id |
| account_arn | The ARN for this account. |
