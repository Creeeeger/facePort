.class public Landroid/app/admin/DevicePolicyManager;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;,
        Landroid/app/admin/DevicePolicyManager$SystemSettingsWhitelist;,
        Landroid/app/admin/DevicePolicyManager$CreateAndManageUserFlags;,
        Landroid/app/admin/DevicePolicyManager$LockNowFlag;,
        Landroid/app/admin/DevicePolicyManager$OperationSafetyReason;,
        Landroid/app/admin/DevicePolicyManager$DevicePolicyOperation;,
        Landroid/app/admin/DevicePolicyManager$DeviceOwnerType;,
        Landroid/app/admin/DevicePolicyManager$PersonalAppsSuspensionReason;,
        Landroid/app/admin/DevicePolicyManager$RoleHolderUpdateFailureStrategy;,
        Landroid/app/admin/DevicePolicyManager$PrivateDnsModeErrorCodes;,
        Landroid/app/admin/DevicePolicyManager$InstallUpdateCallbackErrorConstants;,
        Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;,
        Landroid/app/admin/DevicePolicyManager$PrivateDnsMode;,
        Landroid/app/admin/DevicePolicyManager$AttestationIdType;,
        Landroid/app/admin/DevicePolicyManager$LockTaskFeature;,
        Landroid/app/admin/DevicePolicyManager$ProvisioningPrecondition;,
        Landroid/app/admin/DevicePolicyManager$UserProvisioningState;,
        Landroid/app/admin/DevicePolicyManager$PermissionGrantState;,
        Landroid/app/admin/DevicePolicyManager$NearbyStreamingPolicy;,
        Landroid/app/admin/DevicePolicyManager$PasswordComplexity;,
        Landroid/app/admin/DevicePolicyManager$WifiSecurity;,
        Landroid/app/admin/DevicePolicyManager$ProvisioningConfiguration;,
        Landroid/app/admin/DevicePolicyManager$ProvisioningTrigger;
    }
.end annotation


# static fields
.field public static final whitelist ACCOUNT_FEATURE_DEVICE_OR_PROFILE_OWNER_ALLOWED:Ljava/lang/String; = "android.account.DEVICE_OR_PROFILE_OWNER_ALLOWED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACCOUNT_FEATURE_DEVICE_OR_PROFILE_OWNER_DISALLOWED:Ljava/lang/String; = "android.account.DEVICE_OR_PROFILE_OWNER_DISALLOWED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_ADD_DEVICE_ADMIN:Ljava/lang/String; = "android.app.action.ADD_DEVICE_ADMIN"

.field public static final whitelist ACTION_ADMIN_POLICY_COMPLIANCE:Ljava/lang/String; = "android.app.action.ADMIN_POLICY_COMPLIANCE"

.field public static final whitelist ACTION_APPLICATION_DELEGATION_SCOPES_CHANGED:Ljava/lang/String; = "android.app.action.APPLICATION_DELEGATION_SCOPES_CHANGED"

.field public static final whitelist ACTION_BIND_SECONDARY_LOCKSCREEN_SERVICE:Ljava/lang/String; = "android.app.action.BIND_SECONDARY_LOCKSCREEN_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_BUGREPORT_SHARING_ACCEPTED:Ljava/lang/String; = "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

.field public static final greylist-max-o ACTION_BUGREPORT_SHARING_DECLINED:Ljava/lang/String; = "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

.field public static final whitelist ACTION_CHECK_POLICY_COMPLIANCE:Ljava/lang/String; = "android.app.action.CHECK_POLICY_COMPLIANCE"

.field public static final blacklist ACTION_DATA_SHARING_RESTRICTION_APPLIED:Ljava/lang/String; = "android.app.action.DATA_SHARING_RESTRICTION_APPLIED"

.field public static final whitelist ACTION_DEVICE_ADMIN_SERVICE:Ljava/lang/String; = "android.app.action.DEVICE_ADMIN_SERVICE"

.field public static final whitelist ACTION_DEVICE_OWNER_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_OWNER_CHANGED"

.field public static final blacklist ACTION_DEVICE_POLICY_CONSTANTS_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_CONSTANTS_CHANGED"

.field public static final blacklist ACTION_DEVICE_POLICY_MANAGER_PASSWORD_CHANGED:Ljava/lang/String; = "com.samsung.knox.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

.field public static final greylist-max-r ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field public static final whitelist ACTION_DEVICE_POLICY_RESOURCE_UPDATED:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_RESOURCE_UPDATED"

.field public static final whitelist ACTION_ESTABLISH_NETWORK_CONNECTION:Ljava/lang/String; = "android.app.action.ESTABLISH_NETWORK_CONNECTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_GET_PROVISIONING_MODE:Ljava/lang/String; = "android.app.action.GET_PROVISIONING_MODE"

.field public static final whitelist ACTION_LOST_MODE_LOCATION_UPDATE:Ljava/lang/String; = "android.app.action.LOST_MODE_LOCATION_UPDATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGED_PROFILE_PROVISIONED:Ljava/lang/String; = "android.app.action.MANAGED_PROFILE_PROVISIONED"

.field public static final whitelist ACTION_PROFILE_OWNER_CHANGED:Ljava/lang/String; = "android.app.action.PROFILE_OWNER_CHANGED"

.field public static final blacklist ACTION_PROVISIONING_COMPLETED:Ljava/lang/String; = "android.app.action.PROVISIONING_COMPLETED"

.field public static final whitelist ACTION_PROVISIONING_SUCCESSFUL:Ljava/lang/String; = "android.app.action.PROVISIONING_SUCCESSFUL"

.field public static final whitelist ACTION_PROVISION_FINALIZATION:Ljava/lang/String; = "android.app.action.PROVISION_FINALIZATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PROVISION_FINANCED_DEVICE:Ljava/lang/String; = "android.app.action.PROVISION_FINANCED_DEVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PROVISION_MANAGED_DEVICE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_DEVICE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PROVISION_MANAGED_PROFILE:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_PROFILE"

.field public static final greylist-max-o ACTION_PROVISION_MANAGED_USER:Ljava/lang/String; = "android.app.action.PROVISION_MANAGED_USER"

.field public static final greylist-max-o ACTION_REMOTE_BUGREPORT_DISPATCH:Ljava/lang/String; = "android.intent.action.REMOTE_BUGREPORT_DISPATCH"

.field public static final whitelist ACTION_RESET_PROTECTION_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.RESET_PROTECTION_POLICY_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_ROLE_HOLDER_PROVISION_FINALIZATION:Ljava/lang/String; = "android.app.action.ROLE_HOLDER_PROVISION_FINALIZATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_ROLE_HOLDER_PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE:Ljava/lang/String; = "android.app.action.ROLE_HOLDER_PROVISION_MANAGED_DEVICE_FROM_TRUSTED_SOURCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_ROLE_HOLDER_PROVISION_MANAGED_PROFILE:Ljava/lang/String; = "android.app.action.ROLE_HOLDER_PROVISION_MANAGED_PROFILE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SET_NEW_PARENT_PROFILE_PASSWORD:Ljava/lang/String; = "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

.field public static final whitelist ACTION_SET_NEW_PASSWORD:Ljava/lang/String; = "android.app.action.SET_NEW_PASSWORD"

.field public static final whitelist ACTION_SET_PROFILE_OWNER:Ljava/lang/String; = "android.app.action.SET_PROFILE_OWNER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_SHOW_DEVICE_MONITORING_DIALOG:Ljava/lang/String; = "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

.field public static final blacklist ACTION_SHOW_NEW_USER_DISCLAIMER:Ljava/lang/String; = "android.app.action.SHOW_NEW_USER_DISCLAIMER"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist ACTION_START_ENCRYPTION:Ljava/lang/String; = "android.app.action.START_ENCRYPTION"

.field public static final whitelist ACTION_STATE_USER_SETUP_COMPLETE:Ljava/lang/String; = "android.app.action.STATE_USER_SETUP_COMPLETE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_SYSTEM_UPDATE_POLICY_CHANGED:Ljava/lang/String; = "android.app.action.SYSTEM_UPDATE_POLICY_CHANGED"

.field public static final whitelist ACTION_UPDATE_DEVICE_POLICY_MANAGEMENT_ROLE_HOLDER:Ljava/lang/String; = "android.app.action.UPDATE_DEVICE_POLICY_MANAGEMENT_ROLE_HOLDER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CODE_DEVICE_COMPROMISED:I = 0x14

.field public static final blacklist CODE_KNOX_SERVICE_KEY_UNAVAILABLE:I = 0x15

.field public static final greylist-max-o DEFAULT_STRONG_AUTH_TIMEOUT_MS:J = 0xf731400L

.field public static final whitelist DELEGATION_APP_RESTRICTIONS:Ljava/lang/String; = "delegation-app-restrictions"

.field public static final whitelist DELEGATION_BLOCK_UNINSTALL:Ljava/lang/String; = "delegation-block-uninstall"

.field public static final whitelist DELEGATION_CERT_INSTALL:Ljava/lang/String; = "delegation-cert-install"

.field public static final whitelist DELEGATION_CERT_SELECTION:Ljava/lang/String; = "delegation-cert-selection"

.field public static final whitelist DELEGATION_ENABLE_SYSTEM_APP:Ljava/lang/String; = "delegation-enable-system-app"

.field public static final whitelist DELEGATION_INSTALL_EXISTING_PACKAGE:Ljava/lang/String; = "delegation-install-existing-package"

.field public static final whitelist DELEGATION_KEEP_UNINSTALLED_PACKAGES:Ljava/lang/String; = "delegation-keep-uninstalled-packages"

.field public static final whitelist DELEGATION_NETWORK_LOGGING:Ljava/lang/String; = "delegation-network-logging"

.field public static final whitelist DELEGATION_PACKAGE_ACCESS:Ljava/lang/String; = "delegation-package-access"

.field public static final whitelist DELEGATION_PERMISSION_GRANT:Ljava/lang/String; = "delegation-permission-grant"

.field public static final whitelist DELEGATION_SECURITY_LOGGING:Ljava/lang/String; = "delegation-security-logging"

.field public static final blacklist DEVICE_OWNER_TYPE_DEFAULT:I = 0x0

.field public static final blacklist DEVICE_OWNER_TYPE_FINANCED:I = 0x1

.field public static final whitelist ENCRYPTION_STATUS_ACTIVATING:I = 0x2

.field public static final whitelist ENCRYPTION_STATUS_ACTIVE:I = 0x3

.field public static final whitelist ENCRYPTION_STATUS_ACTIVE_DEFAULT_KEY:I = 0x4

.field public static final whitelist ENCRYPTION_STATUS_ACTIVE_PER_USER:I = 0x5

.field public static final whitelist ENCRYPTION_STATUS_INACTIVE:I = 0x1

.field public static final whitelist ENCRYPTION_STATUS_UNSUPPORTED:I = 0x0

.field public static final blacklist ERROR_VPN_PACKAGE_NOT_FOUND:I = 0x1

.field public static final whitelist EXTRA_ADD_EXPLANATION:Ljava/lang/String; = "android.app.extra.ADD_EXPLANATION"

.field public static final greylist-max-o EXTRA_BUGREPORT_NOTIFICATION_TYPE:Ljava/lang/String; = "android.app.extra.bugreport_notification_type"

.field public static final whitelist EXTRA_DELEGATION_SCOPES:Ljava/lang/String; = "android.app.extra.DELEGATION_SCOPES"

.field public static final whitelist EXTRA_DEVICE_ADMIN:Ljava/lang/String; = "android.app.extra.DEVICE_ADMIN"

.field public static final whitelist EXTRA_DEVICE_PASSWORD_REQUIREMENT_ONLY:Ljava/lang/String; = "android.app.extra.DEVICE_PASSWORD_REQUIREMENT_ONLY"

.field public static final blacklist EXTRA_DO_CHANGED_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.EXTRA_DO_CHANGED_STATUS"

.field public static final blacklist EXTRA_DO_PO_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.EXTRA_DO_PO_PACKAGE_NAME"

.field public static final whitelist EXTRA_FORCE_UPDATE_ROLE_HOLDER:Ljava/lang/String; = "android.app.extra.FORCE_UPDATE_ROLE_HOLDER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_IS_BT_CHANGED:Ljava/lang/String; = "isBTChanged"

.field public static final blacklist EXTRA_IS_WIFI_CHANGED:Ljava/lang/String; = "isWifiChanged"

.field public static final whitelist EXTRA_LOST_MODE_LOCATION:Ljava/lang/String; = "android.app.extra.LOST_MODE_LOCATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_NOTIFY_FROM_LOCKSCREEN:Ljava/lang/String; = "isNotiFromLockScreen"

.field public static final whitelist EXTRA_PASSWORD_COMPLEXITY:Ljava/lang/String; = "android.app.extra.PASSWORD_COMPLEXITY"

.field public static final whitelist EXTRA_PROFILE_OWNER_NAME:Ljava/lang/String; = "android.app.extra.PROFILE_OWNER_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_ACCOUNT_TO_MIGRATE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE"

.field public static final blacklist EXTRA_PROVISIONING_ACTION:Ljava/lang/String; = "android.app.extra.PROVISIONING_ACTION"

.field public static final whitelist EXTRA_PROVISIONING_ADMIN_EXTRAS_BUNDLE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

.field public static final whitelist EXTRA_PROVISIONING_ALLOWED_PROVISIONING_MODES:Ljava/lang/String; = "android.app.extra.PROVISIONING_ALLOWED_PROVISIONING_MODES"

.field public static final whitelist EXTRA_PROVISIONING_ALLOW_OFFLINE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ALLOW_OFFLINE"

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_COMPONENT_NAME"

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_MINIMUM_VERSION_CODE"

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_CHECKSUM"

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_COOKIE_HEADER"

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_DOWNLOAD_LOCATION"

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_ICON_URI:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_ICON_URI"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_LABEL:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_LABEL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_PACKAGE_NAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM:Ljava/lang/String; = "android.app.extra.PROVISIONING_DEVICE_ADMIN_SIGNATURE_CHECKSUM"

.field public static final whitelist EXTRA_PROVISIONING_DISCLAIMERS:Ljava/lang/String; = "android.app.extra.PROVISIONING_DISCLAIMERS"

.field public static final whitelist EXTRA_PROVISIONING_DISCLAIMER_CONTENT:Ljava/lang/String; = "android.app.extra.PROVISIONING_DISCLAIMER_CONTENT"

.field public static final whitelist EXTRA_PROVISIONING_DISCLAIMER_HEADER:Ljava/lang/String; = "android.app.extra.PROVISIONING_DISCLAIMER_HEADER"

.field public static final whitelist EXTRA_PROVISIONING_EMAIL_ADDRESS:Ljava/lang/String; = "android.app.extra.PROVISIONING_EMAIL_ADDRESS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_IMEI:Ljava/lang/String; = "android.app.extra.PROVISIONING_IMEI"

.field public static final whitelist EXTRA_PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION:Ljava/lang/String; = "android.app.extra.PROVISIONING_KEEP_ACCOUNT_ON_MIGRATION"

.field public static final whitelist EXTRA_PROVISIONING_KEEP_SCREEN_ON:Ljava/lang/String; = "android.app.extra.PROVISIONING_KEEP_SCREEN_ON"

.field public static final whitelist EXTRA_PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED:Ljava/lang/String; = "android.app.extra.PROVISIONING_LEAVE_ALL_SYSTEM_APPS_ENABLED"

.field public static final whitelist EXTRA_PROVISIONING_LOCALE:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOCALE"

.field public static final whitelist EXTRA_PROVISIONING_LOCAL_TIME:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOCAL_TIME"

.field public static final whitelist EXTRA_PROVISIONING_LOGO_URI:Ljava/lang/String; = "android.app.extra.PROVISIONING_LOGO_URI"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_MAIN_COLOR:Ljava/lang/String; = "android.app.extra.PROVISIONING_MAIN_COLOR"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_MODE:Ljava/lang/String; = "android.app.extra.PROVISIONING_MODE"

.field public static final whitelist EXTRA_PROVISIONING_ORGANIZATION_NAME:Ljava/lang/String; = "android.app.extra.PROVISIONING_ORGANIZATION_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_RETURN_BEFORE_POLICY_COMPLIANCE:Ljava/lang/String; = "android.app.extra.PROVISIONING_RETURN_BEFORE_POLICY_COMPLIANCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_ROLE_HOLDER_CUSTOM_USER_CONSENT_INTENT:Ljava/lang/String; = "android.app.extra.PROVISIONING_ROLE_HOLDER_CUSTOM_USER_CONSENT_INTENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_ROLE_HOLDER_EXTRAS_BUNDLE:Ljava/lang/String; = "android.app.extra.PROVISIONING_ROLE_HOLDER_EXTRAS_BUNDLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_ROLE_HOLDER_PACKAGE_DOWNLOAD_COOKIE_HEADER:Ljava/lang/String; = "android.app.extra.PROVISIONING_ROLE_HOLDER_PACKAGE_DOWNLOAD_COOKIE_HEADER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_ROLE_HOLDER_PACKAGE_DOWNLOAD_LOCATION:Ljava/lang/String; = "android.app.extra.PROVISIONING_ROLE_HOLDER_PACKAGE_DOWNLOAD_LOCATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_ROLE_HOLDER_SIGNATURE_CHECKSUM:Ljava/lang/String; = "android.app.extra.PROVISIONING_ROLE_HOLDER_SIGNATURE_CHECKSUM"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_SENSORS_PERMISSION_GRANT_OPT_OUT:Ljava/lang/String; = "android.app.extra.PROVISIONING_SENSORS_PERMISSION_GRANT_OPT_OUT"

.field public static final whitelist EXTRA_PROVISIONING_SERIAL_NUMBER:Ljava/lang/String; = "android.app.extra.PROVISIONING_SERIAL_NUMBER"

.field public static final whitelist EXTRA_PROVISIONING_SHOULD_LAUNCH_RESULT_INTENT:Ljava/lang/String; = "android.app.extra.PROVISIONING_SHOULD_LAUNCH_RESULT_INTENT"

.field public static final whitelist EXTRA_PROVISIONING_SKIP_EDUCATION_SCREENS:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_EDUCATION_SCREENS"

.field public static final whitelist EXTRA_PROVISIONING_SKIP_ENCRYPTION:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_ENCRYPTION"

.field public static final whitelist EXTRA_PROVISIONING_SKIP_OWNERSHIP_DISCLAIMER:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_OWNERSHIP_DISCLAIMER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_SKIP_USER_CONSENT:Ljava/lang/String; = "android.app.extra.PROVISIONING_SKIP_USER_CONSENT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_SUPPORTED_MODES:Ljava/lang/String; = "android.app.extra.PROVISIONING_SUPPORTED_MODES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_SUPPORT_URL:Ljava/lang/String; = "android.app.extra.PROVISIONING_SUPPORT_URL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_TIME_ZONE:Ljava/lang/String; = "android.app.extra.PROVISIONING_TIME_ZONE"

.field public static final whitelist EXTRA_PROVISIONING_TRIGGER:Ljava/lang/String; = "android.app.extra.PROVISIONING_TRIGGER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PROVISIONING_USE_MOBILE_DATA:Ljava/lang/String; = "android.app.extra.PROVISIONING_USE_MOBILE_DATA"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_ANONYMOUS_IDENTITY:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_ANONYMOUS_IDENTITY"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_CA_CERTIFICATE:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_CA_CERTIFICATE"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_DOMAIN:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_DOMAIN"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_EAP_METHOD:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_EAP_METHOD"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_HIDDEN:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_HIDDEN"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_IDENTITY:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_IDENTITY"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_PAC_URL:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PAC_URL"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_PASSWORD:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PASSWORD"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_PHASE2_AUTH:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PHASE2_AUTH"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_PROXY_BYPASS:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_BYPASS"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_PROXY_HOST:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_HOST"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_PROXY_PORT:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_PROXY_PORT"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_SECURITY_TYPE:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_SECURITY_TYPE"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_SSID:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_SSID"

.field public static final whitelist EXTRA_PROVISIONING_WIFI_USER_CERTIFICATE:Ljava/lang/String; = "android.app.extra.PROVISIONING_WIFI_USER_CERTIFICATE"

.field public static final greylist-max-o EXTRA_REMOTE_BUGREPORT_HASH:Ljava/lang/String; = "android.intent.extra.REMOTE_BUGREPORT_HASH"

.field public static final blacklist EXTRA_REMOTE_BUGREPORT_NONCE:Ljava/lang/String; = "android.intent.extra.REMOTE_BUGREPORT_NONCE"

.field public static final whitelist EXTRA_RESOURCE_IDS:Ljava/lang/String; = "android.app.extra.RESOURCE_IDS"

.field public static final whitelist EXTRA_RESOURCE_TYPE:Ljava/lang/String; = "android.app.extra.RESOURCE_TYPE"

.field public static final whitelist EXTRA_RESOURCE_TYPE_DRAWABLE:I = 0x1

.field public static final whitelist EXTRA_RESOURCE_TYPE_STRING:I = 0x2

.field public static final whitelist EXTRA_RESTRICTION:Ljava/lang/String; = "android.app.extra.RESTRICTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_RESULT_LAUNCH_INTENT:Ljava/lang/String; = "android.app.extra.RESULT_LAUNCH_INTENT"

.field public static final whitelist EXTRA_ROLE_HOLDER_PROVISIONING_INITIATOR_PACKAGE:Ljava/lang/String; = "android.app.extra.ROLE_HOLDER_PROVISIONING_INITIATOR_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ROLE_HOLDER_STATE:Ljava/lang/String; = "android.app.extra.ROLE_HOLDER_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_ROLE_HOLDER_UPDATE_FAILURE_STRATEGY:Ljava/lang/String; = "android.app.extra.ROLE_HOLDER_UPDATE_FAILURE_STRATEGY"

.field public static final whitelist EXTRA_ROLE_HOLDER_UPDATE_RESULT_CODE:Ljava/lang/String; = "android.app.extra.ROLE_HOLDER_UPDATE_RESULT_CODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_EVICT_CREDENTIAL_ENCRYPTION_KEY:I = 0x1

.field public static final whitelist FLAG_MANAGED_CAN_ACCESS_PARENT:I = 0x2

.field public static final whitelist FLAG_PARENT_CAN_ACCESS_MANAGED:I = 0x1

.field public static final whitelist FLAG_SUPPORTED_MODES_DEVICE_OWNER:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_SUPPORTED_MODES_ORGANIZATION_OWNED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_SUPPORTED_MODES_PERSONALLY_OWNED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ID_TYPE_BASE_INFO:I = 0x1

.field public static final whitelist ID_TYPE_IMEI:I = 0x4

.field public static final whitelist ID_TYPE_INDIVIDUAL_ATTESTATION:I = 0x10

.field public static final whitelist ID_TYPE_MEID:I = 0x8

.field public static final whitelist ID_TYPE_SERIAL:I = 0x2

.field public static final whitelist INSTALLKEY_REQUEST_CREDENTIALS_ACCESS:I = 0x1

.field public static final whitelist INSTALLKEY_SET_USER_SELECTABLE:I = 0x2

.field public static final whitelist KEYGUARD_DISABLE_BIOMETRICS:I = 0x1a0

.field public static final whitelist KEYGUARD_DISABLE_FACE:I = 0x80

.field public static final whitelist KEYGUARD_DISABLE_FEATURES_ALL:I = 0x7fffffff

.field public static final whitelist KEYGUARD_DISABLE_FEATURES_NONE:I = 0x0

.field public static final whitelist KEYGUARD_DISABLE_FINGERPRINT:I = 0x20

.field public static final whitelist KEYGUARD_DISABLE_IRIS:I = 0x100

.field public static final whitelist KEYGUARD_DISABLE_REMOTE_INPUT:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEYGUARD_DISABLE_SECURE_CAMERA:I = 0x2

.field public static final whitelist KEYGUARD_DISABLE_SECURE_NOTIFICATIONS:I = 0x4

.field public static final whitelist KEYGUARD_DISABLE_TRUST_AGENTS:I = 0x10

.field public static final whitelist KEYGUARD_DISABLE_UNREDACTED_NOTIFICATIONS:I = 0x8

.field public static final whitelist KEYGUARD_DISABLE_WIDGETS_ALL:I = 0x1

.field public static final blacklist KEY_GEN_STRONGBOX_UNAVAILABLE:I = 0x1

.field public static final whitelist LEAVE_ALL_SYSTEM_APPS_ENABLED:I = 0x10

.field public static final whitelist LOCK_TASK_FEATURE_BLOCK_ACTIVITY_START_IN_TASK:I = 0x40

.field public static final whitelist LOCK_TASK_FEATURE_GLOBAL_ACTIONS:I = 0x10

.field public static final whitelist LOCK_TASK_FEATURE_HOME:I = 0x4

.field public static final whitelist LOCK_TASK_FEATURE_KEYGUARD:I = 0x20

.field public static final whitelist LOCK_TASK_FEATURE_NONE:I = 0x0

.field public static final whitelist LOCK_TASK_FEATURE_NOTIFICATIONS:I = 0x2

.field public static final whitelist LOCK_TASK_FEATURE_OVERVIEW:I = 0x8

.field public static final whitelist LOCK_TASK_FEATURE_SYSTEM_INFO:I = 0x1

.field public static final greylist-max-o MAKE_USER_DEMO:I = 0x4

.field public static final whitelist MAKE_USER_EPHEMERAL:I = 0x2

.field public static final blacklist MAX_PASSWORD_LENGTH:I = 0x100

.field public static final whitelist MIME_TYPE_PROVISIONING_NFC:Ljava/lang/String; = "application/com.android.managedprovisioning"

.field public static final whitelist NEARBY_STREAMING_DISABLED:I = 0x1

.field public static final whitelist NEARBY_STREAMING_ENABLED:I = 0x2

.field public static final whitelist NEARBY_STREAMING_NOT_CONTROLLED_BY_POLICY:I = 0x0

.field public static final whitelist NEARBY_STREAMING_SAME_MANAGED_ACCOUNT_ONLY:I = 0x3

.field public static final blacklist NON_ORG_OWNED_PROFILE_KEYGUARD_FEATURES_AFFECT_OWNER:I = 0x1b0

.field public static final greylist-max-o NOTIFICATION_BUGREPORT_ACCEPTED_NOT_FINISHED:I = 0x2

.field public static final greylist-max-o NOTIFICATION_BUGREPORT_FINISHED_NOT_ACCEPTED:I = 0x3

.field public static final greylist-max-o NOTIFICATION_BUGREPORT_STARTED:I = 0x1

.field public static final blacklist OPERATION_CLEAR_APPLICATION_USER_DATA:I = 0x17

.field public static final blacklist OPERATION_CREATE_AND_MANAGE_USER:I = 0x5

.field public static final blacklist OPERATION_INSTALL_CA_CERT:I = 0x18

.field public static final blacklist OPERATION_INSTALL_KEY_PAIR:I = 0x19

.field public static final blacklist OPERATION_INSTALL_SYSTEM_UPDATE:I = 0x1a

.field public static final blacklist OPERATION_LOCK_NOW:I = 0x1

.field public static final blacklist OPERATION_LOGOUT_USER:I = 0x9

.field public static final blacklist OPERATION_REBOOT:I = 0x7

.field public static final blacklist OPERATION_REMOVE_ACTIVE_ADMIN:I = 0x1b

.field public static final blacklist OPERATION_REMOVE_KEY_PAIR:I = 0x1c

.field public static final blacklist OPERATION_REMOVE_USER:I = 0x6

.field public static final blacklist OPERATION_REQUEST_BUGREPORT:I = 0x1d

.field public static final whitelist OPERATION_SAFETY_REASON_DRIVING_DISTRACTION:I = 0x1

.field public static final blacklist OPERATION_SAFETY_REASON_NONE:I = -0x1

.field public static final blacklist OPERATION_SET_ALWAYS_ON_VPN_PACKAGE:I = 0x1e

.field public static final blacklist OPERATION_SET_APPLICATION_HIDDEN:I = 0xf

.field public static final blacklist OPERATION_SET_APPLICATION_RESTRICTIONS:I = 0x10

.field public static final blacklist OPERATION_SET_CAMERA_DISABLED:I = 0x1f

.field public static final blacklist OPERATION_SET_FACTORY_RESET_PROTECTION_POLICY:I = 0x20

.field public static final blacklist OPERATION_SET_GLOBAL_PRIVATE_DNS:I = 0x21

.field public static final blacklist OPERATION_SET_KEEP_UNINSTALLED_PACKAGES:I = 0x11

.field public static final blacklist OPERATION_SET_KEYGUARD_DISABLED:I = 0xc

.field public static final blacklist OPERATION_SET_LOCK_TASK_FEATURES:I = 0x12

.field public static final blacklist OPERATION_SET_LOCK_TASK_PACKAGES:I = 0x13

.field public static final blacklist OPERATION_SET_LOGOUT_ENABLED:I = 0x22

.field public static final blacklist OPERATION_SET_MASTER_VOLUME_MUTED:I = 0x23

.field public static final blacklist OPERATION_SET_OVERRIDE_APNS_ENABLED:I = 0x24

.field public static final blacklist OPERATION_SET_PACKAGES_SUSPENDED:I = 0x14

.field public static final blacklist OPERATION_SET_PERMISSION_GRANT_STATE:I = 0x25

.field public static final blacklist OPERATION_SET_PERMISSION_POLICY:I = 0x26

.field public static final blacklist OPERATION_SET_RESTRICTIONS_PROVIDER:I = 0x27

.field public static final blacklist OPERATION_SET_STATUS_BAR_DISABLED:I = 0xd

.field public static final blacklist OPERATION_SET_SYSTEM_SETTING:I = 0xb

.field public static final blacklist OPERATION_SET_SYSTEM_UPDATE_POLICY:I = 0xe

.field public static final blacklist OPERATION_SET_TRUST_AGENT_CONFIGURATION:I = 0x15

.field public static final blacklist OPERATION_SET_USER_CONTROL_DISABLED_PACKAGES:I = 0x16

.field public static final blacklist OPERATION_SET_USER_RESTRICTION:I = 0xa

.field public static final blacklist OPERATION_START_USER_IN_BACKGROUND:I = 0x3

.field public static final blacklist OPERATION_STOP_USER:I = 0x4

.field public static final blacklist OPERATION_SWITCH_USER:I = 0x2

.field public static final blacklist OPERATION_UNINSTALL_CA_CERT:I = 0x28

.field public static final blacklist OPERATION_WIPE_DATA:I = 0x8

.field public static final blacklist ORG_OWNED_PROFILE_KEYGUARD_FEATURES_PARENT_ONLY:I = 0x6

.field public static final whitelist PASSWORD_COMPLEXITY_HIGH:I = 0x50000

.field public static final whitelist PASSWORD_COMPLEXITY_LOW:I = 0x10000

.field public static final whitelist PASSWORD_COMPLEXITY_MEDIUM:I = 0x30000

.field public static final whitelist PASSWORD_COMPLEXITY_NONE:I = 0x0

.field public static final whitelist PASSWORD_QUALITY_ALPHABETIC:I = 0x40000

.field public static final whitelist PASSWORD_QUALITY_ALPHANUMERIC:I = 0x50000

.field public static final whitelist PASSWORD_QUALITY_BIOMETRIC_WEAK:I = 0x8000

.field public static final whitelist PASSWORD_QUALITY_COMPLEX:I = 0x60000

.field public static final greylist-max-o PASSWORD_QUALITY_MANAGED:I = 0x80000

.field public static final whitelist PASSWORD_QUALITY_NUMERIC:I = 0x20000

.field public static final whitelist PASSWORD_QUALITY_NUMERIC_COMPLEX:I = 0x30000

.field public static final blacklist PASSWORD_QUALITY_SMARTCARDNUMERIC:I = 0x70000

.field public static final whitelist PASSWORD_QUALITY_SOMETHING:I = 0x10000

.field public static final whitelist PASSWORD_QUALITY_UNSPECIFIED:I = 0x0

.field public static final whitelist PERMISSION_GRANT_STATE_DEFAULT:I = 0x0

.field public static final whitelist PERMISSION_GRANT_STATE_DENIED:I = 0x2

.field public static final whitelist PERMISSION_GRANT_STATE_GRANTED:I = 0x1

.field public static final whitelist PERMISSION_POLICY_AUTO_DENY:I = 0x2

.field public static final whitelist PERMISSION_POLICY_AUTO_GRANT:I = 0x1

.field public static final whitelist PERMISSION_POLICY_PROMPT:I = 0x0

.field public static final whitelist PERSONAL_APPS_NOT_SUSPENDED:I = 0x0

.field public static final whitelist PERSONAL_APPS_SUSPENDED_EXPLICITLY:I = 0x1

.field public static final whitelist PERSONAL_APPS_SUSPENDED_PROFILE_TIMEOUT:I = 0x2

.field public static final whitelist POLICY_DISABLE_CAMERA:Ljava/lang/String; = "policy_disable_camera"

.field public static final whitelist POLICY_DISABLE_SCREEN_CAPTURE:Ljava/lang/String; = "policy_disable_screen_capture"

.field public static final greylist-max-o POLICY_SUSPEND_PACKAGES:Ljava/lang/String; = "policy_suspend_packages"

.field public static final blacklist PREFERENTIAL_NETWORK_SERVICE_ENABLED_DEFAULT:Z = false

.field private static final blacklist PREFIX_OPERATION:Ljava/lang/String; = "OPERATION_"

.field private static final blacklist PREFIX_OPERATION_SAFETY_REASON:Ljava/lang/String; = "OPERATION_SAFETY_REASON_"

.field public static final whitelist PRIVATE_DNS_MODE_OFF:I = 0x1

.field public static final whitelist PRIVATE_DNS_MODE_OPPORTUNISTIC:I = 0x2

.field public static final whitelist PRIVATE_DNS_MODE_PROVIDER_HOSTNAME:I = 0x3

.field public static final whitelist PRIVATE_DNS_MODE_UNKNOWN:I = 0x0

.field public static final whitelist PRIVATE_DNS_SET_ERROR_FAILURE_SETTING:I = 0x2

.field public static final whitelist PRIVATE_DNS_SET_ERROR_HOST_NOT_SERVING:I = 0x1

.field public static final whitelist PRIVATE_DNS_SET_NO_ERROR:I = 0x0

.field public static final greylist-max-o PROFILE_KEYGUARD_FEATURES_AFFECT_OWNER:I = 0x1b6

.field public static final whitelist PROVISIONING_MODE_FULLY_MANAGED_DEVICE:I = 0x1

.field public static final whitelist PROVISIONING_MODE_MANAGED_PROFILE:I = 0x2

.field public static final whitelist PROVISIONING_MODE_MANAGED_PROFILE_ON_PERSONAL_DEVICE:I = 0x3

.field public static final whitelist PROVISIONING_TRIGGER_CLOUD_ENROLLMENT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROVISIONING_TRIGGER_MANAGED_ACCOUNT:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROVISIONING_TRIGGER_NFC:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROVISIONING_TRIGGER_PERSISTENT_DEVICE_OWNER:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROVISIONING_TRIGGER_QR_CODE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROVISIONING_TRIGGER_UNSPECIFIED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REQUIRED_APP_MANAGED_DEVICE:Ljava/lang/String; = "android.app.REQUIRED_APP_MANAGED_DEVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REQUIRED_APP_MANAGED_PROFILE:Ljava/lang/String; = "android.app.REQUIRED_APP_MANAGED_PROFILE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REQUIRED_APP_MANAGED_USER:Ljava/lang/String; = "android.app.REQUIRED_APP_MANAGED_USER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESET_PASSWORD_DO_NOT_ASK_CREDENTIALS_ON_BOOT:I = 0x2

.field public static final whitelist RESET_PASSWORD_REQUIRE_ENTRY:I = 0x1

.field public static final whitelist RESULT_DEVICE_OWNER_SET:I = 0x7b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_UPDATE_DEVICE_POLICY_MANAGEMENT_ROLE_HOLDER_PROVISIONING_DISABLED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_UPDATE_DEVICE_POLICY_MANAGEMENT_ROLE_HOLDER_RECOVERABLE_ERROR:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_UPDATE_DEVICE_POLICY_MANAGEMENT_ROLE_HOLDER_UNRECOVERABLE_ERROR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_UPDATE_ROLE_HOLDER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RESULT_WORK_PROFILE_CREATED:I = 0x7a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ROLE_HOLDER_UPDATE_FAILURE_STRATEGY_FAIL_PROVISIONING:I = 0x1

.field public static final blacklist ROLE_HOLDER_UPDATE_FAILURE_STRATEGY_FALLBACK_TO_PLATFORM_PROVISIONING:I = 0x2

.field public static final whitelist SEM_PASSWORD_QUALITY_FINGERPRINT:I = 0x61000

.field public static final whitelist SEM_PASSWORD_QUALITY_SMART_UNLOCK:I = 0x90000

.field public static final whitelist SKIP_SETUP_WIZARD:I = 0x1

.field public static final whitelist STATE_USER_PROFILE_COMPLETE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATE_USER_PROFILE_FINALIZED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATE_USER_SETUP_COMPLETE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATE_USER_SETUP_FINALIZED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATE_USER_SETUP_INCOMPLETE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATE_USER_UNMANAGED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_ACCOUNTS_NOT_EMPTY:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_CANNOT_ADD_MANAGED_PROFILE:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_DEVICE_ADMIN_NOT_SUPPORTED:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_HAS_DEVICE_OWNER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_HAS_PAIRED:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_MANAGED_USERS_NOT_SUPPORTED:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_NONSYSTEM_USER_EXISTS:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_NOT_SYSTEM_USER:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_OK:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_PROVISIONING_NOT_ALLOWED_FOR_NON_DEVELOPER_USERS:I = 0xf
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist STATUS_SPLIT_SYSTEM_USER_DEVICE_SYSTEM_USER:I = 0xe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_SYSTEM_USER:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_UNKNOWN_ERROR:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_USER_HAS_PROFILE_OWNER:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_USER_NOT_RUNNING:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist STATUS_USER_SETUP_COMPLETED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static greylist-max-o TAG:Ljava/lang/String; = null

.field public static final whitelist WIFI_SECURITY_ENTERPRISE_192:I = 0x3

.field public static final whitelist WIFI_SECURITY_ENTERPRISE_EAP:I = 0x2

.field public static final whitelist WIFI_SECURITY_OPEN:I = 0x0

.field public static final whitelist WIFI_SECURITY_PERSONAL:I = 0x1

.field public static final whitelist WIPE_EUICC:I = 0x4

.field public static final whitelist WIPE_EXTERNAL_STORAGE:I = 0x1

.field public static final whitelist WIPE_RESET_PROTECTION_DATA:I = 0x2

.field public static final whitelist WIPE_SILENTLY:I = 0x8

.field private static final blacklist sDpmCaches:Landroid/os/IpcDataCache$Config;


# instance fields
.field private final blacklist ALLOW_BLUETOOTH_MODE_VALUE_ALLOW:I

.field private final blacklist ALLOW_BLUETOOTH_MODE_VALUE_DISABLE:I

.field private final blacklist ALLOW_BLUETOOTH_MODE_VALUE_HANDSFREE_ONLY:I

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mGetDeviceOwnerOrganizationNameCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGetKeyGuardDisabledFeaturesCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/util/Pair<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGetOrganizationNameForUserCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGetProfileOwnerOrDeviceOwnerSupervisionComponentCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/os/UserHandle;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasDeviceOwnerCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsNetworkLoggingEnabledCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsOrganizationOwnedDeviceWithManagedProfileCache:Landroid/os/IpcDataCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/IpcDataCache<",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mParentInstance:Z

.field private final blacklist mResourcesManager:Landroid/app/admin/DevicePolicyResourcesManager;

.field private final greylist-max-o mService:Landroid/app/admin/IDevicePolicyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mexecuteCallback(Landroid/app/admin/DevicePolicyManager;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/admin/DevicePolicyManager;->executeCallback(ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 171
    const-string v0, "DevicePolicyManager"

    sput-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    .line 3919
    new-instance v0, Landroid/os/IpcDataCache$Config;

    const/16 v1, 0x8

    const-string/jumbo v2, "system_server"

    const-string v3, "DevicePolicyManagerCaches"

    invoke-direct {v0, v1, v2, v3}, Landroid/os/IpcDataCache$Config;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/admin/IDevicePolicyManager;

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V

    .line 181
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/admin/IDevicePolicyManager;
    .param p3, "parentInstance"    # Z

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3791
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/admin/DevicePolicyManager;->ALLOW_BLUETOOTH_MODE_VALUE_DISABLE:I

    .line 3792
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/admin/DevicePolicyManager;->ALLOW_BLUETOOTH_MODE_VALUE_HANDSFREE_ONLY:I

    .line 3793
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/admin/DevicePolicyManager;->ALLOW_BLUETOOTH_MODE_VALUE_ALLOW:I

    .line 8606
    new-instance v0, Landroid/os/IpcDataCache;

    sget-object v1, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    .line 8607
    const-string v2, "getKeyguardDisabledFeatures"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v2

    new-instance v3, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda5;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v2, v3}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetKeyGuardDisabledFeaturesCache:Landroid/os/IpcDataCache;

    .line 8997
    new-instance v0, Landroid/os/IpcDataCache;

    .line 8998
    const-string v2, "hasDeviceOwner"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v2

    new-instance v3, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda6;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v2, v3}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mHasDeviceOwnerCache:Landroid/os/IpcDataCache;

    .line 9375
    new-instance v0, Landroid/os/IpcDataCache;

    .line 9377
    const-string v2, "getProfileOwnerOrDeviceOwnerSupervisionComponent"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v2

    new-instance v3, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda7;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v2, v3}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetProfileOwnerOrDeviceOwnerSupervisionComponentCache:Landroid/os/IpcDataCache;

    .line 9448
    new-instance v0, Landroid/os/IpcDataCache;

    .line 9449
    const-string v2, "isOrganizationOwnedDeviceWithManagedProfile"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v2

    new-instance v3, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda8;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v2, v3}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mIsOrganizationOwnedDeviceWithManagedProfileCache:Landroid/os/IpcDataCache;

    .line 13116
    new-instance v0, Landroid/os/IpcDataCache;

    .line 13117
    const-string v2, "getDeviceOwnerOrganizationName"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v2

    new-instance v3, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda9;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v2, v3}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetDeviceOwnerOrganizationNameCache:Landroid/os/IpcDataCache;

    .line 13135
    new-instance v0, Landroid/os/IpcDataCache;

    .line 13136
    const-string v2, "getOrganizationNameForUser"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v2

    new-instance v3, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda10;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v2, v3}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetOrganizationNameForUserCache:Landroid/os/IpcDataCache;

    .line 13536
    new-instance v0, Landroid/os/IpcDataCache;

    .line 13537
    const-string v2, "isNetworkLoggingEnabled"

    invoke-virtual {v1, v2}, Landroid/os/IpcDataCache$Config;->child(Ljava/lang/String;)Landroid/os/IpcDataCache$Config;

    move-result-object v1

    new-instance v2, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda11;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/IpcDataCache;-><init>(Landroid/os/IpcDataCache$Config;Landroid/os/IpcDataCache$RemoteCall;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mIsNetworkLoggingEnabledCache:Landroid/os/IpcDataCache;

    .line 187
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 188
    iput-object p2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 189
    iput-boolean p3, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    .line 190
    new-instance v0, Landroid/app/admin/DevicePolicyResourcesManager;

    invoke-direct {v0, p1, p2}, Landroid/app/admin/DevicePolicyResourcesManager;-><init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;)V

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mResourcesManager:Landroid/app/admin/DevicePolicyResourcesManager;

    .line 191
    return-void
.end method

.method public static blacklist disableLocalCaches()V
    .locals 1

    .line 3929
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    invoke-virtual {v0}, Landroid/os/IpcDataCache$Config;->disableAllForCurrentProcess()V

    .line 3930
    return-void
.end method

.method private blacklist executeCallback(ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;

    .line 14407
    new-instance v0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p4, p1, p2}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda3;-><init>(Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;ILjava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14408
    return-void
.end method

.method private blacklist executeCallback(Lcom/android/internal/infra/AndroidFuture;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 6451
    .local p1, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, p2, p3}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda12;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 6463
    return-void
.end method

.method private blacklist extractPackageNameFromDeviceManagerConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "deviceManagerConfig"    # Ljava/lang/String;

    .line 15784
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15785
    const/4 v0, 0x0

    return-object v0

    .line 15787
    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15788
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 15790
    :cond_1
    return-object p1
.end method

.method private static greylist-max-o getCaCertAlias([B)Ljava/lang/String;
    .locals 3
    .param p0, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 7742
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 7743
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 7745
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    new-instance v2, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private final blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 214
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private greylist-max-o getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;
    .locals 2
    .param p1, "callingUserOnly"    # Z

    .line 8906
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8908
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8909
    :catch_0
    move-exception v0

    .line 8910
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8913
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getErrorMessage(Landroid/os/ServiceSpecificException;)Ljava/lang/String;
    .locals 1
    .param p1, "e"    # Landroid/os/ServiceSpecificException;

    .line 15289
    const/4 v0, 0x0

    return-object v0
.end method

.method private final blacklist getService()Landroid/app/admin/IDevicePolicyManager;
    .locals 1

    .line 198
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method public static blacklist invalidateBinderCaches()V
    .locals 1

    .line 3924
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->sDpmCaches:Landroid/os/IpcDataCache$Config;

    invoke-virtual {v0}, Landroid/os/IpcDataCache$Config;->invalidateCache()V

    .line 3925
    return-void
.end method

.method private greylist-max-o isDeviceOwnerAppOnAnyUserInner(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUserOnly"    # Z

    .line 8895
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 8896
    return v0

    .line 8898
    :cond_0
    invoke-direct {p0, p2}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;

    move-result-object v1

    .line 8899
    .local v1, "deviceOwner":Landroid/content/ComponentName;
    if-nez v1, :cond_1

    .line 8900
    return v0

    .line 8902
    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final blacklist isParentInstance()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    return v0
.end method

.method public static blacklist isValidOperationSafetyReason(I)Z
    .locals 1
    .param p0, "reason"    # I

    .line 3942
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$executeCallback$0(Ljava/lang/Throwable;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "error"    # Ljava/lang/Throwable;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Ljava/lang/Boolean;

    .line 6452
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6454
    .local v0, "token":J
    if-eqz p0, :cond_0

    .line 6455
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 6457
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6460
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6461
    nop

    .line 6462
    return-void

    .line 6460
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6461
    throw v2
.end method

.method static synthetic blacklist lambda$executeCallback$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Ljava/lang/Boolean;
    .param p3, "error"    # Ljava/lang/Throwable;

    .line 6451
    new-instance v0, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p3, p1, p2}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Throwable;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeCallback$11(Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;ILjava/lang/String;)V
    .locals 0
    .param p0, "callback"    # Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 14407
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;->onInstallUpdateError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$isPreferentialNetworkServiceEnabled$6(Landroid/app/admin/PreferentialNetworkServiceConfig;)Z
    .locals 1
    .param p0, "c"    # Landroid/app/admin/PreferentialNetworkServiceConfig;

    .line 11457
    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setPermissionGrantState$7(Ljava/util/concurrent/CompletableFuture;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "result"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "b"    # Landroid/os/Bundle;

    .line 12376
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public static blacklist operationSafetyReasonToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "reason"    # I

    .line 3936
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    const-string v1, "OPERATION_SAFETY_REASON_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist operationToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "operation"    # I

    .line 3847
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    const-string v1, "OPERATION_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-r throwIfParentInstance(Ljava/lang/String;)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;

    .line 13421
    iget-boolean v0, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    if-nez v0, :cond_0

    .line 13424
    return-void

    .line 13422
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be called on the parent instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o wipeDataInternal(ILjava/lang/String;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "wipeReasonForUser"    # Ljava/lang/String;

    .line 6350
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6352
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->wipeDataWithReason(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6355
    goto :goto_0

    .line 6353
    :catch_0
    move-exception v0

    .line 6354
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6357
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist acknowledgeDeviceCompliant()V
    .locals 2

    .line 15052
    const-string v0, "acknowledgeDeviceCompliant"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15053
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15055
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->acknowledgeDeviceCompliant()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15058
    goto :goto_0

    .line 15056
    :catch_0
    move-exception v0

    .line 15057
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15060
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist acknowledgeNewUserDisclaimer()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 3982
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 3984
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->acknowledgeNewUserDisclaimer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3987
    goto :goto_0

    .line 3985
    :catch_0
    move-exception v0

    .line 3986
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 3989
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I

    .line 10085
    const-string v0, "addCrossProfileIntentFilter"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10086
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10088
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10091
    goto :goto_0

    .line 10089
    :catch_0
    move-exception v0

    .line 10090
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10093
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 11930
    const-string v0, "addCrossProfileWidgetProvider"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11931
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11933
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 11934
    :catch_0
    move-exception v0

    .line 11935
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11938
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 14054
    const-string v0, "addOverrideApn"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14055
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14057
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 14058
    :catch_0
    move-exception v0

    .line 14059
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14062
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "activity"    # Landroid/content/ComponentName;

    .line 9523
    const-string v0, "addPersistentPreferredActivity"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9524
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9526
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9529
    goto :goto_0

    .line 9527
    :catch_0
    move-exception v0

    .line 9528
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9531
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist addUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;

    .line 10883
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10885
    const/4 v1, 0x1

    :try_start_0
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10888
    goto :goto_0

    .line 10886
    :catch_0
    move-exception v0

    .line 10887
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10890
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist addUserRestrictionForKnox(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 17264
    const-string v0, "addUserRestriction"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17265
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 17267
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {v0, p1, p2, v1, p3}, Landroid/app/admin/IDevicePolicyManager;->setUserRestrictionForKnox(Landroid/content/ComponentName;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17270
    goto :goto_0

    .line 17268
    :catch_0
    move-exception v0

    .line 17269
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17272
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o approveCaCert(Ljava/lang/String;IZ)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "approval"    # Z

    .line 6934
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6936
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->approveCaCert(Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6937
    :catch_0
    move-exception v0

    .line 6938
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6941
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 10
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "serviceIntent"    # Landroid/content/Intent;
    .param p3, "conn"    # Landroid/content/ServiceConnection;
    .param p4, "flags"    # I
    .param p5, "targetUser"    # Landroid/os/UserHandle;

    .line 13641
    const-string v0, "bindDeviceAdminServiceAsUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13644
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 13645
    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    .line 13644
    invoke-virtual {v0, p3, v1, p4}, Landroid/content/Context;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    move-result-object v7

    .line 13646
    .local v7, "sd":Landroid/app/IServiceConnection;
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 13647
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 13648
    invoke-virtual {v0}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v4

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    .line 13649
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 13647
    move-object v3, p1

    move-object v6, p2

    move v8, p4

    invoke-interface/range {v2 .. v9}, Landroid/app/admin/IDevicePolicyManager;->bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 13650
    .end local v7    # "sd":Landroid/app/IServiceConnection;
    :catch_0
    move-exception v0

    .line 13651
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist canAdminGrantSensorsPermissions()Z
    .locals 2

    .line 15359
    const-string v0, "canAdminGrantSensorsPermissions"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15360
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 15361
    const/4 v0, 0x0

    return v0

    .line 15364
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->canAdminGrantSensorsPermissionsForUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 15365
    :catch_0
    move-exception v0

    .line 15366
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist canProfileOwnerResetPasswordWhenLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 15096
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15098
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->canProfileOwnerResetPasswordWhenLocked(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 15099
    :catch_0
    move-exception v0

    .line 15100
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15103
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist canUsbDataSignalingBeDisabled()Z
    .locals 2

    .line 15495
    const-string v0, "canUsbDataSignalingBeDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15496
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15498
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->canUsbDataSignalingBeDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 15499
    :catch_0
    move-exception v0

    .line 15500
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15503
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist checkProvisioningPrecondition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12461
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->checkProvisioningPrecondition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 12462
    :catch_0
    move-exception v0

    .line 12463
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;

    .line 13806
    const-string v0, "clearAppData"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13807
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13808
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13810
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    new-instance v1, Landroid/app/admin/DevicePolicyManager$1;

    invoke-direct {v1, p0, p3, p4}, Landroid/app/admin/DevicePolicyManager$1;-><init>(Landroid/app/admin/DevicePolicyManager;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$OnClearApplicationUserDataListener;)V

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13819
    nop

    .line 13820
    return-void

    .line 13817
    :catch_0
    move-exception v0

    .line 13818
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 10111
    const-string v0, "clearCrossProfileIntentFilters"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10112
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10114
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10117
    goto :goto_0

    .line 10115
    :catch_0
    move-exception v0

    .line 10116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10119
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist clearDeviceOwnerApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8972
    const-string v0, "clearDeviceOwnerApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8973
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8975
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->clearDeviceOwner(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8978
    goto :goto_0

    .line 8976
    :catch_0
    move-exception v0

    .line 8977
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8980
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist clearOrganizationId()V
    .locals 2

    .line 15216
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 15217
    return-void

    .line 15220
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->clearOrganizationIdForUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15223
    nop

    .line 15224
    return-void

    .line 15221
    :catch_0
    move-exception v0

    .line 15222
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 9546
    const-string v0, "clearPackagePersistentPreferredActivities"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9547
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9549
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9552
    goto :goto_0

    .line 9550
    :catch_0
    move-exception v0

    .line 9551
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9554
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist clearProfileOwner(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9092
    const-string v0, "clearProfileOwner"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9093
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9095
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->clearProfileOwner(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9098
    goto :goto_0

    .line 9096
    :catch_0
    move-exception v0

    .line 9097
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9100
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist clearResetPasswordToken(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 5918
    const-string v0, "clearResetPasswordToken"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5919
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5921
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->clearResetPasswordToken(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5922
    :catch_0
    move-exception v0

    .line 5923
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5926
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o clearSystemUpdatePolicyFreezePeriodRecord()V
    .locals 2

    .line 12073
    const-string v0, "clearSystemUpdatePolicyFreezePeriodRecord"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12074
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 12075
    return-void

    .line 12078
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->clearSystemUpdatePolicyFreezePeriodRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12081
    nop

    .line 12082
    return-void

    .line 12079
    :catch_0
    move-exception v0

    .line 12080
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;

    .line 10910
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10912
    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10915
    goto :goto_0

    .line 10913
    :catch_0
    move-exception v0

    .line 10914
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10917
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist clearUserRestrictionForKnox(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 17285
    const-string v0, "clearUserRestriction"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17286
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 17288
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1, p2, v1, p3}, Landroid/app/admin/IDevicePolicyManager;->setUserRestrictionForKnox(Landroid/content/ComponentName;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17291
    goto :goto_0

    .line 17289
    :catch_0
    move-exception v0

    .line 17290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17293
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "restriction"    # Ljava/lang/String;

    .line 10965
    const-string v0, "createAdminSupportIntent"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10966
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10968
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10969
    :catch_0
    move-exception v0

    .line 10970
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10973
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "profileOwner"    # Landroid/content/ComponentName;
    .param p4, "adminExtras"    # Landroid/os/PersistableBundle;
    .param p5, "flags"    # I

    .line 10623
    const-string v0, "createAndManageUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10625
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10628
    :catch_0
    move-exception v0

    .line 10629
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10626
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 10627
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/os/UserManager$UserOperationException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v3}, Landroid/os/UserManager$UserOperationException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public whitelist createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;)Landroid/os/UserHandle;
    .locals 4
    .param p1, "provisioningParams"    # Landroid/app/admin/ManagedProfileProvisioningParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/admin/ProvisioningException;
        }
    .end annotation

    .line 15249
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 15250
    const/4 v0, 0x0

    return-object v0

    .line 15253
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 15254
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 15253
    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 15257
    :catch_0
    move-exception v0

    .line 15258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15255
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 15256
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/app/admin/ProvisioningException;

    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getErrorMessage(Landroid/os/ServiceSpecificException;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/admin/ProvisioningException;-><init>(Ljava/lang/Exception;ILjava/lang/String;)V

    throw v1
.end method

.method public whitelist createProvisioningIntentFromNfcIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p1, "nfcIntent"    # Landroid/content/Intent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15568
    invoke-static {p1}, Landroid/app/admin/ProvisioningIntentHelper;->createProvisioningIntentFromNfcIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist enableSystemApp(Landroid/content/ComponentName;Landroid/content/Intent;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 11108
    const-string v0, "enableSystemApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11109
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11111
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->enableSystemAppWithIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 11112
    :catch_0
    move-exception v0

    .line 11113
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11116
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 11083
    const-string v0, "enableSystemApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11084
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11086
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11089
    goto :goto_0

    .line 11087
    :catch_0
    move-exception v0

    .line 11088
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11091
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V
    .locals 2
    .param p1, "managedProfileUser"    # Landroid/os/UserHandle;
    .param p2, "migratedAccount"    # Landroid/accounts/Account;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15273
    const-string/jumbo v0, "managedProfileUser can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15274
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15278
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15281
    nop

    .line 15282
    return-void

    .line 15279
    :catch_0
    move-exception v0

    .line 15280
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15275
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find DevicePolicyManagerService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist forceNetworkLogs()J
    .locals 2

    .line 12840
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 12841
    const-wide/16 v0, -0x1

    return-wide v0

    .line 12844
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->forceNetworkLogs()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 12845
    :catch_0
    move-exception v0

    .line 12846
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 13340
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13343
    nop

    .line 13344
    return-void

    .line 13341
    :catch_0
    move-exception v0

    .line 13342
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o forceSecurityLogs()J
    .locals 2

    .line 12858
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 12859
    const-wide/16 v0, 0x0

    return-wide v0

    .line 12862
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->forceSecurityLogs()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 12863
    :catch_0
    move-exception v0

    .line 12864
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist forceUpdateUserSetupComplete(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 13413
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->forceUpdateUserSetupComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13416
    nop

    .line 13417
    return-void

    .line 13414
    :catch_0
    move-exception v0

    .line 13415
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Landroid/security/keystore/KeyGenParameterSpec;I)Landroid/security/AttestedKeyPair;
    .locals 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySpec"    # Landroid/security/keystore/KeyGenParameterSpec;
    .param p4, "idAttestationFlags"    # I

    .line 7441
    const-string v0, "generateKeyPair"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7443
    const/4 v0, 0x0

    :try_start_0
    new-instance v5, Landroid/security/keystore/ParcelableKeyGenParameterSpec;

    invoke-direct {v5, p3}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;-><init>(Landroid/security/keystore/KeyGenParameterSpec;)V

    .line 7445
    .local v5, "parcelableSpec":Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    new-instance v7, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v7}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    .line 7448
    .local v7, "attestationChain":Landroid/security/keymaster/KeymasterCertificateChain;
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 7449
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 7448
    move-object v2, p1

    move-object v4, p2

    move v6, p4

    invoke-interface/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager;->generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;ILandroid/security/keymaster/KeymasterCertificateChain;)Z

    move-result v1

    .line 7451
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 7452
    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Error generating key via DevicePolicyManagerService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7453
    return-object v0

    .line 7456
    :cond_0
    invoke-virtual {p3}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v2

    .line 7457
    .local v2, "alias":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/security/KeyChain;->getKeyPair(Landroid/content/Context;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7458
    .local v3, "keyPair":Ljava/security/KeyPair;
    const/4 v4, 0x0

    .line 7460
    .local v4, "outputChain":[Ljava/security/cert/Certificate;
    :try_start_1
    invoke-static {v7}, Landroid/security/keystore/AttestationUtils;->isChainValid(Landroid/security/keymaster/KeymasterCertificateChain;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7461
    invoke-static {v7}, Landroid/security/keystore/AttestationUtils;->parseCertificateChain(Landroid/security/keymaster/KeymasterCertificateChain;)[Ljava/security/cert/X509Certificate;

    move-result-object v6
    :try_end_1
    .catch Landroid/security/keystore/KeyAttestationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/security/KeyChainException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v6

    .line 7467
    :cond_1
    nop

    .line 7468
    :try_start_2
    new-instance v6, Landroid/security/AttestedKeyPair;

    invoke-direct {v6, v3, v4}, Landroid/security/AttestedKeyPair;-><init>(Ljava/security/KeyPair;[Ljava/security/cert/Certificate;)V

    return-object v6

    .line 7463
    :catch_0
    move-exception v6

    .line 7464
    .local v6, "e":Landroid/security/keystore/KeyAttestationException;
    sget-object v8, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing attestation chain for alias "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7465
    iget-object v8, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v9, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, p1, v9, v2}, Landroid/app/admin/IDevicePolicyManager;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/security/KeyChainException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1

    .line 7466
    return-object v0

    .line 7476
    .end local v1    # "success":Z
    .end local v2    # "alias":Ljava/lang/String;
    .end local v3    # "keyPair":Ljava/security/KeyPair;
    .end local v4    # "outputChain":[Ljava/security/cert/Certificate;
    .end local v5    # "parcelableSpec":Landroid/security/keystore/ParcelableKeyGenParameterSpec;
    .end local v6    # "e":Landroid/security/keystore/KeyAttestationException;
    .end local v7    # "attestationChain":Landroid/security/keymaster/KeymasterCertificateChain;
    :catch_1
    move-exception v0

    .line 7477
    .local v0, "e":Landroid/os/ServiceSpecificException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Key Generation failure: %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7478
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v1, :pswitch_data_0

    .line 7482
    new-instance v1, Ljava/lang/RuntimeException;

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 7483
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "Unknown error while generating key: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7480
    :pswitch_0
    new-instance v1, Landroid/security/keystore/StrongBoxUnavailableException;

    const-string v2, "No StrongBox for key generation."

    invoke-direct {v1, v2}, Landroid/security/keystore/StrongBoxUnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7473
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :catch_2
    move-exception v1

    .line 7474
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Interrupted while generating key"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7475
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 7471
    :catch_3
    move-exception v1

    .line 7472
    .local v1, "e":Landroid/security/KeyChainException;
    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to generate key"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7485
    .end local v1    # "e":Landroid/security/KeyChainException;
    :goto_0
    nop

    .line 7486
    return-object v0

    .line 7469
    :catch_4
    move-exception v0

    .line 7470
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .locals 2

    .line 11203
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 11213
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "parentInstance"    # Z

    .line 11222
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11224
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(IZ)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 11225
    :catch_0
    move-exception v0

    .line 11226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11230
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getActiveAdmins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 4061
    const-string v0, "getActiveAdmins"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4062
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getActiveAdminsAsUser(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 4071
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4073
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4074
    :catch_0
    move-exception v0

    .line 4075
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4078
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getActualDeviceOwnerMdm()Ljava/lang/String;
    .locals 3

    .line 14254
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14256
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getActualDeviceOwnerMDM()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14259
    goto :goto_0

    .line 14257
    :catch_0
    move-exception v0

    .line 14258
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14261
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/Set;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13261
    const-string v0, "getAffiliationIds"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13263
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 13264
    :catch_0
    move-exception v0

    .line 13265
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAggregatedPasswordComplexityForUser(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 5508
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getAggregatedPasswordComplexityForUser(IZ)I

    move-result v0

    return v0
.end method

.method public blacklist getAggregatedPasswordComplexityForUser(IZ)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "deviceWideOnly"    # Z

    .line 5521
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 5522
    const/4 v0, 0x0

    return v0

    .line 5526
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getAggregatedPasswordComplexityForUser(IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5527
    :catch_0
    move-exception v0

    .line 5528
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getAllCrossProfilePackages()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14709
    const-string v0, "getAllCrossProfilePackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14710
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14712
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getAllCrossProfilePackages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 14713
    :catch_0
    move-exception v0

    .line 14714
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14717
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAlwaysOnVpnLockdownWhitelist(Landroid/content/ComponentName;)Ljava/util/Set;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8041
    const-string v0, "getAlwaysOnVpnLockdownWhitelist"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8042
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 8044
    nop

    .line 8045
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getAlwaysOnVpnLockdownAllowlist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 8046
    .local v0, "allowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-object v1

    .line 8047
    .end local v0    # "allowlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 8048
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8051
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-object v1
.end method

.method public blacklist getAlwaysOnVpnPackage()Ljava/lang/String;
    .locals 2

    .line 8084
    const-string v0, "getAlwaysOnVpnPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8085
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8087
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8088
    :catch_0
    move-exception v0

    .line 8089
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8092
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8064
    const-string v0, "getAlwaysOnVpnPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8065
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8067
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8068
    :catch_0
    move-exception v0

    .line 8069
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8072
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 10852
    const-string v0, "getApplicationRestrictions"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10853
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10855
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10857
    :catch_0
    move-exception v0

    .line 10858
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10861
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9637
    const-string v0, "getApplicationRestrictionsManagingPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9638
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9640
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9641
    :catch_0
    move-exception v0

    .line 9642
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9645
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAutoTimeEnabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8430
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8432
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getAutoTimeEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8433
    :catch_0
    move-exception v0

    .line 8434
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8437
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAutoTimeRequired()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8388
    const-string v0, "getAutoTimeRequired"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8389
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8391
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getAutoTimeRequired()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8392
    :catch_0
    move-exception v0

    .line 8393
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8396
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAutoTimeZoneEnabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8472
    const-string v0, "getAutoTimeZone"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8473
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8475
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getAutoTimeZoneEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8476
    :catch_0
    move-exception v0

    .line 8477
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8480
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 13663
    const-string v0, "getBindDeviceAdminTargetUsers"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13665
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 13666
    :catch_0
    move-exception v0

    .line 13667
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 10039
    const-string v0, "getBluetoothContactSharingDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10040
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10042
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10043
    :catch_0
    move-exception v0

    .line 10044
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10047
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getBluetoothContactSharingDisabled(Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10061
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10063
    nop

    .line 10064
    :try_start_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 10063
    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getBluetoothContactSharingDisabledForUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10065
    :catch_0
    move-exception v0

    .line 10066
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10069
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getBluetoothContactSharingEnabledForKnox(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 17243
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 17245
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getBluetoothContactSharingEnabledForKnox(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 17246
    :catch_0
    move-exception v0

    .line 17247
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17250
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCameraDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8148
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public greylist getCameraDisabled(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 8154
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8156
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8157
    :catch_0
    move-exception v0

    .line 8158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8161
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7800
    const-string v0, "getCertInstallerPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7801
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7803
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7804
    :catch_0
    move-exception v0

    .line 7805
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7808
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCrossProfileCalendarPackages()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14615
    const-string v0, "getCrossProfileCalendarPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14616
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1

    .line 14618
    nop

    .line 14619
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    .line 14618
    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCalendarPackagesForUser(I)Ljava/util/List;

    move-result-object v0

    .line 14620
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    .line 14621
    .end local v0    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 14622
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14625
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/Set;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14546
    const-string v0, "getCrossProfileCalendarPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14547
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1

    .line 14549
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 14550
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    .line 14551
    .end local v0    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 14552
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14555
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 9845
    const-string v0, "getCrossProfileCallerIdDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9846
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9848
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9849
    :catch_0
    move-exception v0

    .line 9850
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9853
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 9863
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9865
    :try_start_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9866
    :catch_0
    move-exception v0

    .line 9867
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9870
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 9919
    const-string v0, "getCrossProfileContactsSearchDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9920
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9922
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9923
    :catch_0
    move-exception v0

    .line 9924
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9927
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCrossProfileContactsSearchDisabled(Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 9950
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9952
    nop

    .line 9953
    :try_start_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileContactsSearchDisabledForUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9952
    return v0

    .line 9954
    :catch_0
    move-exception v0

    .line 9955
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9958
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/Set;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14674
    const-string v0, "getCrossProfilePackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14675
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14677
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 14678
    :catch_0
    move-exception v0

    .line 14679
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14682
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11980
    const-string v0, "getCrossProfileWidgetProviders"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11981
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1

    .line 11983
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11984
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 11985
    return-object v0

    .line 11989
    .end local v0    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 11987
    :catch_0
    move-exception v0

    .line 11988
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11991
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getCurrentFailedBiometricAttempts(I)I
    .locals 2
    .param p1, "userHandle"    # I

    .line 5641
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5643
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedBiometricAttempts(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5644
    :catch_0
    move-exception v0

    .line 5645
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5649
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getCurrentFailedPasswordAttempts()I
    .locals 1

    .line 5598
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    return v0
.end method

.method public greylist getCurrentFailedPasswordAttempts(I)I
    .locals 2
    .param p1, "userHandle"    # I

    .line 5613
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5615
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getCurrentFailedPasswordAttempts(IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5616
    :catch_0
    move-exception v0

    .line 5617
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5620
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getDefaultCrossProfilePackages()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14730
    const-string v0, "getDefaultCrossProfilePackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14731
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14733
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getDefaultCrossProfilePackages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 14734
    :catch_0
    move-exception v0

    .line 14735
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14738
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "delegationScope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7882
    const-string v0, "getDelegatePackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7883
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7885
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7886
    :catch_0
    move-exception v0

    .line 7887
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7890
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "delegatedPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7858
    const-string v0, "getDelegatedScopes"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7859
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7861
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7862
    :catch_0
    move-exception v0

    .line 7863
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7866
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDeviceOwner()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8992
    const-string v0, "getDeviceOwner"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8993
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v0

    .line 8994
    .local v0, "name":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public whitelist getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8891
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;
    .locals 1

    .line 8877
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentInner(Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;
    .locals 2

    .line 9185
    const-string v0, "getDeviceOwnerLockScreenInfo"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9186
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9188
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9189
    :catch_0
    move-exception v0

    .line 9190
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9193
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDeviceOwnerNameOnAnyUser()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9028
    const-string v0, "getDeviceOwnerNameOnAnyUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9029
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9031
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9032
    :catch_0
    move-exception v0

    .line 9033
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9036
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13132
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetDeviceOwnerOrganizationNameCache:Landroid/os/IpcDataCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDeviceOwnerType(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 15412
    const-string v0, "getDeviceOwnerType"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15413
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15415
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 15416
    :catch_0
    move-exception v0

    .line 15417
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15420
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDeviceOwnerUser()Landroid/os/UserHandle;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 8924
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1

    .line 8926
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v0

    .line 8928
    .local v0, "userId":I
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 8929
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 8933
    .end local v0    # "userId":I
    :cond_0
    goto :goto_0

    .line 8931
    :catch_0
    move-exception v0

    .line 8932
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8935
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getDeviceOwnerUserId()I
    .locals 2

    .line 8942
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8944
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8945
    :catch_0
    move-exception v0

    .line 8946
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8949
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/16 v0, -0x2710

    return v0
.end method

.method public whitelist getDevicePolicyManagementRoleHolderPackage()Ljava/lang/String;
    .locals 2

    .line 15722
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    const v1, 0x104003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 15724
    .local v0, "devicePolicyManagementConfig":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->extractPackageNameFromDeviceManagerConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getDevicePolicyManagementRoleHolderUpdaterPackage()Ljava/lang/String;
    .locals 2

    .line 15738
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    const v1, 0x1040335

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 15740
    .local v0, "devicePolicyManagementUpdaterConfig":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15741
    const/4 v1, 0x0

    return-object v1

    .line 15743
    :cond_0
    return-object v0
.end method

.method public greylist-max-o getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "provisioningAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13883
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 13884
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13883
    return-object v0

    .line 13885
    :catch_0
    move-exception v0

    .line 13886
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getDoNotAskCredentialsOnBoot()Z
    .locals 2

    .line 5660
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5662
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5663
    :catch_0
    move-exception v0

    .line 5664
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5667
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 14005
    const-string v0, "getEndUserSessionMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14007
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 14008
    :catch_0
    move-exception v0

    .line 14009
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getEnforcingAdminAndUserDetails(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "restriction"    # Ljava/lang/String;

    .line 10987
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10989
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getEnforcingAdminAndUserDetails(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10990
    :catch_0
    move-exception v0

    .line 10991
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10994
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getEnrollmentSpecificId()Ljava/lang/String;
    .locals 2

    .line 15163
    const-string v0, "getEnrollmentSpecificId"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15164
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 15165
    const-string v0, ""

    return-object v0

    .line 15169
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getEnrollmentSpecificId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 15170
    :catch_0
    move-exception v0

    .line 15171
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 6404
    const-string v0, "getFactoryResetProtectionPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6405
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6407
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6408
    :catch_0
    move-exception v0

    .line 6409
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6412
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getForceEphemeralUsers(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8509
    const-string v0, "getForceEphemeralUsers"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8510
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8512
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getForceEphemeralUsers(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8513
    :catch_0
    move-exception v0

    .line 8514
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8517
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getGlobalPrivateDnsHost(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 14439
    const-string/jumbo v0, "setGlobalPrivateDns"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14440
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 14441
    const/4 v0, 0x0

    return-object v0

    .line 14445
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getGlobalPrivateDnsHost(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 14446
    :catch_0
    move-exception v0

    .line 14447
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGlobalPrivateDnsMode(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 14419
    const-string/jumbo v0, "setGlobalPrivateDns"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14420
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 14421
    const/4 v0, 0x0

    return v0

    .line 14425
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getGlobalPrivateDnsMode(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 14426
    :catch_0
    move-exception v0

    .line 14427
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getGlobalProxyAdmin()Landroid/content/ComponentName;
    .locals 2

    .line 6586
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6588
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6589
    :catch_0
    move-exception v0

    .line 6590
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6593
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getInstalledCaCerts(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 7036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7037
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-string v1, "getInstalledCaCerts"

    invoke-direct {p0, v1}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7038
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 7040
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 7041
    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 7042
    .local v1, "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-virtual {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7044
    .local v3, "alias":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v1, v3}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7047
    goto :goto_1

    .line 7045
    :catch_0
    move-exception v4

    .line 7046
    .local v4, "ce":Ljava/security/cert/CertificateException;
    :try_start_2
    sget-object v5, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not encode certificate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 7048
    .end local v3    # "alias":Ljava/lang/String;
    .end local v4    # "ce":Ljava/security/cert/CertificateException;
    :goto_1
    goto :goto_0

    .line 7051
    .end local v1    # "certStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    :cond_0
    goto :goto_2

    .line 7049
    :catch_1
    move-exception v1

    .line 7050
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 7053
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_2
    return-object v0
.end method

.method public whitelist getKeepUninstalledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10509
    const-string v0, "getKeepUninstalledPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10510
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10512
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10513
    :catch_0
    move-exception v0

    .line 10514
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10517
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getKeyPairGrants(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 7546
    const-string v0, "getKeyPairGrants"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7549
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getKeyPairGrants(Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableGranteeMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/ParcelableGranteeMap;->getPackagesByUid()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7550
    :catch_0
    move-exception v0

    .line 7551
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 7553
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8603
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 8614
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8615
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetKeyGuardDisabledFeaturesCache:Landroid/os/IpcDataCache;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 8617
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLastBugReportRequestTime()J
    .locals 2

    .line 13704
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getLastBugReportRequestTime()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 13705
    :catch_0
    move-exception v0

    .line 13706
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLastNetworkLogRetrievalTime()J
    .locals 2

    .line 13725
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getLastNetworkLogRetrievalTime()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 13726
    :catch_0
    move-exception v0

    .line 13727
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLastSecurityLogRetrievalTime()J
    .locals 2

    .line 13685
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getLastSecurityLogRetrievalTime()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 13686
    :catch_0
    move-exception v0

    .line 13687
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getLockTaskFeatures(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 11395
    const-string v0, "getLockTaskFeatures"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11396
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11398
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getLockTaskFeatures(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 11399
    :catch_0
    move-exception v0

    .line 11400
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11403
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 11326
    const-string v0, "getLockTaskPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11327
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11329
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 11330
    :catch_0
    move-exception v0

    .line 11331
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11334
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLogoutUser()Landroid/os/UserHandle;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 10784
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getLogoutUserId()I

    move-result v0

    .line 10785
    .local v0, "userId":I
    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    .line 10786
    .end local v0    # "userId":I
    :catch_0
    move-exception v0

    .line 10787
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 12610
    const-string v0, "getLongSupportMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12611
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 12613
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 12614
    :catch_0
    move-exception v0

    .line 12615
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12618
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 12654
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 12656
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 12657
    :catch_0
    move-exception v0

    .line 12658
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12661
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 15021
    const-string v0, "getManagedProfileMaximumTimeOff"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15022
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15024
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 15025
    :catch_0
    move-exception v0

    .line 15026
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15029
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 5731
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 5738
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5740
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5742
    :catch_0
    move-exception v0

    .line 5743
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5746
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMaximumTimeToLock(Landroid/content/ComponentName;)J
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 6041
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-r getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 6047
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6049
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 6050
    :catch_0
    move-exception v0

    .line 6051
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6054
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12914
    const-string v0, "getMeteredDataDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12915
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 12917
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 12918
    :catch_0
    move-exception v0

    .line 12919
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12922
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getMinimumRequiredWifiSecurityLevel()I
    .locals 2

    .line 15604
    const-string v0, "getMinimumRequiredWifiSecurityLevel"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15605
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 15606
    const/4 v0, 0x0

    return v0

    .line 15609
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getMinimumRequiredWifiSecurityLevel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 15610
    :catch_0
    move-exception v0

    .line 15611
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNearbyAppStreamingPolicy()I
    .locals 1

    .line 8329
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getNearbyAppStreamingPolicy(I)I

    move-result v0

    return v0
.end method

.method public blacklist getNearbyAppStreamingPolicy(I)I
    .locals 2
    .param p1, "userId"    # I

    .line 8334
    const-string v0, "getNearbyAppStreamingPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8335
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 8336
    const/4 v0, 0x0

    return v0

    .line 8339
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getNearbyAppStreamingPolicy(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8340
    :catch_0
    move-exception v0

    .line 8341
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNearbyNotificationStreamingPolicy()I
    .locals 1

    .line 8282
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getNearbyNotificationStreamingPolicy(I)I

    move-result v0

    return v0
.end method

.method public blacklist getNearbyNotificationStreamingPolicy(I)I
    .locals 2
    .param p1, "userId"    # I

    .line 8287
    const-string v0, "getNearbyNotificationStreamingPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8288
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 8289
    const/4 v0, 0x0

    return v0

    .line 8292
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getNearbyNotificationStreamingPolicy(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8293
    :catch_0
    move-exception v0

    .line 8294
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOrganizationColor(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13052
    const-string v0, "getOrganizationColor"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13054
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationColor(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 13055
    :catch_0
    move-exception v0

    .line 13056
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getOrganizationColorForUser(I)I
    .locals 2
    .param p1, "userHandle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13072
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 13073
    :catch_0
    move-exception v0

    .line 13074
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 13108
    const-string v0, "getOrganizationName"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13110
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 13111
    :catch_0
    move-exception v0

    .line 13112
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getOrganizationNameForUser(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "userHandle"    # I

    .line 13148
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetOrganizationNameForUserCache:Landroid/os/IpcDataCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    .line 14145
    const-string v0, "getOverrideApns"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14146
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14148
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 14149
    :catch_0
    move-exception v0

    .line 14150
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14153
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13767
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 13768
    :catch_0
    move-exception v0

    .line 13769
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 12732
    const-string v0, "getParentProfileInstance"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12734
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isManagedProfile(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12737
    new-instance v0, Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V

    return-object v0

    .line 12735
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The current user does not have a parent profile."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/admin/DevicePolicyManager;
    .end local p1    # "admin":Landroid/content/ComponentName;
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12738
    .restart local p0    # "this":Landroid/app/admin/DevicePolicyManager;
    .restart local p1    # "admin":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 12739
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getParentProfileInstance(Landroid/content/pm/UserInfo;)Landroid/app/admin/DevicePolicyManager;
    .locals 4
    .param p1, "uInfo"    # Landroid/content/pm/UserInfo;

    .line 12875
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 12877
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12881
    new-instance v0, Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;-><init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;Z)V

    return-object v0

    .line 12878
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have a parent profile."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPasswordComplexity()I
    .locals 2

    .line 5419
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 5420
    const/4 v0, 0x0

    return v0

    .line 5424
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordComplexity(Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5425
    :catch_0
    move-exception v0

    .line 5426
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPasswordExpiration(Landroid/content/ComponentName;)J
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 5235
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5237
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 5238
    :catch_0
    move-exception v0

    .line 5239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5242
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getPasswordExpirationTimeout(Landroid/content/ComponentName;)J
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 5207
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5209
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 5210
    :catch_0
    move-exception v0

    .line 5211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5214
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getPasswordHistoryLength(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 5263
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 5270
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5272
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5273
    :catch_0
    move-exception v0

    .line 5274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5277
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPasswordMaximumLength(I)I
    .locals 2
    .param p1, "quality"    # I

    .line 5289
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5290
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.software.secure_lock_screen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5291
    const/4 v1, 0x0

    return v1

    .line 5293
    :cond_0
    const/16 v1, 0x100

    return v1
.end method

.method public whitelist getPasswordMinimumLength(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4519
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 4525
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4527
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4528
    :catch_0
    move-exception v0

    .line 4529
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4532
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPasswordMinimumLetters(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4794
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 4800
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4802
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4803
    :catch_0
    move-exception v0

    .line 4804
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4807
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4703
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 4709
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4711
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4712
    :catch_0
    move-exception v0

    .line 4713
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4716
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPasswordMinimumMetrics(I)Landroid/app/admin/PasswordMetrics;
    .locals 1
    .param p1, "userHandle"    # I

    .line 5088
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;
    .locals 2
    .param p1, "userHandle"    # I
    .param p2, "deviceWideOnly"    # Z

    .line 5100
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5102
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5103
    :catch_0
    move-exception v0

    .line 5104
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5107
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5066
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 5072
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5074
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5075
    :catch_0
    move-exception v0

    .line 5076
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5079
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPasswordMinimumNumeric(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4885
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 4891
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4893
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4894
    :catch_0
    move-exception v0

    .line 4895
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4898
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPasswordMinimumSymbols(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4975
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 4981
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4983
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4984
    :catch_0
    move-exception v0

    .line 4985
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4988
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4611
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 4617
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4619
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4620
    :catch_0
    move-exception v0

    .line 4621
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4624
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPasswordQuality(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4432
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getPasswordQuality(Landroid/content/ComponentName;I)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 4438
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4440
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4441
    :catch_0
    move-exception v0

    .line 4442
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4445
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 12232
    const-string v0, "getPendingSystemUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12234
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPendingSystemUpdate(Landroid/content/ComponentName;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 12235
    :catch_0
    move-exception v0

    .line 12236
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;

    .line 12417
    const-string v0, "getPermissionGrantState"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12419
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 12421
    :catch_0
    move-exception v0

    .line 12422
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPermissionPolicy(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 12285
    const-string v0, "getPermissionPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12287
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 12288
    :catch_0
    move-exception v0

    .line 12289
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPermittedAccessibilityServices(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10235
    const-string v0, "getPermittedAccessibilityServices"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10236
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10238
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10239
    :catch_0
    move-exception v0

    .line 10240
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10243
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10184
    const-string v0, "getPermittedAccessibilityServices"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10185
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10187
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10188
    :catch_0
    move-exception v0

    .line 10189
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10192
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10464
    const-string v0, "getPermittedCrossProfileNotificationListeners"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10465
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10467
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10468
    :catch_0
    move-exception v0

    .line 10469
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10472
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPermittedInputMethods()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10405
    const-string v0, "getPermittedInputMethods"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10406
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10408
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethodsAsUser(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10409
    :catch_0
    move-exception v0

    .line 10410
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10413
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10316
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10318
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethods(Landroid/content/ComponentName;Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10319
    :catch_0
    move-exception v0

    .line 10320
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10323
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPermittedInputMethodsForCurrentUser()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10376
    const-string v0, "getPermittedInputMethodsForCurrentUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10377
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10379
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getPermittedInputMethodsAsUser(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10380
    :catch_0
    move-exception v0

    .line 10381
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10384
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 14947
    const-string v0, "getPersonalAppsSuspendedReasons"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14948
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14950
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 14951
    :catch_0
    move-exception v0

    .line 14952
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14955
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPolicyExemptApps()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15533
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 15536
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->listPolicyExemptApps()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 15537
    :catch_0
    move-exception v0

    .line 15538
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 15758
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15759
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15761
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 15762
    :catch_0
    move-exception v0

    .line 15763
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15766
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPreferentialNetworkServiceConfigs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;"
        }
    .end annotation

    .line 11498
    const-string v0, "getPreferentialNetworkServiceConfigs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11499
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 11500
    sget-object v0, Landroid/app/admin/PreferentialNetworkServiceConfig;->DEFAULT:Landroid/app/admin/PreferentialNetworkServiceConfig;

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 11503
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getPreferentialNetworkServiceConfigs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 11504
    :catch_0
    move-exception v0

    .line 11505
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getProfileOwner()Landroid/content/ComponentName;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9339
    const-string v0, "getProfileOwner"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9340
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getProfileOwnerAsUser(I)Landroid/content/ComponentName;
    .locals 2
    .param p1, "userId"    # I

    .line 9365
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9367
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9368
    :catch_0
    move-exception v0

    .line 9369
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9372
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProfileOwnerAsUser(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 9350
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9352
    :try_start_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9353
    :catch_0
    move-exception v0

    .line 9354
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9357
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getProfileOwnerName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9414
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9416
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9417
    :catch_0
    move-exception v0

    .line 9418
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9421
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getProfileOwnerNameAsUser(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9437
    const-string v0, "getProfileOwnerNameAsUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9438
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9440
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9441
    :catch_0
    move-exception v0

    .line 9442
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9445
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 9386
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9387
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mGetProfileOwnerOrDeviceOwnerSupervisionComponentCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0

    .line 9389
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getProfileWithMinimumFailedPasswordsForWipe(I)I
    .locals 2
    .param p1, "userHandle"    # I

    .line 5760
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5762
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(IZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5764
    :catch_0
    move-exception v0

    .line 5765
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5768
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/16 v0, -0x2710

    return v0
.end method

.method public blacklist getProxyParameters(Ljava/net/Proxy;Ljava/util/List;)Landroid/util/Pair;
    .locals 8
    .param p1, "proxySpec"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6525
    .local p2, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 6526
    .local v0, "sa":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    .line 6527
    .local v1, "hostName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 6529
    .local v2, "port":I
    if-nez p2, :cond_0

    .line 6530
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .local v3, "trimmedExclList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 6532
    .end local v3    # "trimmedExclList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6533
    .restart local v3    # "trimmedExclList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6534
    .local v5, "exclDomain":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6535
    .end local v5    # "exclDomain":Ljava/lang/String;
    goto :goto_0

    .line 6537
    :cond_1
    :goto_1
    invoke-static {v1, v2, v3}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v4

    .line 6540
    .local v4, "info":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6544
    new-instance v5, Landroid/util/Pair;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 6541
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method

.method public greylist-max-o getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;

    .line 8655
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8657
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8660
    goto :goto_0

    .line 8658
    :catch_0
    move-exception v0

    .line 8659
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8662
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist getRequiredPasswordComplexity()I
    .locals 2

    .line 5488
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 5489
    const/4 v0, 0x0

    return v0

    .line 5493
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getRequiredPasswordComplexity(Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5494
    :catch_0
    move-exception v0

    .line 5495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRequiredStrongAuthTimeout(Landroid/content/ComponentName;)J
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 6123
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-r getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 6130
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6132
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 6133
    :catch_0
    move-exception v0

    .line 6134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6137
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/32 v0, 0xf731400

    return-wide v0
.end method

.method public whitelist getResources()Landroid/app/admin/DevicePolicyResourcesManager;
    .locals 1

    .line 15666
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mResourcesManager:Landroid/app/admin/DevicePolicyResourcesManager;

    return-object v0
.end method

.method public blacklist getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 15110
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15112
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 15113
    :catch_0
    move-exception v0

    .line 15114
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15117
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getScreenCaptureDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8236
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 8241
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8243
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getScreenCaptureDisabled(Landroid/content/ComponentName;IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8244
    :catch_0
    move-exception v0

    .line 8245
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8248
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 10806
    const-string v0, "getSecondaryUsers"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10808
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10809
    :catch_0
    move-exception v0

    .line 10810
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 12564
    const-string v0, "getShortSupportMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12565
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 12567
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getShortSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 12568
    :catch_0
    move-exception v0

    .line 12569
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12572
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .line 12632
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 12634
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 12635
    :catch_0
    move-exception v0

    .line 12636
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12639
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 13990
    const-string v0, "getStartUserSessionMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13992
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 13993
    :catch_0
    move-exception v0

    .line 13994
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getStorageEncryption(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6874
    const-string v0, "getStorageEncryption"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6875
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6877
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6878
    :catch_0
    move-exception v0

    .line 6879
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6882
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getStorageEncryptionStatus()I
    .locals 1

    .line 6906
    const-string v0, "getStorageEncryptionStatus"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6907
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus(I)I

    move-result v0

    return v0
.end method

.method public greylist getStorageEncryptionStatus(I)I
    .locals 2
    .param p1, "userHandle"    # I

    .line 6913
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6915
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->getStorageEncryptionStatus(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6916
    :catch_0
    move-exception v0

    .line 6917
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6920
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;
    .locals 2

    .line 12055
    const-string v0, "getSystemUpdatePolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12056
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 12058
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 12059
    :catch_0
    move-exception v0

    .line 12060
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12063
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTransferOwnershipBundle()Landroid/os/PersistableBundle;
    .locals 2

    .line 14220
    const-string v0, "getTransferOwnershipBundle"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14222
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getTransferOwnershipBundle()Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 14223
    :catch_0
    move-exception v0

    .line 14224
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .line 9793
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .line 9801
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9803
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9805
    :catch_0
    move-exception v0

    .line 9806
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9809
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getUserControlDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14875
    const-string v0, "getUserControlDisabledPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14876
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14878
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getUserControlDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 14879
    :catch_0
    move-exception v0

    .line 14880
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14883
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUserProvisioningState()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13163
    const-string v0, "getUserProvisioningState"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13164
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 13166
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getUserProvisioningState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 13167
    :catch_0
    move-exception v0

    .line 13168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13171
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 10938
    const/4 v0, 0x0

    .line 10939
    .local v0, "ret":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_0

    .line 10941
    :try_start_0
    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->getUserRestrictions(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 10944
    goto :goto_0

    .line 10942
    :catch_0
    move-exception v1

    .line 10943
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 10946
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public whitelist getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 12501
    const-string v0, "getWifiMacAddress"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12503
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getWifiMacAddress(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 12504
    :catch_0
    move-exception v0

    .line 12505
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;
    .locals 2

    .line 15649
    const-string v0, "getWifiSsidPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15650
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 15651
    const/4 v0, 0x0

    return-object v0

    .line 15654
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 15655
    :catch_0
    move-exception v0

    .line 15656
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist grantKeyPairToApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 7514
    const-string v0, "grantKeyPairToApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7516
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 7517
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    .line 7516
    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7518
    :catch_0
    move-exception v0

    .line 7519
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 7521
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist grantKeyPairToWifiAuth(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 7604
    const-string v0, "grantKeyPairToWifiAuth"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7606
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7607
    :catch_0
    move-exception v0

    .line 7608
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 7610
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasCaCertInstalled(Landroid/content/ComponentName;[B)Z
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    .line 7087
    const-string v0, "hasCaCertInstalled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7088
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7090
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 7091
    invoke-static {p2}, Landroid/app/admin/DevicePolicyManager;->getCaCertAlias([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 7094
    :catch_0
    move-exception v0

    .line 7095
    .local v0, "ce":Ljava/security/cert/CertificateException;
    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not parse certificate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 7092
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v0

    .line 7093
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7098
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return v1
.end method

.method public blacklist hasDeviceIdentifierAccess(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 9484
    const-string v0, "hasDeviceIdentifierAccess"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9485
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 9486
    return v0

    .line 9488
    :cond_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 9490
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->checkDeviceIdentifierAccess(Ljava/lang/String;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9491
    :catch_0
    move-exception v0

    .line 9492
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9495
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    return v0
.end method

.method public whitelist hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "usesPolicy"    # I

    .line 4160
    const-string v0, "hasGrantedPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4161
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4163
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4164
    :catch_0
    move-exception v0

    .line 4165
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4168
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasKeyPair(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 7335
    const-string v0, "hasKeyPair"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7337
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->hasKeyPair(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7338
    :catch_0
    move-exception v0

    .line 7339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasLockdownAdminConfiguredNetworks(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 11654
    const-string v0, "hasLockdownAdminConfiguredNetworks"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11655
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11657
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->hasLockdownAdminConfiguredNetworks(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 11658
    :catch_0
    move-exception v0

    .line 11659
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11662
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o hasUserSetupCompleted()Z
    .locals 2

    .line 9107
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9109
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->hasUserSetupCompleted()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9110
    :catch_0
    move-exception v0

    .line 9111
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9114
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist installCaCert(Landroid/content/ComponentName;[B)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    .line 6984
    const-string v0, "installCaCert"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6985
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6987
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->installCaCert(Landroid/content/ComponentName;Ljava/lang/String;[B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6988
    :catch_0
    move-exception v0

    .line 6989
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6992
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 11138
    const-string v0, "installExistingPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11139
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11141
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 11143
    :catch_0
    move-exception v0

    .line 11144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11147
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # Ljava/security/PrivateKey;
    .param p3, "cert"    # Ljava/security/cert/Certificate;
    .param p4, "alias"    # Ljava/lang/String;

    .line 7144
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/security/cert/Certificate;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/DevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;I)Z
    .locals 15
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # Ljava/security/PrivateKey;
    .param p3, "certs"    # [Ljava/security/cert/Certificate;
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .line 7255
    move-object v1, p0

    move-object/from16 v2, p3

    const-string v0, "installKeyPair"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7256
    and-int/lit8 v0, p5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v12, v4

    goto :goto_0

    :cond_0
    move v12, v3

    .line 7258
    .local v12, "requestAccess":Z
    :goto_0
    and-int/lit8 v0, p5, 0x2

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    move v13, v4

    goto :goto_1

    :cond_1
    move v13, v3

    .line 7261
    .local v13, "isUserSelectable":Z
    :goto_1
    :try_start_0
    new-array v0, v4, [Ljava/security/cert/Certificate;

    aget-object v5, v2, v3

    aput-object v5, v0, v3

    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v9

    .line 7262
    .local v9, "pemCert":[B
    const/4 v0, 0x0

    .line 7263
    .local v0, "pemChain":[B
    array-length v5, v2

    if-le v5, v4, :cond_2

    .line 7264
    array-length v5, v2

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/Certificate;

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v4

    move-object v0, v4

    .line 7266
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    const-class v5, Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 7267
    move-object/from16 v14, p2

    :try_start_1
    invoke-virtual {v4, v14, v5}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v4

    check-cast v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v4}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v8

    .line 7268
    .local v8, "pkcs8Key":[B
    iget-object v5, v1, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v4, v1, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v6, p1

    move-object v10, v0

    move-object/from16 v11, p4

    invoke-interface/range {v5 .. v13}, Landroid/app/admin/IDevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/lang/String;[B[B[BLjava/lang/String;ZZ)Z

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    .line 7274
    .end local v0    # "pemChain":[B
    .end local v8    # "pkcs8Key":[B
    .end local v9    # "pemCert":[B
    :catch_0
    move-exception v0

    goto :goto_2

    .line 7272
    :catch_1
    move-exception v0

    goto :goto_3

    .line 7270
    :catch_2
    move-exception v0

    goto :goto_5

    .line 7274
    :catch_3
    move-exception v0

    move-object/from16 v14, p2

    .line 7275
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    sget-object v4, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v5, "Could not pem-encode certificate"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 7272
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    move-object/from16 v14, p2

    .line 7273
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_3
    sget-object v4, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v5, "Failed to obtain private key material"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7276
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    nop

    .line 7277
    :goto_4
    return v3

    .line 7270
    :catch_5
    move-exception v0

    move-object/from16 v14, p2

    .line 7271
    .local v0, "e":Landroid/os/RemoteException;
    :goto_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # Ljava/security/PrivateKey;
    .param p3, "certs"    # [Ljava/security/cert/Certificate;
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "requestAccess"    # Z

    .line 7194
    const/4 v0, 0x2

    .line 7195
    .local v0, "flags":I
    if-eqz p5, :cond_0

    .line 7196
    or-int/lit8 v0, v0, 0x1

    .line 7198
    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/DevicePolicyManager;->installKeyPair(Landroid/content/ComponentName;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public whitelist installSystemUpdate(Landroid/content/ComponentName;Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "updateFilePath"    # Landroid/net/Uri;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;

    .line 14374
    const-string v0, "installUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14375
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 14376
    return-void

    .line 14378
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "r"

    .line 14379
    invoke-virtual {v0, p2, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14380
    .local v0, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    new-instance v2, Landroid/app/admin/DevicePolicyManager$2;

    invoke-direct {v2, p0, p3, p4}, Landroid/app/admin/DevicePolicyManager$2;-><init>(Landroid/app/admin/DevicePolicyManager;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V

    invoke-interface {v1, p1, v0, v2}, Landroid/app/admin/IDevicePolicyManager;->installUpdateFromFile(Landroid/content/ComponentName;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14388
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 14378
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/admin/DevicePolicyManager;
    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "updateFilePath":Landroid/net/Uri;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;
    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 14396
    .end local v0    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Landroid/app/admin/DevicePolicyManager;
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "updateFilePath":Landroid/net/Uri;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;
    :catch_0
    move-exception v0

    .line 14397
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14398
    const/4 v1, 0x1

    .line 14399
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 14398
    invoke-direct {p0, v1, v2, p3, p4}, Landroid/app/admin/DevicePolicyManager;->executeCallback(ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V

    goto :goto_2

    .line 14390
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 14391
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14392
    const/4 v1, 0x4

    .line 14394
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 14392
    invoke-direct {p0, v1, v2, p3, p4}, Landroid/app/admin/DevicePolicyManager;->executeCallback(ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/admin/DevicePolicyManager$InstallSystemUpdateCallback;)V

    .line 14401
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_1
    nop

    .line 14402
    :goto_2
    return-void

    .line 14388
    :catch_2
    move-exception v0

    .line 14389
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 10207
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10209
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10211
    :catch_0
    move-exception v0

    .line 10212
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10215
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isActivePasswordSufficient()Z
    .locals 3

    .line 5341
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5343
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficient(IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5344
    :catch_0
    move-exception v0

    .line 5345
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5348
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isActivePasswordSufficientForDeviceRequirement()Z
    .locals 2

    .line 5384
    iget-boolean v0, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    if-eqz v0, :cond_1

    .line 5387
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5389
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isActivePasswordSufficientForDeviceRequirement()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5390
    :catch_0
    move-exception v0

    .line 5391
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5394
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 5385
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "only callable on the parent instance"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isAdminActive(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 4019
    const-string v0, "isAdminActive"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4020
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isAdminActiveAsUser(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 4028
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4030
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4031
    :catch_0
    move-exception v0

    .line 4032
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4035
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isAffiliatedUser()Z
    .locals 2

    .line 13278
    const-string v0, "isAffiliatedUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13280
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isCallingUserAffiliated()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 13281
    :catch_0
    move-exception v0

    .line 13282
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAffiliatedUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 13292
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isAffiliatedUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 13293
    :catch_0
    move-exception v0

    .line 13294
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAlwaysOnVpnLockdownEnabled()Z
    .locals 2

    .line 8018
    const-string v0, "isAlwaysOnVpnLockdownEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8019
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8021
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isAlwaysOnVpnLockdownEnabledForUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8022
    :catch_0
    move-exception v0

    .line 8023
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8026
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isAlwaysOnVpnLockdownEnabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 7995
    const-string v0, "isAlwaysOnVpnLockdownEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7996
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8002
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isAlwaysOnVpnLockdownEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8003
    :catch_0
    move-exception v0

    .line 8004
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8007
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 11059
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11061
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 11063
    :catch_0
    move-exception v0

    .line 11064
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11067
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isBackupServiceEnabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 13467
    const-string v0, "isBackupServiceEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13469
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isBackupServiceEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 13470
    :catch_0
    move-exception v0

    .line 13471
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isCaCertApproved(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .line 6950
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6952
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6953
    :catch_0
    move-exception v0

    .line 6954
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6957
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isCallerApplicationRestrictionsManagingPackage()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9661
    const-string v0, "isCallerApplicationRestrictionsManagingPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9662
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9664
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 9665
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 9664
    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isCallerApplicationRestrictionsManagingPackage(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9666
    :catch_0
    move-exception v0

    .line 9667
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9670
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 14926
    const-string v0, "isCommonCriteriaModeEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14927
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14929
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 14930
    :catch_0
    move-exception v0

    .line 14931
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14934
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isComplianceAcknowledgementRequired()Z
    .locals 2

    .line 15078
    const-string v0, "isComplianceAcknowledgementRequired"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15079
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15081
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isComplianceAcknowledgementRequired()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 15082
    :catch_0
    move-exception v0

    .line 15083
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15086
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCurrentInputMethodSetByOwner()Z
    .locals 2

    .line 13744
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isCurrentInputMethodSetByOwner()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 13745
    :catch_0
    move-exception v0

    .line 13746
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDeviceIdAttestationSupported()Z
    .locals 2

    .line 7665
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 7666
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.software.device_id_attestation"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public whitelist isDeviceManaged()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9013
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mHasDeviceOwnerCache:Landroid/os/IpcDataCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isDeviceOwnerApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 8844
    const-string v0, "isDeviceOwnerApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8845
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 8868
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUserInner(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 8856
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUserInner(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist isDeviceProvisioned()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13357
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isDeviceProvisioned()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 13358
    :catch_0
    move-exception v0

    .line 13359
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDeviceProvisioningConfigApplied()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13398
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isDeviceProvisioningConfigApplied()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 13399
    :catch_0
    move-exception v0

    .line 13400
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isDpcDownloaded()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15681
    const-string v0, "isDpcDownloaded"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15682
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15684
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isDpcDownloaded()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 15685
    :catch_0
    move-exception v0

    .line 15686
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15689
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEphemeralUser(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 10821
    const-string v0, "isEphemeralUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10823
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isEphemeralUser(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10824
    :catch_0
    move-exception v0

    .line 10825
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isFactoryResetProtectionPolicySupported()Z
    .locals 2

    .line 13783
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isFactoryResetProtectionPolicySupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 13784
    :catch_0
    move-exception v0

    .line 13785
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 10343
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10345
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10347
    :catch_0
    move-exception v0

    .line 10348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10351
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isKeyPairGrantedToWifiAuth(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 7649
    const-string v0, "isKeyPairGrantedToWifiAuth"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7651
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->isKeyPairGrantedToWifiAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7652
    :catch_0
    move-exception v0

    .line 7653
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 7655
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 11343
    const-string v0, "isLockTaskPermitted"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11344
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11346
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 11347
    :catch_0
    move-exception v0

    .line 11348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11351
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isLogoutEnabled()Z
    .locals 2

    .line 13845
    const-string v0, "isLogoutEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13847
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isLogoutEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 13848
    :catch_0
    move-exception v0

    .line 13849
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isManagedKiosk()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14773
    const-string v0, "isManagedKiosk"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14774
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14776
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isManagedKiosk()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 14777
    :catch_0
    move-exception v0

    .line 14778
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14781
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isManagedProfile(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 12475
    const-string v0, "isManagedProfile"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12477
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isManagedProfile(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 12478
    :catch_0
    move-exception v0

    .line 12479
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 11844
    const-string v0, "isMasterVolumeMuted"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11845
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11847
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 11848
    :catch_0
    move-exception v0

    .line 11849
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11852
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 12938
    const-string v0, "getMeteredDataDisabledForUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12939
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 12941
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 12942
    :catch_0
    move-exception v0

    .line 12943
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12946
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 13554
    const-string v0, "isNetworkLoggingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13555
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mIsNetworkLoggingEnabledCache:Landroid/os/IpcDataCache;

    invoke-virtual {v0, p1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist isNewUserDisclaimerAcknowledged()Z
    .locals 2

    .line 4001
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4003
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isNewUserDisclaimerAcknowledged(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4004
    :catch_0
    move-exception v0

    .line 4005
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4008
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isNotificationListenerServicePermitted(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 10485
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10487
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10488
    :catch_0
    move-exception v0

    .line 10489
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10492
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isOrganizationOwnedDeviceWithManagedProfile()Z
    .locals 2

    .line 9466
    const-string v0, "isOrganizationOwnedDeviceWithManagedProfile"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9467
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9468
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mIsOrganizationOwnedDeviceWithManagedProfileCache:Landroid/os/IpcDataCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/IpcDataCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 9470
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isOverrideApnEnabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 14190
    const-string v0, "isOverrideApnEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14191
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14193
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isOverrideApnEnabled(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 14194
    :catch_0
    move-exception v0

    .line 14195
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14198
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPackageAllowedToAccessCalendar(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 14583
    const-string v0, "isPackageAllowedToAccessCalendar"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14584
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14586
    nop

    .line 14587
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    .line 14586
    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->isPackageAllowedToAccessCalendarForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 14588
    :catch_0
    move-exception v0

    .line 14589
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14592
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 9255
    const-string v0, "isPackageSuspended"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9256
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9258
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9261
    :catch_0
    move-exception v0

    .line 9262
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9259
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 9260
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9265
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPasswordSufficientAfterProfileUnification(II)Z
    .locals 2
    .param p1, "userHandle"    # I
    .param p2, "profileUser"    # I

    .line 5568
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5570
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isPasswordSufficientAfterProfileUnification(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5572
    :catch_0
    move-exception v0

    .line 5573
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5576
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isPreferentialNetworkServiceEnabled()Z
    .locals 2

    .line 11456
    const-string v0, "isPreferentialNetworkServiceEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11457
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getPreferentialNetworkServiceConfigs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist isProfileOwnerApp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 9318
    const-string v0, "isProfileOwnerApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9319
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 9321
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 9322
    .local v0, "profileOwner":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 9323
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 9322
    :goto_0
    return v1

    .line 9324
    .end local v0    # "profileOwner":Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 9325
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9328
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    return v1
.end method

.method public whitelist isProvisioningAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .line 12436
    const-string v0, "isProvisioningAllowed"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12438
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->isProvisioningAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 12439
    :catch_0
    move-exception v0

    .line 12440
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o isRemovingAdmin(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 4045
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4047
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4048
    :catch_0
    move-exception v0

    .line 4049
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4052
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isResetPasswordTokenActive(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 5942
    const-string v0, "isResetPasswordTokenActive"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5943
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5945
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isResetPasswordTokenActive(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5946
    :catch_0
    move-exception v0

    .line 5947
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5950
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSafeOperation(I)Z
    .locals 2
    .param p1, "reason"    # I

    .line 3959
    const-string v0, "isSafeOperation"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 3960
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3963
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isSafeOperation(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3964
    :catch_0
    move-exception v0

    .line 3965
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSecondaryLockscreenEnabled(Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11273
    const-string v0, "isSecondaryLockscreenEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11274
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11276
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isSecondaryLockscreenEnabled(Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 11277
    :catch_0
    move-exception v0

    .line 11278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11281
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 12788
    const-string v0, "isSecurityLoggingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12790
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->isSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 12791
    :catch_0
    move-exception v0

    .line 12792
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isSupervisionComponent(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;

    .line 9397
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9399
    :try_start_0
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isSupervisionComponent(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9400
    :catch_0
    move-exception v0

    .line 9401
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9404
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isUnattendedManagedKiosk()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 14805
    const-string v0, "isUnattendedManagedKiosk"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14806
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14808
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isUnattendedManagedKiosk()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 14809
    :catch_0
    move-exception v0

    .line 14810
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14813
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 11902
    const-string v0, "isUninstallBlocked"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11903
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11905
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 11906
    :catch_0
    move-exception v0

    .line 11907
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11910
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isUninstallInQueue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 13307
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 13308
    :catch_0
    move-exception v0

    .line 13309
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isUniqueDeviceAttestationSupported()Z
    .locals 2

    .line 7679
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 7680
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.device_unique_attestation"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public whitelist isUsbDataSignalingEnabled()Z
    .locals 2

    .line 15459
    const-string v0, "isUsbDataSignalingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15460
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15462
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->isUsbDataSignalingEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 15463
    :catch_0
    move-exception v0

    .line 15464
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15467
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isUsbDataSignalingEnabledForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 15478
    const-string v0, "isUsbDataSignalingEnabledForUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15479
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15481
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isUsbDataSignalingEnabledForUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 15482
    :catch_0
    move-exception v0

    .line 15483
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15486
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isUsingUnifiedPassword(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 5545
    const-string v0, "isUsingUnifiedPassword"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5546
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5548
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->isUsingUnifiedPassword(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5549
    :catch_0
    move-exception v0

    .line 5550
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5553
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method synthetic blacklist lambda$new$10$android-app-admin-DevicePolicyManager(Landroid/content/ComponentName;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13538
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    .line 13539
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 13538
    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$new$2$android-app-admin-DevicePolicyManager(Landroid/util/Pair;)Ljava/lang/Integer;
    .locals 4
    .param p1, "query"    # Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8608
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 8609
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->isParentInstance()Z

    move-result v3

    .line 8608
    invoke-interface {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$new$3$android-app-admin-DevicePolicyManager(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "query"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8999
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->hasDeviceOwner()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$new$4$android-app-admin-DevicePolicyManager(Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "arg"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9378
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$new$5$android-app-admin-DevicePolicyManager(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "query"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9450
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$new$8$android-app-admin-DevicePolicyManager(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "query"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13118
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$new$9$android-app-admin-DevicePolicyManager(Ljava/lang/Integer;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "query"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13137
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManager;->getService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist listForegroundAffiliatedUsers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 15515
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 15518
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->listForegroundAffiliatedUsers()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 15519
    :catch_0
    move-exception v0

    .line 15520
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist lockNow()V
    .locals 1

    .line 6193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->lockNow(I)V

    .line 6194
    return-void
.end method

.method public whitelist lockNow(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 6247
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6249
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->lockNow(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6252
    goto :goto_0

    .line 6250
    :catch_0
    move-exception v0

    .line 6251
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6254
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist logoutUser()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 10763
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->logoutUserInternal()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10764
    :catch_0
    move-exception v0

    .line 10765
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist logoutUser(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 10739
    const-string v0, "logoutUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10741
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->logoutUser(Landroid/content/ComponentName;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10742
    :catch_0
    move-exception v0

    .line 10743
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected greylist-max-o myUserId()I
    .locals 1

    .line 220
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    return v0
.end method

.method public whitelist notifyPendingSystemUpdate(J)V
    .locals 2
    .param p1, "updateReceivedTime"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12184
    const-string/jumbo v0, "notifyPendingSystemUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12185
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 12187
    :try_start_0
    invoke-static {p1, p2}, Landroid/app/admin/SystemUpdateInfo;->of(J)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12190
    goto :goto_0

    .line 12188
    :catch_0
    move-exception v0

    .line 12189
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12192
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist notifyPendingSystemUpdate(JZ)V
    .locals 2
    .param p1, "updateReceivedTime"    # J
    .param p3, "isSecurityPatch"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 12212
    const-string/jumbo v0, "notifyPendingSystemUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12213
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 12215
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/app/admin/SystemUpdateInfo;->of(JZ)Landroid/app/admin/SystemUpdateInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12219
    goto :goto_0

    .line 12217
    :catch_0
    move-exception v0

    .line 12218
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12221
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4089
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public greylist packageHasActiveAdmins(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4099
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4101
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 4102
    :catch_0
    move-exception v0

    .line 4103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4106
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;)V
    .locals 4
    .param p1, "provisioningParams"    # Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/admin/ProvisioningException;
        }
    .end annotation

    .line 15317
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15319
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15324
    goto :goto_0

    .line 15322
    :catch_0
    move-exception v0

    .line 15323
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15320
    .end local v0    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 15321
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Landroid/app/admin/ProvisioningException;

    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getErrorMessage(Landroid/os/ServiceSpecificException;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/admin/ProvisioningException;-><init>(Ljava/lang/Exception;ILjava/lang/String;)V

    throw v1

    .line 15326
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist reboot(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 12518
    const-string/jumbo v0, "reboot"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12520
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reboot(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12523
    nop

    .line 12524
    return-void

    .line 12521
    :catch_0
    move-exception v0

    .line 12522
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist rebootMDM(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 14241
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14243
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->rebootMDM(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14246
    goto :goto_0

    .line 14244
    :catch_0
    move-exception v0

    .line 14245
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14248
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist removeActiveAdmin(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 4139
    const-string/jumbo v0, "removeActiveAdmin"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 4140
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4142
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4145
    goto :goto_0

    .line 4143
    :catch_0
    move-exception v0

    .line 4144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4147
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 11958
    const-string/jumbo v0, "removeCrossProfileWidgetProvider"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11959
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11961
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 11962
    :catch_0
    move-exception v0

    .line 11963
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11966
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "alias"    # Ljava/lang/String;

    .line 7305
    const-string/jumbo v0, "removeKeyPair"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7307
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7308
    :catch_0
    move-exception v0

    .line 7309
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeOverrideApn(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnId"    # I

    .line 14123
    const-string/jumbo v0, "removeOverrideApn"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14124
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14126
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeOverrideApn(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 14127
    :catch_0
    move-exception v0

    .line 14128
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14131
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 10643
    const-string/jumbo v0, "removeUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10645
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10646
    :catch_0
    move-exception v0

    .line 10647
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist reportFailedBiometricAttempt(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 8713
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8715
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportFailedBiometricAttempt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8718
    goto :goto_0

    .line 8716
    :catch_0
    move-exception v0

    .line 8717
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8720
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist reportFailedPasswordAttempt(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 8684
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8686
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportFailedPasswordAttempt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8689
    goto :goto_0

    .line 8687
    :catch_0
    move-exception v0

    .line 8688
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8691
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o reportKeyguardDismissed(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 8741
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8743
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportKeyguardDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8746
    goto :goto_0

    .line 8744
    :catch_0
    move-exception v0

    .line 8745
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8748
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o reportKeyguardSecured(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 8755
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8757
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportKeyguardSecured(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8760
    goto :goto_0

    .line 8758
    :catch_0
    move-exception v0

    .line 8759
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8762
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V
    .locals 2
    .param p1, "metrics"    # Landroid/app/admin/PasswordMetrics;
    .param p2, "userId"    # I

    .line 8669
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8671
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8674
    goto :goto_0

    .line 8672
    :catch_0
    move-exception v0

    .line 8673
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8676
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist reportSuccessfulBiometricAttempt(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 8727
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8729
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportSuccessfulBiometricAttempt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8732
    goto :goto_0

    .line 8730
    :catch_0
    move-exception v0

    .line 8731
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8734
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist reportSuccessfulPasswordAttempt(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 8699
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8701
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8704
    goto :goto_0

    .line 8702
    :catch_0
    move-exception v0

    .line 8703
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8706
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist requestBugreport(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 8179
    const-string/jumbo v0, "requestBugreport"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8180
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8182
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->requestBugreport(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8183
    :catch_0
    move-exception v0

    .line 8184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8187
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetDefaultCrossProfileIntentFilters(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 15338
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15340
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->resetDefaultCrossProfileIntentFilters(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15343
    goto :goto_0

    .line 15341
    :catch_0
    move-exception v0

    .line 15342
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15345
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist resetPassword(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5848
    const-string/jumbo v0, "resetPassword"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5849
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5851
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5852
    :catch_0
    move-exception v0

    .line 5853
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5856
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "token"    # [B
    .param p4, "flags"    # I

    .line 5987
    const-string/jumbo v0, "resetPassword"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5988
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5990
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/admin/IDevicePolicyManager;->resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;[BI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5991
    :catch_0
    move-exception v0

    .line 5992
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5995
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist retrieveNetworkLogs(Landroid/content/ComponentName;J)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "batchToken"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "J)",
            "Ljava/util/List<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation

    .line 13598
    const-string/jumbo v0, "retrieveNetworkLogs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13600
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->retrieveNetworkLogs(Landroid/content/ComponentName;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 13601
    :catch_0
    move-exception v0

    .line 13602
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist retrievePreRebootSecurityLogs(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    .line 12973
    const-string/jumbo v0, "retrievePreRebootSecurityLogs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12975
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 12976
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 12975
    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 12977
    .local v0, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    if-eqz v0, :cond_0

    .line 12978
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 12980
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 12982
    .end local v0    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    :catch_0
    move-exception v0

    .line 12983
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist retrieveSecurityLogs(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/admin/SecurityLog$SecurityEvent;",
            ">;"
        }
    .end annotation

    .line 12817
    const-string/jumbo v0, "retrieveSecurityLogs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12819
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 12820
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 12819
    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->retrieveSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 12821
    .local v0, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    if-eqz v0, :cond_0

    .line 12822
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 12825
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 12827
    .end local v0    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/admin/SecurityLog$SecurityEvent;>;"
    :catch_0
    move-exception v0

    .line 12828
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist revokeKeyPairFromApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 7580
    const-string/jumbo v0, "revokeKeyPairFromApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7582
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    .line 7583
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    .line 7582
    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager;->setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7584
    :catch_0
    move-exception v0

    .line 7585
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 7587
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist revokeKeyPairFromWifiAuth(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 7627
    const-string/jumbo v0, "revokeKeyPairFromWifiAuth"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7629
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Landroid/app/admin/IDevicePolicyManager;->setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7630
    :catch_0
    move-exception v1

    .line 7631
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 7633
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist semGetAllowBluetoothMode(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16820
    const-string/jumbo v0, "semGetAllowBluetoothMode"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16821
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16823
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 16824
    :catch_0
    move-exception v0

    .line 16825
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16828
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist semGetAllowBrowser(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16712
    const-string/jumbo v0, "semGetAllowBrowser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16713
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16715
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowBrowser(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 16716
    :catch_0
    move-exception v0

    .line 16717
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16720
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist semGetAllowDesktopSync(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16874
    const-string/jumbo v0, "semGetAllowDesktopSync"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16875
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16877
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowDesktopSync(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 16878
    :catch_0
    move-exception v0

    .line 16879
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16882
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist semGetAllowInternetSharing(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16766
    const-string/jumbo v0, "semGetAllowInternetSharing"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16767
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16769
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 16770
    :catch_0
    move-exception v0

    .line 16771
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16774
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist semGetAllowIrda(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16928
    const-string/jumbo v0, "semGetAllowIrda"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16929
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16931
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowIrda(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 16932
    :catch_0
    move-exception v0

    .line 16933
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16936
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist semGetAllowPopImapEmail(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16658
    const-string/jumbo v0, "semGetAllowPopImapEmail"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16659
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16661
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowPopImapEmail(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 16662
    :catch_0
    move-exception v0

    .line 16663
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16666
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist semGetAllowStorageCard(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16496
    const-string/jumbo v0, "semGetAllowStorageCard"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16497
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16499
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowStorageCard(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 16500
    :catch_0
    move-exception v0

    .line 16501
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16504
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist semGetAllowTextMessaging(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16604
    const-string/jumbo v0, "semGetAllowTextMessaging"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16605
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16607
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowTextMessaging(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 16608
    :catch_0
    move-exception v0

    .line 16609
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16612
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist semGetAllowThirdPartyAppList(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 17060
    const-string/jumbo v0, "semGetAllowThirdPartyAppList"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17061
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "semGetAllowThirdPartyAppList - No more support from R OS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17062
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist semGetAllowUnsignedApp(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 17128
    const-string/jumbo v0, "semGetAllowUnsignedApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17129
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "semGetAllowUnsignedApp - No more support from R OS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17130
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist semGetAllowUnsignedInstallationPackage(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 17167
    const-string/jumbo v0, "semGetAllowUnsignedInstallationPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17168
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "semGetAllowUnsignedInstallationPackage - No more support from R OS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17169
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist semGetAllowWifi(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16550
    const-string/jumbo v0, "semGetAllowWifi"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16551
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16553
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowWifi(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 16554
    :catch_0
    move-exception v0

    .line 16555
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16558
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist semGetBlockPreloadedPackages(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 17094
    const-string/jumbo v0, "semGetBlockPreloadedPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17095
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "semGetBlockPreloadedPackages - No more support from R OS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17096
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist semGetBluetoothContactSharingDisabled(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 10022
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getBluetoothContactSharingDisabled(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public whitelist semGetCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 9881
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public whitelist semGetCrossProfileContactsSearchDisabled(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 9939
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileContactsSearchDisabled(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public whitelist semGetDeviceOwner()Ljava/lang/String;
    .locals 1

    .line 17212
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist semGetExternalSdCardEncryptionStatus()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17192
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    .line 17193
    .local v0, "dem":Lcom/samsung/android/security/SemSdCardEncryption;
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 17194
    const/4 v1, 0x0

    return v1

    .line 17196
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17197
    const/4 v1, 0x3

    return v1

    .line 17199
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist semGetPermittedAccessibilityServices(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10169
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16988
    const-string/jumbo v0, "semGetRequireStorageCardEncryption"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16989
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist semGetRequireStorageCardEncryption(Landroid/content/ComponentName;Z)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "isParent"    # Z

    .line 16996
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16998
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 16999
    :catch_0
    move-exception v0

    .line 17000
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17003
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist semHasActiveAdminForPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4122
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist semIsActivePasswordSufficient()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16295
    const-string/jumbo v0, "semIsActivePasswordSufficient"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16296
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16298
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->semIsActivePasswordSufficient(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 16299
    :catch_0
    move-exception v0

    .line 16300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16303
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist semIsSimplePasswordEnabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16349
    const-string/jumbo v0, "semIsSimplePasswordEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16350
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16352
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->semIsSimplePasswordEnabled(Landroid/content/ComponentName;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 16353
    :catch_0
    move-exception v0

    .line 16354
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16357
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist semNotifyPendingSystemUpdate(J)V
    .locals 0
    .param p1, "updateReceivedTime"    # J

    .line 12163
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->notifyPendingSystemUpdate(J)V

    .line 12164
    return-void
.end method

.method public whitelist semSetAllowBluetoothMode(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16797
    const-string/jumbo v0, "semSetAllowBluetoothMode"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16798
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16800
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetAllowBluetoothMode(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16803
    goto :goto_0

    .line 16801
    :catch_0
    move-exception v0

    .line 16802
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16805
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetAllowBrowser(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16689
    const-string/jumbo v0, "semSetAllowBrowser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16690
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16692
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetAllowBrowser(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16695
    goto :goto_0

    .line 16693
    :catch_0
    move-exception v0

    .line 16694
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16697
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetAllowDesktopSync(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16851
    const-string/jumbo v0, "semSetAllowDesktopSync"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16852
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16854
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetAllowDesktopSync(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16857
    goto :goto_0

    .line 16855
    :catch_0
    move-exception v0

    .line 16856
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16859
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetAllowInternetSharing(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16743
    const-string/jumbo v0, "semSetAllowInternetSharing"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16744
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16746
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetAllowInternetSharing(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16749
    goto :goto_0

    .line 16747
    :catch_0
    move-exception v0

    .line 16748
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16751
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetAllowIrda(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16905
    const-string/jumbo v0, "semSetAllowIrda"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16906
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16908
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetAllowIrda(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16911
    goto :goto_0

    .line 16909
    :catch_0
    move-exception v0

    .line 16910
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16913
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetAllowPopImapEmail(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16635
    const-string/jumbo v0, "semSetAllowPopImapEmail"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16636
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16638
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetAllowPopImapEmail(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16641
    goto :goto_0

    .line 16639
    :catch_0
    move-exception v0

    .line 16640
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16643
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetAllowStorageCard(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16473
    const-string/jumbo v0, "semSetAllowStorageCard"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16474
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16476
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetAllowStorageCard(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16479
    goto :goto_0

    .line 16477
    :catch_0
    move-exception v0

    .line 16478
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16481
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetAllowTextMessaging(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16581
    const-string/jumbo v0, "semSetAllowTextMessaging"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16582
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16584
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetAllowTextMessaging(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16587
    goto :goto_0

    .line 16585
    :catch_0
    move-exception v0

    .line 16586
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16589
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist semSetAllowThirdPartyAppList(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "value"    # Ljava/lang/String;

    .line 17042
    const-string/jumbo v0, "semSetAllowThirdPartyAppList"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17043
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "semSetAllowThirdPartyAppList - No more support from R OS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17044
    return-void
.end method

.method public blacklist semSetAllowUnsignedApp(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "cp"    # Landroid/content/ComponentName;
    .param p2, "flags"    # Z

    .line 17110
    const-string/jumbo v0, "semSetAllowUnsignedApp"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17111
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "semSetAllowUnsignedApp - No more support from R OS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17112
    return-void
.end method

.method public blacklist semSetAllowUnsignedInstallationPackage(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "cp"    # Landroid/content/ComponentName;
    .param p2, "flags"    # Z

    .line 17149
    const-string/jumbo v0, "semSetAllowUnsignedInstallationPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17150
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "semSetAllowUnsignedInstallationPackage - No more support from R OS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17151
    return-void
.end method

.method public whitelist semSetAllowWifi(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16527
    const-string/jumbo v0, "semSetAllowWifi"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16528
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16530
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetAllowWifi(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16533
    goto :goto_0

    .line 16531
    :catch_0
    move-exception v0

    .line 16532
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16535
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist semSetBlockPreloadedPackages(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "value"    # Ljava/lang/String;

    .line 17077
    const-string/jumbo v0, "semSetBlockPreloadedPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17078
    sget-object v0, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "semGetAllowThirdPartyAppList - No more support from R OS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17079
    return-void
.end method

.method public whitelist semSetCameraDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16442
    const-string/jumbo v0, "semSetCameraDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16443
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16445
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetCameraDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16448
    goto :goto_0

    .line 16446
    :catch_0
    move-exception v0

    .line 16447
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16450
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetChangeNotificationEnabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "notifyChanges"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17020
    const-string/jumbo v0, "semSetChangeNotificationEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 17021
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 17023
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetChangeNotificationEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17026
    goto :goto_0

    .line 17024
    :catch_0
    move-exception v0

    .line 17025
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17028
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16411
    const-string/jumbo v0, "semSetKeyguardDisabledFeatures"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16412
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16414
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16417
    goto :goto_0

    .line 16415
    :catch_0
    move-exception v0

    .line 16416
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16419
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16236
    const-string/jumbo v0, "semSetPasswordExpirationTimeout"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16237
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16239
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->semSetPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16242
    goto :goto_0

    .line 16240
    :catch_0
    move-exception v0

    .line 16241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16244
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetPasswordHistoryLength(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16189
    const-string/jumbo v0, "semSetPasswordHistoryLength"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16190
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16192
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetPasswordHistoryLength(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16195
    goto :goto_0

    .line 16193
    :catch_0
    move-exception v0

    .line 16194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16197
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15893
    const-string/jumbo v0, "semSetPasswordMinimumLength"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15894
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15896
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetPasswordMinimumLength(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15899
    goto :goto_0

    .line 15897
    :catch_0
    move-exception v0

    .line 15898
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15901
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16019
    const-string/jumbo v0, "semSetPasswordMinimumLetters"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16020
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16022
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16025
    goto :goto_0

    .line 16023
    :catch_0
    move-exception v0

    .line 16024
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16027
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15977
    const-string/jumbo v0, "semSetPasswordMinimumLowerCase"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15978
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15980
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15983
    goto :goto_0

    .line 15981
    :catch_0
    move-exception v0

    .line 15982
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15985
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16145
    const-string/jumbo v0, "semSetPasswordMinimumNonLetter"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16146
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16148
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16151
    goto :goto_0

    .line 16149
    :catch_0
    move-exception v0

    .line 16150
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16153
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16061
    const-string/jumbo v0, "semSetPasswordMinimumNumeric"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16062
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16064
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16067
    goto :goto_0

    .line 16065
    :catch_0
    move-exception v0

    .line 16066
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16069
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16103
    const-string/jumbo v0, "semSetPasswordMinimumSymbols"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16104
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16106
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16109
    goto :goto_0

    .line 16107
    :catch_0
    move-exception v0

    .line 16108
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 16111
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15935
    const-string/jumbo v0, "semSetPasswordMinimumUpperCase"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15936
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15938
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15941
    goto :goto_0

    .line 15939
    :catch_0
    move-exception v0

    .line 15940
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15943
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetPasswordQuality(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15849
    const-string/jumbo v0, "semSetPasswordQuality"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15850
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15852
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetPasswordQuality(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15855
    goto :goto_0

    .line 15853
    :catch_0
    move-exception v0

    .line 15854
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15857
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16958
    const-string/jumbo v0, "semSetRequireStorageCardEncryption"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16959
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->semSetRequireStorageCardEncryption(Landroid/content/ComponentName;ZZ)V

    .line 16960
    return-void
.end method

.method public blacklist semSetRequireStorageCardEncryption(Landroid/content/ComponentName;ZZ)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .param p3, "isParent"    # Z

    .line 16966
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16968
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->semSetRequireStorageCardEncryption(Landroid/content/ComponentName;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16971
    goto :goto_0

    .line 16969
    :catch_0
    move-exception v0

    .line 16970
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16973
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist semSetSimplePasswordEnabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16326
    const-string/jumbo v0, "semSetSimplePasswordEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 16327
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 16329
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->semSetSimplePasswordEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16332
    goto :goto_0

    .line 16330
    :catch_0
    move-exception v0

    .line 16331
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device policy service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16334
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist sendLostModeLocationUpdate(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 6434
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string/jumbo v0, "sendLostModeLocationUpdate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6435
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 6436
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/infra/AndroidFuture;->completedFuture(Ljava/lang/Object;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->executeCallback(Lcom/android/internal/infra/AndroidFuture;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 6437
    return-void

    .line 6440
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 6441
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, v0}, Landroid/app/admin/IDevicePolicyManager;->sendLostModeLocationUpdate(Lcom/android/internal/infra/AndroidFuture;)V

    .line 6442
    invoke-direct {p0, v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->executeCallback(Lcom/android/internal/infra/AndroidFuture;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6445
    .end local v0    # "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    nop

    .line 6446
    return-void

    .line 6443
    :catch_0
    move-exception v0

    .line 6444
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z

    .line 11177
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11179
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11183
    goto :goto_0

    .line 11181
    :catch_0
    move-exception v0

    .line 11182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11185
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist setActiveAdmin(Landroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z

    .line 8646
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 8647
    return-void
.end method

.method public greylist-max-r setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .locals 2
    .param p1, "policyReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .line 8632
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8634
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8637
    goto :goto_0

    .line 8635
    :catch_0
    move-exception v0

    .line 8636
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8639
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setActiveProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9060
    const-string/jumbo v0, "setActiveProfileOwner"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9061
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9063
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v0

    .line 9064
    .local v0, "myUserId":I
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v2, p1, v1, v0}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    .line 9065
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 9066
    .end local v0    # "myUserId":I
    :catch_0
    move-exception v0

    .line 9067
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9070
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return v1
.end method

.method public whitelist setAffiliationIds(Landroid/content/ComponentName;Ljava/util/Set;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13245
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "setAffiliationIds"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13246
    if-eqz p2, :cond_0

    .line 13250
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13253
    nop

    .line 13254
    return-void

    .line 13251
    :catch_0
    move-exception v0

    .line 13252
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13247
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ids must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .param p3, "lockdownEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 7932
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/admin/DevicePolicyManager;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/Set;)V

    .line 7933
    return-void
.end method

.method public whitelist setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/Set;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .param p3, "lockdownEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 7965
    .local p4, "lockdownAllowlist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "setAlwaysOnVpnPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7966
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1

    .line 7968
    nop

    .line 7969
    if-nez p4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7968
    :goto_0
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Z
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7980
    goto :goto_1

    .line 7978
    :catch_0
    move-exception v0

    .line 7979
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7970
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 7971
    .local v0, "e":Landroid/os/ServiceSpecificException;
    iget v1, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v1, :pswitch_data_0

    .line 7975
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error setting always-on VPN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 7973
    :pswitch_0
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7982
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hidden"    # Z

    .line 11024
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11026
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v5, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/app/admin/IDevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 11028
    :catch_0
    move-exception v0

    .line 11029
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11032
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/os/Bundle;

    .line 9712
    const-string/jumbo v0, "setApplicationRestrictions"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9713
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9715
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9719
    goto :goto_0

    .line 9717
    :catch_0
    move-exception v0

    .line 9718
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9721
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9608
    const-string/jumbo v0, "setApplicationRestrictionsManagingPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9609
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1

    .line 9611
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9616
    goto :goto_0

    .line 9612
    :cond_0
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/app/admin/DevicePolicyManager;
    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "packageName":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9614
    .restart local p0    # "this":Landroid/app/admin/DevicePolicyManager;
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 9615
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9618
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist setAutoTimeEnabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 8415
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8417
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimeEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8420
    goto :goto_0

    .line 8418
    :catch_0
    move-exception v0

    .line 8419
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8422
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "required"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8372
    const-string/jumbo v0, "setAutoTimeRequired"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8373
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8375
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8378
    goto :goto_0

    .line 8376
    :catch_0
    move-exception v0

    .line 8377
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8380
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setAutoTimeZoneEnabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 8456
    const-string/jumbo v0, "setAutoTimeZone"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8457
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8459
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setAutoTimeZoneEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8462
    goto :goto_0

    .line 8460
    :catch_0
    move-exception v0

    .line 8461
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8464
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setBackupServiceEnabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 13445
    const-string/jumbo v0, "setBackupServiceEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13447
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setBackupServiceEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13450
    nop

    .line 13451
    return-void

    .line 13448
    :catch_0
    move-exception v0

    .line 13449
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 10002
    const-string/jumbo v0, "setBluetoothContactSharingDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10003
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10005
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10008
    goto :goto_0

    .line 10006
    :catch_0
    move-exception v0

    .line 10007
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10010
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setBluetoothContactSharingEnabledForKnox(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "value"    # Z

    .line 17226
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 17228
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setBluetoothContactSharingEnabledForKnox(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17231
    goto :goto_0

    .line 17229
    :catch_0
    move-exception v0

    .line 17230
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 17233
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setCameraDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 8127
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8129
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8132
    goto :goto_0

    .line 8130
    :catch_0
    move-exception v0

    .line 8131
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8134
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7774
    const-string/jumbo v0, "setCertInstallerPackage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7775
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7777
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7780
    goto :goto_0

    .line 7778
    :catch_0
    move-exception v0

    .line 7779
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7782
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setCommonCriteriaModeEnabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 14904
    const-string/jumbo v0, "setCommonCriteriaModeEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14905
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14907
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCommonCriteriaModeEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14910
    goto :goto_0

    .line 14908
    :catch_0
    move-exception v0

    .line 14909
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14912
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setConfiguredNetworksLockdownState(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "lockdown"    # Z

    .line 11634
    const-string/jumbo v0, "setConfiguredNetworksLockdownState"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11635
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11637
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setConfiguredNetworksLockdownState(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11640
    goto :goto_0

    .line 11638
    :catch_0
    move-exception v0

    .line 11639
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11642
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/Set;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14521
    .local p2, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "setCrossProfileCalendarPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14522
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1

    .line 14524
    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 14525
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14524
    :goto_0
    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14528
    goto :goto_1

    .line 14526
    :catch_0
    move-exception v0

    .line 14527
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14530
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method public whitelist setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 9824
    const-string/jumbo v0, "setCrossProfileCallerIdDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9825
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9827
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9830
    goto :goto_0

    .line 9828
    :catch_0
    move-exception v0

    .line 9829
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9832
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 9898
    const-string/jumbo v0, "setCrossProfileContactsSearchDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9899
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9901
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9904
    goto :goto_0

    .line 9902
    :catch_0
    move-exception v0

    .line 9903
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9906
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/Set;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14648
    .local p2, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "setCrossProfilePackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14649
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14651
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14654
    goto :goto_0

    .line 14652
    :catch_0
    move-exception v0

    .line 14653
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14656
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 9576
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9578
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9581
    goto :goto_0

    .line 9579
    :catch_0
    move-exception v0

    .line 9580
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9583
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "delegatePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7833
    .local p3, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setDelegatedScopes"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7834
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7836
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7839
    goto :goto_0

    .line 7837
    :catch_0
    move-exception v0

    .line 7838
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7841
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 8797
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8799
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8801
    :catch_0
    move-exception v0

    .line 8802
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8805
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "info"    # Ljava/lang/CharSequence;

    .line 9171
    const-string/jumbo v0, "setDeviceOwnerLockScreenInfo"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9172
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9174
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9177
    goto :goto_0

    .line 9175
    :catch_0
    move-exception v0

    .line 9176
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9179
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setDeviceOwnerOnly(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 8819
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8821
    :try_start_0
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 8823
    :catch_0
    move-exception v0

    .line 8824
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8827
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return v1
.end method

.method public blacklist setDeviceOwnerType(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "deviceOwnerType"    # I

    .line 15388
    const-string/jumbo v0, "setDeviceOwnerType"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15389
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15391
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setDeviceOwnerType(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15394
    goto :goto_0

    .line 15392
    :catch_0
    move-exception v0

    .line 15393
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15396
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setDeviceProvisioningConfigApplied()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13377
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->setDeviceProvisioningConfigApplied()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13380
    nop

    .line 13381
    return-void

    .line 13378
    :catch_0
    move-exception v0

    .line 13379
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDpcDownloaded(Z)V
    .locals 2
    .param p1, "downloaded"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15704
    const-string/jumbo v0, "setDpcDownloaded"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15705
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15707
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setDpcDownloaded(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15710
    goto :goto_0

    .line 15708
    :catch_0
    move-exception v0

    .line 15709
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15712
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "endUserSessionMessage"    # Ljava/lang/CharSequence;

    .line 13975
    const-string/jumbo v0, "setEndUserSessionMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13977
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13980
    nop

    .line 13981
    return-void

    .line 13978
    :catch_0
    move-exception v0

    .line 13979
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Landroid/app/admin/FactoryResetProtectionPolicy;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/FactoryResetProtectionPolicy;

    .line 6374
    const-string/jumbo v0, "setFactoryResetProtectionPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6375
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6377
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Landroid/app/admin/FactoryResetProtectionPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6380
    goto :goto_0

    .line 6378
    :catch_0
    move-exception v0

    .line 6379
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6382
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o setForceEphemeralUsers(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "forceEphemeralUsers"    # Z

    .line 8491
    const-string/jumbo v0, "setForceEphemeralUsers"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8492
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8494
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setForceEphemeralUsers(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8497
    goto :goto_0

    .line 8495
    :catch_0
    move-exception v0

    .line 8496
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8499
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setGlobalPrivateDnsModeOpportunistic(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 14286
    const-string/jumbo v0, "setGlobalPrivateDnsModeOpportunistic"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14288
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 14289
    return v1

    .line 14293
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->setGlobalPrivateDns(Landroid/content/ComponentName;ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 14294
    :catch_0
    move-exception v0

    .line 14295
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setGlobalPrivateDnsModeSpecifiedHost(Landroid/content/ComponentName;Ljava/lang/String;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "privateDnsHost"    # Ljava/lang/String;

    .line 14331
    const-string/jumbo v0, "setGlobalPrivateDnsModeSpecifiedHost"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14332
    const-string v0, "dns resolver is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14334
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 14335
    const/4 v0, 0x2

    return v0

    .line 14338
    :cond_0
    invoke-static {p2}, Lcom/android/internal/net/NetworkUtilsInternal;->isWeaklyValidatedHostname(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14339
    invoke-static {p2}, Landroid/net/PrivateDnsConnectivityChecker;->canConnectToPrivateDnsServer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14340
    const/4 v0, 0x1

    return v0

    .line 14345
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    const/4 v1, 0x3

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setGlobalPrivateDns(Landroid/content/ComponentName;ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 14347
    :catch_0
    move-exception v0

    .line 14348
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r setGlobalProxy(Landroid/content/ComponentName;Ljava/net/Proxy;Ljava/util/List;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 6490
    .local p3, "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setGlobalProxy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6491
    if-eqz p2, :cond_3

    .line 6494
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_2

    .line 6498
    :try_start_0
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {p2, v0}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6499
    const/4 v0, 0x0

    .line 6500
    .local v0, "hostSpec":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "exclSpec":Ljava/lang/String;
    goto :goto_0

    .line 6502
    .end local v0    # "hostSpec":Ljava/lang/String;
    .end local v1    # "exclSpec":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-virtual {v0, v1}, Ljava/net/Proxy$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6505
    nop

    .line 6506
    invoke-virtual {p0, p2, p3}, Landroid/app/admin/DevicePolicyManager;->getProxyParameters(Ljava/net/Proxy;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    .line 6507
    .local v0, "proxyParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 6508
    .local v1, "hostSpec":Ljava/lang/String;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v0, v1

    move-object v1, v2

    .line 6510
    .local v0, "hostSpec":Ljava/lang/String;
    .local v1, "exclSpec":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v2, p1, v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    return-object v2

    .line 6503
    .end local v0    # "hostSpec":Ljava/lang/String;
    .end local v1    # "exclSpec":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0    # "this":Landroid/app/admin/DevicePolicyManager;
    .end local p1    # "admin":Landroid/content/ComponentName;
    .end local p2    # "proxySpec":Ljava/net/Proxy;
    .end local p3    # "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6511
    .restart local p0    # "this":Landroid/app/admin/DevicePolicyManager;
    .restart local p1    # "admin":Landroid/content/ComponentName;
    .restart local p2    # "proxySpec":Ljava/net/Proxy;
    .restart local p3    # "exclusionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 6512
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6515
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 6492
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 11562
    const-string/jumbo v0, "setGlobalSetting"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11563
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11565
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11568
    goto :goto_0

    .line 11566
    :catch_0
    move-exception v0

    .line 11567
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11570
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10537
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setKeepUninstalledPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10538
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10540
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10543
    goto :goto_0

    .line 10541
    :catch_0
    move-exception v0

    .line 10542
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10545
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 11
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "alias"    # Ljava/lang/String;
    .param p4, "isUserSelectable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;Z)Z"
        }
    .end annotation

    .line 7718
    .local p3, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    const-string/jumbo v0, "setKeyPairCertificate"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7720
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/security/cert/Certificate;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    aput-object v3, v2, v1

    invoke-static {v2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v8

    .line 7721
    .local v8, "pemCert":[B
    const/4 v2, 0x0

    .line 7722
    .local v2, "pemChain":[B
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 7723
    nop

    .line 7724
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p3, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    new-array v3, v1, [Ljava/security/cert/Certificate;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    .line 7723
    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v0

    move-object v2, v0

    .line 7726
    :cond_0
    iget-object v4, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v5, p1

    move-object v7, p2

    move-object v9, v2

    move v10, p4

    invoke-interface/range {v4 .. v10}, Landroid/app/admin/IDevicePolicyManager;->setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B[BZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7730
    .end local v2    # "pemChain":[B
    .end local v8    # "pemCert":[B
    :catch_0
    move-exception v0

    .line 7731
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not pem-encode certificate"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7733
    .end local v0    # "e":Ljava/lang/Exception;
    return v1

    .line 7728
    :catch_1
    move-exception v0

    .line 7729
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setKeyguardDisabled(Landroid/content/ComponentName;Z)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 12107
    const-string/jumbo v0, "setKeyguardDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12109
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 12110
    :catch_0
    move-exception v0

    .line 12111
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "which"    # I

    .line 8579
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8581
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8584
    goto :goto_0

    .line 8582
    :catch_0
    move-exception v0

    .line 8583
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8586
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setLocationEnabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "locationEnabled"    # Z

    .line 11726
    const-string/jumbo v0, "setLocationEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11727
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11729
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLocationEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11732
    goto :goto_0

    .line 11730
    :catch_0
    move-exception v0

    .line 11731
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11734
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setLockTaskFeatures(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I

    .line 11374
    const-string/jumbo v0, "setLockTaskFeatures"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11375
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11377
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLockTaskFeatures(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11380
    goto :goto_0

    .line 11378
    :catch_0
    move-exception v0

    .line 11379
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11382
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 11307
    const-string/jumbo v0, "setLockTaskPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11308
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11310
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11313
    goto :goto_0

    .line 11311
    :catch_0
    move-exception v0

    .line 11312
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11315
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setLogoutEnabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 13831
    const-string/jumbo v0, "setLogoutEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13833
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLogoutEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13836
    nop

    .line 13837
    return-void

    .line 13834
    :catch_0
    move-exception v0

    .line 13835
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 12591
    const-string/jumbo v0, "setLongSupportMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12592
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 12594
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12597
    goto :goto_0

    .line 12595
    :catch_0
    move-exception v0

    .line 12596
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12599
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeoutMillis"    # J

    .line 15002
    const-string/jumbo v0, "setManagedProfileMaximumTimeOff"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15003
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15005
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15008
    goto :goto_0

    .line 15006
    :catch_0
    move-exception v0

    .line 15007
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15010
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z

    .line 11826
    const-string/jumbo v0, "setMasterVolumeMuted"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11827
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11829
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11832
    goto :goto_0

    .line 11830
    :catch_0
    move-exception v0

    .line 11831
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11834
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "num"    # I

    .line 5703
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5705
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5708
    goto :goto_0

    .line 5706
    :catch_0
    move-exception v0

    .line 5707
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5710
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setMaximumTimeToLock(Landroid/content/ComponentName;J)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J

    .line 6017
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6019
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6022
    goto :goto_0

    .line 6020
    :catch_0
    move-exception v0

    .line 6021
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6024
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12894
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setMeteredDataDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12895
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 12897
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 12898
    :catch_0
    move-exception v0

    .line 12899
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12902
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object p2
.end method

.method public whitelist setMinimumRequiredWifiSecurityLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .line 15588
    const-string/jumbo v0, "setMinimumRequiredWifiSecurityLevel"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15589
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15591
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setMinimumRequiredWifiSecurityLevel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15594
    goto :goto_0

    .line 15592
    :catch_0
    move-exception v0

    .line 15593
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15596
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setNearbyAppStreamingPolicy(I)V
    .locals 2
    .param p1, "policy"    # I

    .line 8307
    const-string/jumbo v0, "setNearbyAppStreamingPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8308
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 8309
    return-void

    .line 8312
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setNearbyAppStreamingPolicy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8315
    nop

    .line 8316
    return-void

    .line 8313
    :catch_0
    move-exception v0

    .line 8314
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setNearbyNotificationStreamingPolicy(I)V
    .locals 2
    .param p1, "policy"    # I

    .line 8259
    const-string/jumbo v0, "setNearbyNotificationStreamingPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 8260
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 8261
    return-void

    .line 8264
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setNearbyNotificationStreamingPolicy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8267
    nop

    .line 8268
    return-void

    .line 8265
    :catch_0
    move-exception v0

    .line 8266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setNetworkLoggingEnabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 13528
    const-string/jumbo v0, "setNetworkLoggingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13530
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13533
    nop

    .line 13534
    return-void

    .line 13531
    :catch_0
    move-exception v0

    .line 13532
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setNextOperationSafety(II)V
    .locals 2
    .param p1, "operation"    # I
    .param p2, "reason"    # I

    .line 15128
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15130
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setNextOperationSafety(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15133
    goto :goto_0

    .line 15131
    :catch_0
    move-exception v0

    .line 15132
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15135
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setOrganizationColor(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13006
    const-string/jumbo v0, "setOrganizationColor"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13009
    const/high16 v0, -0x1000000

    or-int/2addr p2, v0

    .line 13010
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationColor(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13013
    nop

    .line 13014
    return-void

    .line 13011
    :catch_0
    move-exception v0

    .line 13012
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setOrganizationColorForUser(II)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13033
    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 13034
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationColorForUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13037
    nop

    .line 13038
    return-void

    .line 13035
    :catch_0
    move-exception v0

    .line 13036
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setOrganizationId(Ljava/lang/String;)V
    .locals 2
    .param p1, "enterpriseId"    # Ljava/lang/String;

    .line 15186
    const-string/jumbo v0, "setOrganizationId"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15187
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/admin/DevicePolicyManager;->setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 15188
    return-void
.end method

.method public blacklist setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterpriseId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 15199
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 15200
    return-void

    .line 15203
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15206
    nop

    .line 15207
    return-void

    .line 15204
    :catch_0
    move-exception v0

    .line 15205
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .line 13091
    const-string/jumbo v0, "setOrganizationName"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13093
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13096
    nop

    .line 13097
    return-void

    .line 13094
    :catch_0
    move-exception v0

    .line 13095
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 14170
    const-string/jumbo v0, "setOverrideApnEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14171
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14173
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14176
    goto :goto_0

    .line 14174
    :catch_0
    move-exception v0

    .line 14175
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14178
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setPackagesSuspended(Landroid/content/ComponentName;[Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageNames"    # [Ljava/lang/String;
    .param p3, "suspended"    # Z

    .line 9226
    const-string/jumbo v0, "setPackagesSuspended"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9227
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9229
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setPackagesSuspended(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 9231
    :catch_0
    move-exception v0

    .line 9232
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9235
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object p2
.end method

.method public whitelist setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J

    .line 5179
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5181
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5184
    goto :goto_0

    .line 5182
    :catch_0
    move-exception v0

    .line 5183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5186
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setPasswordHistoryLength(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I

    .line 5137
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5139
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5142
    goto :goto_0

    .line 5140
    :catch_0
    move-exception v0

    .line 5141
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5144
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setPasswordMinimumLength(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4491
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4493
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4496
    goto :goto_0

    .line 4494
    :catch_0
    move-exception v0

    .line 4495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4498
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setPasswordMinimumLetters(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4760
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4762
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4765
    goto :goto_0

    .line 4763
    :catch_0
    move-exception v0

    .line 4764
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4767
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4668
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4670
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4673
    goto :goto_0

    .line 4671
    :catch_0
    move-exception v0

    .line 4672
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4675
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5032
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5034
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5037
    goto :goto_0

    .line 5035
    :catch_0
    move-exception v0

    .line 5036
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5039
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4851
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4853
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4856
    goto :goto_0

    .line 4854
    :catch_0
    move-exception v0

    .line 4855
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4858
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4942
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4944
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4947
    goto :goto_0

    .line 4945
    :catch_0
    move-exception v0

    .line 4946
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4949
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4576
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4578
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4581
    goto :goto_0

    .line 4579
    :catch_0
    move-exception v0

    .line 4580
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4583
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setPasswordQuality(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4404
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 4406
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4409
    goto :goto_0

    .line 4407
    :catch_0
    move-exception v0

    .line 4408
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4411
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "grantState"    # I

    .line 12371
    const-string/jumbo v0, "setPermissionGrantState"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12373
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 12375
    .local v0, "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Landroid/os/RemoteCallback;

    new-instance v2, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-direct {v7, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 12379
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/app/admin/DevicePolicyManager$$ExternalSyntheticLambda2;-><init>()V

    const/4 v3, 0x0

    .line 12380
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x4e20

    .line 12379
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 12383
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 12386
    .end local v0    # "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v0

    .line 12387
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 12384
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 12385
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPermissionPolicy(Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # I

    .line 12269
    const-string/jumbo v0, "setPermissionPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12271
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermissionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12274
    nop

    .line 12275
    return-void

    .line 12272
    :catch_0
    move-exception v0

    .line 12273
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 10143
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setPermittedAccessibilityServices"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10144
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10146
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10147
    :catch_0
    move-exception v0

    .line 10148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10151
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 10443
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setPermittedCrossProfileNotificationListeners"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10444
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10446
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10447
    :catch_0
    move-exception v0

    .line 10448
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10451
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 10286
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 10288
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10289
    :catch_0
    move-exception v0

    .line 10290
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 10293
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "suspended"    # Z

    .line 14973
    const-string/jumbo v0, "setPersonalAppsSuspended"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14974
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14976
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14979
    goto :goto_0

    .line 14977
    :catch_0
    move-exception v0

    .line 14978
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14981
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setPreferentialNetworkServiceConfigs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;)V"
        }
    .end annotation

    .line 11479
    .local p1, "preferentialNetworkServiceConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/PreferentialNetworkServiceConfig;>;"
    const-string/jumbo v0, "setPreferentialNetworkServiceConfigs"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11480
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 11481
    return-void

    .line 11484
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setPreferentialNetworkServiceConfigs(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11487
    nop

    .line 11488
    return-void

    .line 11485
    :catch_0
    move-exception v0

    .line 11486
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setPreferentialNetworkServiceEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 11433
    const-string/jumbo v0, "setPreferentialNetworkServiceEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11434
    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    .line 11436
    .local v0, "configBuilder":Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;
    invoke-virtual {v0, p1}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 11437
    if-eqz p1, :cond_0

    .line 11438
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    .line 11440
    :cond_0
    invoke-virtual {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/admin/DevicePolicyManager;->setPreferentialNetworkServiceConfigs(Ljava/util/List;)V

    .line 11441
    return-void
.end method

.method public whitelist setProfileEnabled(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 9277
    const-string/jumbo v0, "setProfileEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9278
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9280
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setProfileEnabled(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9283
    goto :goto_0

    .line 9281
    :catch_0
    move-exception v0

    .line 9282
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9285
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "profileName"    # Ljava/lang/String;

    .line 9299
    const-string/jumbo v0, "setProfileName"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 9300
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9302
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9305
    goto :goto_0

    .line 9303
    :catch_0
    move-exception v0

    .line 9304
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9307
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9135
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_1

    .line 9137
    if-nez p2, :cond_0

    .line 9138
    :try_start_0
    const-string v1, ""

    move-object p2, v1

    goto :goto_0

    .line 9141
    :catch_0
    move-exception v0

    goto :goto_1

    .line 9140
    :cond_0
    :goto_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 9142
    .local v0, "re":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9145
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setProfileOwnerCanAccessDeviceIds(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14468
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 14469
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_0

    .line 14474
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/app/admin/DevicePolicyManager;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;Z)V

    .line 14476
    return-void

    .line 14470
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "This method is deprecated. use markProfileOwnerOnOrganizationOwnedDevice instead."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "isProfileOwnerOnOrganizationOwnedDevice"    # Z

    .line 14492
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 14493
    return-void

    .line 14496
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14500
    nop

    .line 14501
    return-void

    .line 14498
    :catch_0
    move-exception v0

    .line 14499
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "proxyInfo"    # Landroid/net/ProxyInfo;

    .line 6569
    const-string/jumbo v0, "setRecommendedGlobalProxy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6570
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6572
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6575
    goto :goto_0

    .line 6573
    :catch_0
    move-exception v0

    .line 6574
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6577
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setRequiredPasswordComplexity(I)V
    .locals 2
    .param p1, "passwordComplexity"    # I

    .line 5459
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 5460
    return-void

    .line 5464
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, v1}, Landroid/app/admin/IDevicePolicyManager;->setRequiredPasswordComplexity(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5467
    nop

    .line 5468
    return-void

    .line 5465
    :catch_0
    move-exception v0

    .line 5466
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setRequiredStrongAuthTimeout(Landroid/content/ComponentName;J)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeoutMs"    # J

    .line 6096
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6098
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setRequiredStrongAuthTimeout(Landroid/content/ComponentName;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6101
    goto :goto_0

    .line 6099
    :catch_0
    move-exception v0

    .line 6100
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6103
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setResetPasswordToken(Landroid/content/ComponentName;[B)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "token"    # [B

    .line 5894
    const-string/jumbo v0, "setResetPasswordToken"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 5895
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 5897
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setResetPasswordToken(Landroid/content/ComponentName;[B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5898
    :catch_0
    move-exception v0

    .line 5899
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 5902
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "provider"    # Landroid/content/ComponentName;

    .line 11807
    const-string/jumbo v0, "setRestrictionsProvider"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11808
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11810
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11813
    goto :goto_0

    .line 11811
    :catch_0
    move-exception v0

    .line 11812
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11815
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setScreenCaptureDisabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 8214
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 8216
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->setScreenCaptureDisabled(Landroid/content/ComponentName;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8219
    goto :goto_0

    .line 8217
    :catch_0
    move-exception v0

    .line 8218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 8221
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setSecondaryLockscreenEnabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 11256
    const-string/jumbo v0, "setSecondaryLockscreenEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11257
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11259
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setSecondaryLockscreenEnabled(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11262
    goto :goto_0

    .line 11260
    :catch_0
    move-exception v0

    .line 11261
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11264
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 11782
    const-string/jumbo v0, "setSecureSetting"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11784
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11786
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11789
    goto :goto_0

    .line 11787
    :catch_0
    move-exception v0

    .line 11788
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11791
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setSecurityLoggingEnabled(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 12769
    const-string/jumbo v0, "setSecurityLoggingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12771
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/admin/IDevicePolicyManager;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12774
    nop

    .line 12775
    return-void

    .line 12772
    :catch_0
    move-exception v0

    .line 12773
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 12545
    const-string/jumbo v0, "setShortSupportMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12546
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 12548
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12551
    goto :goto_0

    .line 12549
    :catch_0
    move-exception v0

    .line 12550
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12553
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "startUserSessionMessage"    # Ljava/lang/CharSequence;

    .line 13950
    const-string/jumbo v0, "setStartUserSessionMessage"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13952
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13955
    nop

    .line 13956
    return-void

    .line 13953
    :catch_0
    move-exception v0

    .line 13954
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setStatusBarDisabled(Landroid/content/ComponentName;Z)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 12138
    const-string/jumbo v0, "setStatusBarDisabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12140
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setStatusBarDisabled(Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 12141
    :catch_0
    move-exception v0

    .line 12142
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setStorageEncryption(Landroid/content/ComponentName;Z)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6848
    const-string/jumbo v0, "setStorageEncryption"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 6849
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 6851
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 6852
    :catch_0
    move-exception v0

    .line 6853
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 6856
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 11604
    const-string/jumbo v0, "setSystemSetting"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11605
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11607
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11610
    goto :goto_0

    .line 11608
    :catch_0
    move-exception v0

    .line 11609
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11612
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "policy"    # Landroid/app/admin/SystemUpdatePolicy;

    .line 12039
    const-string/jumbo v0, "setSystemUpdatePolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12040
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 12042
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setSystemUpdatePolicy(Landroid/content/ComponentName;Landroid/app/admin/SystemUpdatePolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12045
    goto :goto_0

    .line 12043
    :catch_0
    move-exception v0

    .line 12044
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 12047
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setTime(Landroid/content/ComponentName;J)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "millis"    # J

    .line 11678
    const-string/jumbo v0, "setTime"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11679
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11681
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setTime(Landroid/content/ComponentName;J)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 11682
    :catch_0
    move-exception v0

    .line 11683
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11686
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeZone"    # Ljava/lang/String;

    .line 11704
    const-string/jumbo v0, "setTimeZone"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11705
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11707
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 11708
    :catch_0
    move-exception v0

    .line 11709
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11712
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "configuration"    # Landroid/os/PersistableBundle;

    .line 9760
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9762
    :try_start_0
    iget-boolean v1, p0, Landroid/app/admin/DevicePolicyManager;->mParentInstance:Z

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/admin/IDevicePolicyManager;->setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9765
    goto :goto_0

    .line 9763
    :catch_0
    move-exception v0

    .line 9764
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9767
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uninstallBlocked"    # Z

    .line 11870
    const-string/jumbo v0, "setUninstallBlocked"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 11871
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 11873
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11877
    goto :goto_0

    .line 11875
    :catch_0
    move-exception v0

    .line 11876
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 11879
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setUsbDataSignalingEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 15439
    const-string/jumbo v0, "setUsbDataSignalingEnabled"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15440
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15442
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/app/admin/IDevicePolicyManager;->setUsbDataSignalingEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15445
    goto :goto_0

    .line 15443
    :catch_0
    move-exception v0

    .line 15444
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15447
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14856
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "setUserControlDisabledPackages"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14857
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14859
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14862
    goto :goto_0

    .line 14860
    :catch_0
    move-exception v0

    .line 14861
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14864
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .line 12002
    const-string/jumbo v0, "setUserIcon"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 12004
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12007
    nop

    .line 12008
    return-void

    .line 12005
    :catch_0
    move-exception v0

    .line 12006
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setUserProvisioningState(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "userHandle"    # I

    .line 13184
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 13186
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->setUserProvisioningState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13189
    goto :goto_0

    .line 13187
    :catch_0
    move-exception v0

    .line 13188
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 13191
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setUserProvisioningState(ILandroid/os/UserHandle;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 13218
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->setUserProvisioningState(II)V

    .line 13219
    return-void
.end method

.method public whitelist setWifiSsidPolicy(Landroid/app/admin/WifiSsidPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/app/admin/WifiSsidPolicy;

    .line 15627
    const-string/jumbo v0, "setWifiSsidPolicy"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 15628
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    .line 15629
    return-void

    .line 15632
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->setWifiSsidPolicy(Landroid/app/admin/WifiSsidPolicy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15635
    nop

    .line 15637
    return-void

    .line 15633
    :catch_0
    move-exception v0

    .line 15634
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist shouldAllowBypassingDevicePolicyManagementRoleQualification()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 15802
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 15804
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IDevicePolicyManager;->shouldAllowBypassingDevicePolicyManagementRoleQualification()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 15805
    :catch_0
    move-exception v0

    .line 15806
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 15809
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o startManagedQuickContact(Ljava/lang/String;JLandroid/content/Intent;)V
    .locals 8
    .param p1, "actualLookupKey"    # Ljava/lang/String;
    .param p2, "actualContactId"    # J
    .param p4, "originalIntent"    # Landroid/content/Intent;

    .line 9984
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/admin/DevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    .line 9986
    return-void
.end method

.method public greylist-max-o startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V
    .locals 8
    .param p1, "actualLookupKey"    # Ljava/lang/String;
    .param p2, "actualContactId"    # J
    .param p4, "isContactIdIgnored"    # Z
    .param p5, "directoryId"    # J
    .param p7, "originalIntent"    # Landroid/content/Intent;

    .line 9968
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 9970
    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move-object v7, p7

    :try_start_0
    invoke-interface/range {v0 .. v7}, Landroid/app/admin/IDevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9974
    goto :goto_0

    .line 9972
    :catch_0
    move-exception v0

    .line 9973
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 9976
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 10685
    const-string/jumbo v0, "startUserInBackground"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10687
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10688
    :catch_0
    move-exception v0

    .line 10689
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startViewCalendarEventInManagedProfile(JJJZI)Z
    .locals 12
    .param p1, "eventId"    # J
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "allDay"    # Z
    .param p8, "flags"    # I

    .line 14833
    move-object v1, p0

    const-string/jumbo v0, "startViewCalendarEventInManagedProfile"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14834
    iget-object v2, v1, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v2, :cond_0

    .line 14836
    :try_start_0
    iget-object v0, v1, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v2 .. v11}, Landroid/app/admin/IDevicePolicyManager;->startViewCalendarEventInManagedProfile(Ljava/lang/String;JJJZI)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 14838
    :catch_0
    move-exception v0

    .line 14839
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 14842
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 10708
    const-string/jumbo v0, "stopUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10710
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10711
    :catch_0
    move-exception v0

    .line 10712
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 10662
    const-string/jumbo v0, "switchUser"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 10664
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 10665
    :catch_0
    move-exception v0

    .line 10666
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "bundle"    # Landroid/os/PersistableBundle;

    .line 13925
    const-string/jumbo v0, "transferOwnership"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 13927
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13930
    nop

    .line 13931
    return-void

    .line 13928
    :catch_0
    move-exception v0

    .line 13929
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist uninstallAllUserCaCerts(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 7066
    const-string/jumbo v0, "uninstallAllUserCaCerts"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7067
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7069
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 7070
    invoke-virtual {v2}, Lcom/android/org/conscrypt/TrustedCertificateStore;->userAliases()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 7069
    invoke-interface {v0, p1, v1, v2}, Landroid/app/admin/IDevicePolicyManager;->uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7073
    goto :goto_0

    .line 7071
    :catch_0
    move-exception v0

    .line 7072
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7075
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist uninstallCaCert(Landroid/content/ComponentName;[B)V
    .locals 5
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B

    .line 7011
    const-string/jumbo v0, "uninstallCaCert"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 7012
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 7014
    :try_start_0
    invoke-static {p2}, Landroid/app/admin/DevicePolicyManager;->getCaCertAlias([B)Ljava/lang/String;

    move-result-object v0

    .line 7015
    .local v0, "alias":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, p1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "alias":Ljava/lang/String;
    goto :goto_0

    .line 7018
    :catch_0
    move-exception v0

    .line 7019
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 7016
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 7017
    .local v0, "e":Ljava/security/cert/CertificateException;
    sget-object v1, Landroid/app/admin/DevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse certificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7022
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :cond_0
    :goto_0
    return-void
.end method

.method public greylist-max-o uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 13319
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13322
    nop

    .line 13323
    return-void

    .line 13320
    :catch_0
    move-exception v0

    .line 13321
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z
    .locals 2
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "apnId"    # I
    .param p3, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 14091
    const-string/jumbo v0, "updateOverrideApn"

    invoke-direct {p0, v0}, Landroid/app/admin/DevicePolicyManager;->throwIfParentInstance(Ljava/lang/String;)V

    .line 14092
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_0

    .line 14094
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 14095
    :catch_0
    move-exception v0

    .line 14096
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 14099
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist wipeData(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 6304
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->wipeDataInternal(ILjava/lang/String;)V

    .line 6305
    return-void
.end method

.method public whitelist wipeData(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "reason"    # Ljava/lang/CharSequence;

    .line 6335
    const-string/jumbo v0, "reason string is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6336
    const-string/jumbo v0, "reason string is empty"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 6337
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "WIPE_SILENTLY cannot be set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 6338
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/app/admin/DevicePolicyManager;->wipeDataInternal(ILjava/lang/String;)V

    .line 6339
    return-void
.end method
