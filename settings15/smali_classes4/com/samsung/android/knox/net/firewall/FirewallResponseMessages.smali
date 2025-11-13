.class public Lcom/samsung/android/knox/net/firewall/FirewallResponseMessages;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ADMINUID_IS_NOT_THE_OWNER:Ljava/lang/String; = "This administrator can\'t execute this operation because he is not the owner."

.field public static final CLEAR_NOT_REQUESTED:Ljava/lang/String; = "Clear was not requested for this RuleType."

.field public static final DEVICE_DOESNT_SUPPORT_IPV6:Ljava/lang/String; = "This device does not have IPv6 support for this type of rule."

.field public static final DISABLE_BEFORE_REMOVE:Ljava/lang/String; = "Disable the rule before remove it."

.field public static final DNS_MISMATCH_DATABASE:Ljava/lang/String; = "DNS(s) provided doesn\'t match DNS(s) in database."

.field public static final DOMAIN_FILTER_ON_IPTABLES_API_SUCCESSFULLY_DISABLED:Ljava/lang/String; = "The domain filter on iptables api was successfully disabled."

.field public static final DOMAIN_FILTER_ON_IPTABLES_API_SUCCESSFULLY_ENABLED:Ljava/lang/String; = "The domain filter on iptables api was successfully enabled."

.field public static final DOMAIN_REPORT_SUCCESSFULLY_DISABLED:Ljava/lang/String; = "Domain Report successfully disabled."

.field public static final DOMAIN_REPORT_SUCCESSFULLY_ENABLED:Ljava/lang/String; = "Domain Report successfully enabled."

.field public static final DOMAIN_RULE_SUCCESSFULLY_REMOVED_FROM_IPTABLES:Ljava/lang/String; = "The domain rule was successfuly removed/updated."

.field public static final FAILED_ADD_DNS_DB:Ljava/lang/String; = "Failed to add DNS(s) to database."

.field public static final FAILED_APPLY_DNS:Ljava/lang/String; = "Error occurred applying DNS(s)"

.field public static final FAILED_APPLY_INPUT_CHAIN:Ljava/lang/String; = "Rule not applied to INPUT chain for Direction.All."

.field public static final FAILED_DNS_MDM_VERSION:Ljava/lang/String; = "DNS(s) not yet supported."

.field public static final FAILED_REMOVE_DNS_DATABASE:Ljava/lang/String; = "Failed to remove DNS(s) from database."

.field public static final FAILED_TO_ADD_RULE_IN_THE_DATABASE:Ljava/lang/String; = "Failed to add/update rule in the database."

.field public static final FAILED_TO_CHANGE_DOMAIN_FILTER_ON_IPTABLES_API_STATUS_ON_DATABASE:Ljava/lang/String; = "Failed to change DomainFilterOnIptables status on database."

.field public static final FAILED_TO_CHANGE_REPORT_STATUS_ON_DATABASE:Ljava/lang/String; = "Failed to change Domain Filter report status on database."

.field public static final FAILED_TO_CLEAR_RULES_FROM_DATABASE:Ljava/lang/String; = "Failed to clear rules from database."

.field public static final FAILED_TO_DISABLE:Ljava/lang/String; = " failed to disable. Error: "

.field public static final FAILED_TO_DISABLE_DOMAIN_FILTER_ON_IPTABLES_API:Ljava/lang/String; = "Failed to disable domain filter on iptables api."

.field public static final FAILED_TO_ENABLE:Ljava/lang/String; = " failed to enable. Error: "

.field public static final FAILED_TO_ENABLE_DOMAIN_FILTER_ON_IPTABLES_API:Ljava/lang/String; = "Failed to enable domain filter on iptables api."

.field public static final FAILED_TO_ENABLE_FIREWALL_IN_THE_DATABASE:Ljava/lang/String; = "Failed to enable Firewall in the database."

.field public static final FAILED_TO_ENABLE_RULE:Ljava/lang/String; = "Failed to enable rule."

.field public static final FAILED_TO_REMOVE_DOMAIN_RULE_FROM_IPTABLES:Ljava/lang/String; = "Failed to remove domain rule from the iptables."

.field public static final FAILED_TO_REMOVE_RULE_FROM_THE_DATABASE:Ljava/lang/String; = "Failed to remove/update rule from the database."

.field public static final FAIL_TO_DISABLE_FIREWALL_IN_THE_DATABASE:Ljava/lang/String; = "Fail to disable Firewall in the database."

.field public static final FIREWALL_RULE_NOT_FOUND:Ljava/lang/String; = "The specified FirewallRule was not found."

.field public static final FIREWALL_SUCCESSFULLY_DISABLED:Ljava/lang/String; = "The firewall was successfully disabled."

.field public static final FIREWALL_SUCCESSFULLY_ENABLED:Ljava/lang/String; = "The firewall was successfully enabled."

.field public static final FIREWALL_SYSTEM_UID_RULE_NOT_SUPPORTED_ON_KG_ENROLLED_DEVICE:Ljava/lang/String; = "Firewall rules for system UIDs are not supported on devices enrolled in Knox Guard."

.field public static final FIREWALL_SYSTEM_UID_RULE_NOT_SUPPORTED_OUTSIDE_DO_OR_WPCOD:Ljava/lang/String; = "Firewall rules for system UIDs are only supported on DO or WPCOD."

.field public static final INVALID_APP_IDENTITY:Ljava/lang/String; = "Invalid AppIdentity object."

.field public static final INVALID_DNS:Ljava/lang/String; = "Invalid DNS(s) provided"

.field public static final INVALID_DOMAIN:Ljava/lang/String; = "Invalid domain."

.field public static final INVALID_PACKAGE_NAME:Ljava/lang/String; = "Invalid package name."

.field public static final IS_ARE_INVALID:Ljava/lang/String; = " is(are) invalid."

.field public static final NO_PARAMETERS_ERROR:Ljava/lang/String; = "No parameters provided."

.field public static final NO_RULE_SPECIFIED:Ljava/lang/String; = "No rule was specified."

.field public static final NO_SIGNATURE_ALL_APPS:Ljava/lang/String; = "There is no signature related to all applications."

.field public static final PACKAGE_NOT_INSTALLED:Ljava/lang/String; = "The specified package name is not installed."

.field public static final PREVIOUS_SIGNATURE_DOES_NOT_MATCH:Ljava/lang/String; = "Signature does not match with the previous added."

.field public static final RULES_ALREADY_CLEARED:Ljava/lang/String; = "The rules are already cleared."

.field public static final RULES_SUCCESSFULLY_CLEARED:Ljava/lang/String; = "Rules successfully cleared."

.field public static final RULETYPE_IS_NULL:Ljava/lang/String; = "The specified package name is not installed."

.field public static final RULE_ALREADY_ENABLED:Ljava/lang/String; = "The specified rule is already enabled."

.field public static final RULE_IS_ALREADY_IN_DATABASE:Ljava/lang/String; = "The specified rule is already in the database."

.field public static final RULE_IS_NOT_IN_THE_DATABASE:Ljava/lang/String; = "The rule is not in the database."

.field public static final RULE_IS_NULL:Ljava/lang/String; = "Rule is null."

.field public static final RULE_SUCCESSFULLY_ADDED:Ljava/lang/String; = "The rule(s) was successfully added/updated."

.field public static final RULE_SUCCESSFULLY_DISABLED:Ljava/lang/String; = "The rule was successfully disabled."

.field public static final RULE_SUCCESSFULLY_ENABLED:Ljava/lang/String; = "The rule was successfully enabled."

.field public static final RULE_SUCCESSFULLY_REMOVED:Ljava/lang/String; = "The rule was successfuly removed/updated."

.field public static final RULE_WITH_ID:Ljava/lang/String; = "Rule with Id = "

.field public static final SIGNATURE_DOES_NOT_MATCH:Ljava/lang/String; = "Given signature does not match with the application."

.field public static final SUCCESSFULLY_DISABLED:Ljava/lang/String; = " successfully disabled.\n"

.field public static final SUCCESSFULLY_ENABLED:Ljava/lang/String; = " successfully enabled.\n"

.field public static final UNEXPECTED_ERROR:Ljava/lang/String; = "Unexpected error"

.field public static final VALIDATION_FAILED:Ljava/lang/String; = "Failed to validate Rule."

.field public static final VALIDATION_SUCCESS:Ljava/lang/String; = "Parameters validated successfully"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
