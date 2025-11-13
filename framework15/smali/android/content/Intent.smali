.class public Landroid/content/Intent;
.super Ljava/lang/Object;
.source "Intent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Intent$CommandOptionHandler;,
        Landroid/content/Intent$FilterComparison;,
        Landroid/content/Intent$FillInFlags;,
        Landroid/content/Intent$CopyMode;,
        Landroid/content/Intent$UriFlags;,
        Landroid/content/Intent$ExtendedFlags;,
        Landroid/content/Intent$MutableFlags;,
        Landroid/content/Intent$Flags;,
        Landroid/content/Intent$AccessUriMode;,
        Landroid/content/Intent$GrantUriMode;,
        Landroid/content/Intent$ChooserContentType;,
        Landroid/content/Intent$CaptureContentForNoteStatusCodes;,
        Landroid/content/Intent$ShortcutIconResource;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ACTIVITY_RECOGNIZER:Ljava/lang/String; = "android.intent.action.ACTIVITY_RECOGNIZER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_ADVANCED_SETTINGS_CHANGED:Ljava/lang/String; = "android.intent.action.ADVANCED_SETTINGS"

.field public static final whitelist ACTION_AIRPLANE_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field public static final greylist-max-r ACTION_ALARM_CHANGED:Ljava/lang/String; = "android.intent.action.ALARM_CHANGED"

.field public static final whitelist ACTION_ALL_APPS:Ljava/lang/String; = "android.intent.action.ALL_APPS"

.field public static final whitelist ACTION_ANSWER:Ljava/lang/String; = "android.intent.action.ANSWER"

.field public static final whitelist ACTION_APPLICATION_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.APPLICATION_LOCALE_CHANGED"

.field public static final whitelist ACTION_APPLICATION_PREFERENCES:Ljava/lang/String; = "android.intent.action.APPLICATION_PREFERENCES"

.field public static final whitelist ACTION_APPLICATION_RESTRICTIONS_CHANGED:Ljava/lang/String; = "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

.field public static final whitelist ACTION_APP_ERROR:Ljava/lang/String; = "android.intent.action.APP_ERROR"

.field public static final whitelist ACTION_ASSIST:Ljava/lang/String; = "android.intent.action.ASSIST"

.field public static final whitelist ACTION_ATTACH_DATA:Ljava/lang/String; = "android.intent.action.ATTACH_DATA"

.field public static final whitelist ACTION_AUTO_REVOKE_PERMISSIONS:Ljava/lang/String; = "android.intent.action.AUTO_REVOKE_PERMISSIONS"

.field public static final whitelist ACTION_BATTERY_CHANGED:Ljava/lang/String; = "android.intent.action.BATTERY_CHANGED"

.field public static final whitelist ACTION_BATTERY_LEVEL_CHANGED:Ljava/lang/String; = "android.intent.action.BATTERY_LEVEL_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_BATTERY_LOW:Ljava/lang/String; = "android.intent.action.BATTERY_LOW"

.field public static final whitelist ACTION_BATTERY_OKAY:Ljava/lang/String; = "android.intent.action.BATTERY_OKAY"

.field public static final whitelist ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final whitelist ACTION_BUG_REPORT:Ljava/lang/String; = "android.intent.action.BUG_REPORT"

.field public static final whitelist ACTION_CALL:Ljava/lang/String; = "android.intent.action.CALL"

.field public static final whitelist ACTION_CALL_BUTTON:Ljava/lang/String; = "android.intent.action.CALL_BUTTON"

.field public static final whitelist ACTION_CALL_EMERGENCY:Ljava/lang/String; = "android.intent.action.CALL_EMERGENCY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CALL_PRIVILEGED:Ljava/lang/String; = "android.intent.action.CALL_PRIVILEGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CAMERA_BUTTON:Ljava/lang/String; = "android.intent.action.CAMERA_BUTTON"

.field public static final blacklist ACTION_CANCEL_ENABLE_ROLLBACK:Ljava/lang/String; = "android.intent.action.CANCEL_ENABLE_ROLLBACK"

.field public static final whitelist ACTION_CARRIER_SETUP:Ljava/lang/String; = "android.intent.action.CARRIER_SETUP"

.field public static final whitelist ACTION_CHOOSER:Ljava/lang/String; = "android.intent.action.CHOOSER"

.field public static final whitelist ACTION_CLOSE_SYSTEM_DIALOGS:Ljava/lang/String; = "android.intent.action.CLOSE_SYSTEM_DIALOGS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field public static final whitelist ACTION_CREATE_DOCUMENT:Ljava/lang/String; = "android.intent.action.CREATE_DOCUMENT"

.field public static final whitelist ACTION_CREATE_NOTE:Ljava/lang/String; = "android.intent.action.CREATE_NOTE"

.field public static final whitelist ACTION_CREATE_REMINDER:Ljava/lang/String; = "android.intent.action.CREATE_REMINDER"

.field public static final whitelist ACTION_CREATE_SHORTCUT:Ljava/lang/String; = "android.intent.action.CREATE_SHORTCUT"

.field public static final whitelist ACTION_DATE_CHANGED:Ljava/lang/String; = "android.intent.action.DATE_CHANGED"

.field public static final whitelist ACTION_DEFAULT:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final whitelist ACTION_DEFINE:Ljava/lang/String; = "android.intent.action.DEFINE"

.field public static final whitelist ACTION_DELETE:Ljava/lang/String; = "android.intent.action.DELETE"

.field public static final whitelist ACTION_DEVICE_CUSTOMIZATION_READY:Ljava/lang/String; = "android.intent.action.DEVICE_CUSTOMIZATION_READY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_DEVICE_FILENODE_FULL:Ljava/lang/String; = "com.samsung.intent.action.DEVICE_FILENODE_FULL"

.field public static final blacklist ACTION_DEVICE_FILENODE_NOT_FULL:Ljava/lang/String; = "com.samsung.intent.action.DEVICE_FILENODE_NOT_FULL "

.field public static final greylist ACTION_DEVICE_INITIALIZATION_WIZARD:Ljava/lang/String; = "android.intent.action.DEVICE_INITIALIZATION_WIZARD"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_DEVICE_LOCKED_CHANGED:Ljava/lang/String; = "android.intent.action.DEVICE_LOCKED_CHANGED"

.field public static final blacklist ACTION_DEVICE_STORAGE_CAUTION_OFF:Ljava/lang/String; = "com.samsung.intent.action.DEVICE_STORAGE_CAUTION_OFF"

.field public static final blacklist ACTION_DEVICE_STORAGE_CAUTION_ON:Ljava/lang/String; = "com.samsung.intent.action.DEVICE_STORAGE_CAUTION_ON"

.field public static final blacklist ACTION_DEVICE_STORAGE_EXHAUSTION:Ljava/lang/String; = "com.samsung.intent.action.DEVICE_STORAGE_EXHAUSTION"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_DEVICE_STORAGE_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_FULL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACTION_DEVICE_STORAGE_FULL_SEC:Ljava/lang/String; = "com.samsung.intent.action.DEVICE_STORAGE_FULL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_DEVICE_STORAGE_LOW:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_LOW"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACTION_DEVICE_STORAGE_NOT_EXHAUSTION:Ljava/lang/String; = "com.samsung.intent.action.DEVICE_STORAGE_NOT_EXHAUSTION"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_DEVICE_STORAGE_NOT_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_NOT_FULL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACTION_DEVICE_STORAGE_NOT_FULL_SEC:Ljava/lang/String; = "com.samsung.intent.action.DEVICE_STORAGE_NOT_FULL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_DEVICE_STORAGE_OK:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_OK"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACTION_DEVICE_STORAGE_WARNING_OFF:Ljava/lang/String; = "com.samsung.intent.action.DEVICE_STORAGE_WARNING_OFF"

.field public static final blacklist ACTION_DEVICE_STORAGE_WARNING_ON:Ljava/lang/String; = "com.samsung.intent.action.DEVICE_STORAGE_WARNING_ON"

.field public static final whitelist ACTION_DIAL:Ljava/lang/String; = "android.intent.action.DIAL"

.field public static final whitelist ACTION_DIAL_EMERGENCY:Ljava/lang/String; = "android.intent.action.DIAL_EMERGENCY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_DISMISS_KEYBOARD_SHORTCUTS:Ljava/lang/String; = "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

.field public static final blacklist ACTION_DISTRACTING_PACKAGES_CHANGED:Ljava/lang/String; = "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

.field public static final greylist-max-o ACTION_DOCK_ACTIVE:Ljava/lang/String; = "android.intent.action.DOCK_ACTIVE"

.field public static final whitelist ACTION_DOCK_EVENT:Ljava/lang/String; = "android.intent.action.DOCK_EVENT"

.field public static final greylist-max-o ACTION_DOCK_IDLE:Ljava/lang/String; = "android.intent.action.DOCK_IDLE"

.field public static final whitelist ACTION_DOMAINS_NEED_VERIFICATION:Ljava/lang/String; = "android.intent.action.DOMAINS_NEED_VERIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_DREAMING_STARTED:Ljava/lang/String; = "android.intent.action.DREAMING_STARTED"

.field public static final whitelist ACTION_DREAMING_STOPPED:Ljava/lang/String; = "android.intent.action.DREAMING_STOPPED"

.field public static final greylist-max-o ACTION_DYNAMIC_SENSOR_CHANGED:Ljava/lang/String; = "android.intent.action.DYNAMIC_SENSOR_CHANGED"

.field public static final whitelist ACTION_EDIT:Ljava/lang/String; = "android.intent.action.EDIT"

.field public static final whitelist ACTION_EXTERNAL_APPLICATIONS_AVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final whitelist ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final blacklist ACTION_EXTERNAL_STORAGE_WARNING_SEC:Ljava/lang/String; = "com.samsung.intent.action.EXTERNAL_STORAGE_WARNING_SEC"

.field public static final whitelist ACTION_FACTORY_RESET:Ljava/lang/String; = "android.intent.action.FACTORY_RESET"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_FACTORY_TEST:Ljava/lang/String; = "android.intent.action.FACTORY_TEST"

.field public static final whitelist ACTION_GET_CONTENT:Ljava/lang/String; = "android.intent.action.GET_CONTENT"

.field public static final whitelist ACTION_GET_RESTRICTION_ENTRIES:Ljava/lang/String; = "android.intent.action.GET_RESTRICTION_ENTRIES"

.field public static final whitelist ACTION_GLOBAL_BUTTON:Ljava/lang/String; = "android.intent.action.GLOBAL_BUTTON"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_GTALK_SERVICE_CONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_CONNECTED"

.field public static final whitelist ACTION_GTALK_SERVICE_DISCONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_DISCONNECTED"

.field public static final whitelist ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final greylist-max-o ACTION_IDLE_MAINTENANCE_END:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_END"

.field public static final greylist-max-o ACTION_IDLE_MAINTENANCE_START:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

.field public static final whitelist ACTION_INCIDENT_REPORT_READY:Ljava/lang/String; = "android.intent.action.INCIDENT_REPORT_READY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_INPUT_METHOD_CHANGED:Ljava/lang/String; = "android.intent.action.INPUT_METHOD_CHANGED"

.field public static final whitelist ACTION_INSERT:Ljava/lang/String; = "android.intent.action.INSERT"

.field public static final whitelist ACTION_INSERT_OR_EDIT:Ljava/lang/String; = "android.intent.action.INSERT_OR_EDIT"

.field public static final blacklist ACTION_INSIGHT_SEARCH:Ljava/lang/String; = "android.intent.action.INSIGHT_SEARCH"

.field public static final whitelist ACTION_INSTALL_FAILURE:Ljava/lang/String; = "android.intent.action.INSTALL_FAILURE"

.field public static final whitelist ACTION_INSTALL_INSTANT_APP_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_INSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_PACKAGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_INSTANT_APP_RESOLVER_SETTINGS:Ljava/lang/String; = "android.intent.action.INSTANT_APP_RESOLVER_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_INTENT_FILTER_NEEDS_VERIFICATION:Ljava/lang/String; = "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACTION_KNOX_DOCK_WINDOW_CHANGED:Ljava/lang/String; = "com.samsung.sec.knox.KNOX_DOCK_WINDOW_CHANGED"

.field public static final blacklist ACTION_KNOX_MODE_CHANGED:Ljava/lang/String; = "com.samsung.sec.knox.KNOX_MODE_CHANGED"

.field public static final whitelist ACTION_LAUNCH_CAPTURE_CONTENT_ACTIVITY_FOR_NOTE:Ljava/lang/String; = "android.intent.action.LAUNCH_CAPTURE_CONTENT_ACTIVITY_FOR_NOTE"

.field public static final blacklist ACTION_LAZY_BOOT_COMPLETED:Ljava/lang/String; = "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

.field public static final whitelist ACTION_LOAD_DATA:Ljava/lang/String; = "android.intent.action.LOAD_DATA"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field public static final whitelist ACTION_LOCKED_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.LOCKED_BOOT_COMPLETED"

.field public static final whitelist ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field public static final whitelist ACTION_MAIN_USER_LOCKSCREEN_KNOWLEDGE_FACTOR_CHANGED:Ljava/lang/String; = "android.intent.action.MAIN_USER_LOCKSCREEN_KNOWLEDGE_FACTOR_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGED_PROFILE_ADDED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_ADDED"

.field public static final whitelist ACTION_MANAGED_PROFILE_AVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_AVAILABLE"

.field public static final whitelist ACTION_MANAGED_PROFILE_REMOVED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_REMOVED"

.field public static final whitelist ACTION_MANAGED_PROFILE_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

.field public static final whitelist ACTION_MANAGED_PROFILE_UNLOCKED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_UNLOCKED"

.field public static final whitelist ACTION_MANAGE_APP_PERMISSION:Ljava/lang/String; = "android.intent.action.MANAGE_APP_PERMISSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_APP_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_APP_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_DEFAULT_APP:Ljava/lang/String; = "android.intent.action.MANAGE_DEFAULT_APP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_NETWORK_USAGE:Ljava/lang/String; = "android.intent.action.MANAGE_NETWORK_USAGE"

.field public static final whitelist ACTION_MANAGE_PACKAGE_STORAGE:Ljava/lang/String; = "android.intent.action.MANAGE_PACKAGE_STORAGE"

.field public static final whitelist ACTION_MANAGE_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_PERMISSION_APPS:Ljava/lang/String; = "android.intent.action.MANAGE_PERMISSION_APPS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_PERMISSION_USAGE:Ljava/lang/String; = "android.intent.action.MANAGE_PERMISSION_USAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_SPECIAL_APP_ACCESSES:Ljava/lang/String; = "android.intent.action.MANAGE_SPECIAL_APP_ACCESSES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_UNUSED_APPS:Ljava/lang/String; = "android.intent.action.MANAGE_UNUSED_APPS"

.field public static final greylist ACTION_MASTER_CLEAR:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_MASTER_CLEAR_NOTIFICATION:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR_NOTIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MEDIA_BAD_REMOVAL:Ljava/lang/String; = "android.intent.action.MEDIA_BAD_REMOVAL"

.field public static final whitelist ACTION_MEDIA_BUTTON:Ljava/lang/String; = "android.intent.action.MEDIA_BUTTON"

.field public static final whitelist ACTION_MEDIA_CHECKING:Ljava/lang/String; = "android.intent.action.MEDIA_CHECKING"

.field public static final whitelist ACTION_MEDIA_EJECT:Ljava/lang/String; = "android.intent.action.MEDIA_EJECT"

.field public static final whitelist ACTION_MEDIA_MOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_MOUNTED"

.field public static final whitelist ACTION_MEDIA_NOFS:Ljava/lang/String; = "android.intent.action.MEDIA_NOFS"

.field public static final whitelist ACTION_MEDIA_REMOVED:Ljava/lang/String; = "android.intent.action.MEDIA_REMOVED"

.field public static final greylist-max-o ACTION_MEDIA_RESOURCE_GRANTED:Ljava/lang/String; = "android.intent.action.MEDIA_RESOURCE_GRANTED"

.field public static final whitelist ACTION_MEDIA_SCANNER_FINISHED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field public static final whitelist ACTION_MEDIA_SCANNER_SCAN_FILE:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_MEDIA_SCANNER_STARTED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_STARTED"

.field public static final whitelist ACTION_MEDIA_SHARED:Ljava/lang/String; = "android.intent.action.MEDIA_SHARED"

.field public static final whitelist ACTION_MEDIA_UNMOUNTABLE:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTABLE"

.field public static final whitelist ACTION_MEDIA_UNMOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTED"

.field public static final greylist-max-o ACTION_MEDIA_UNSHARED:Ljava/lang/String; = "android.intent.action.MEDIA_UNSHARED"

.field public static final whitelist ACTION_MY_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.MY_PACKAGE_REPLACED"

.field public static final whitelist ACTION_MY_PACKAGE_SUSPENDED:Ljava/lang/String; = "android.intent.action.MY_PACKAGE_SUSPENDED"

.field public static final whitelist ACTION_MY_PACKAGE_UNSUSPENDED:Ljava/lang/String; = "android.intent.action.MY_PACKAGE_UNSUSPENDED"

.field public static final whitelist ACTION_NEW_OUTGOING_CALL:Ljava/lang/String; = "android.intent.action.NEW_OUTGOING_CALL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_OPEN_DOCUMENT:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT"

.field public static final whitelist ACTION_OPEN_DOCUMENT_TREE:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT_TREE"

.field public static final greylist-max-o ACTION_OVERLAY_CHANGED:Ljava/lang/String; = "android.intent.action.OVERLAY_CHANGED"

.field public static final whitelist ACTION_PACKAGES_SUSPENDED:Ljava/lang/String; = "android.intent.action.PACKAGES_SUSPENDED"

.field public static final blacklist ACTION_PACKAGES_SUSPENSION_CHANGED:Ljava/lang/String; = "android.intent.action.PACKAGES_SUSPENSION_CHANGED"

.field public static final whitelist ACTION_PACKAGES_UNSUSPENDED:Ljava/lang/String; = "android.intent.action.PACKAGES_UNSUSPENDED"

.field public static final whitelist ACTION_PACKAGE_ADDED:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field public static final whitelist ACTION_PACKAGE_CHANGED:Ljava/lang/String; = "android.intent.action.PACKAGE_CHANGED"

.field public static final whitelist ACTION_PACKAGE_DATA_CLEARED:Ljava/lang/String; = "android.intent.action.PACKAGE_DATA_CLEARED"

.field public static final blacklist ACTION_PACKAGE_ENABLE_ROLLBACK:Ljava/lang/String; = "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

.field public static final whitelist ACTION_PACKAGE_FIRST_LAUNCH:Ljava/lang/String; = "android.intent.action.PACKAGE_FIRST_LAUNCH"

.field public static final whitelist ACTION_PACKAGE_FULLY_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_FULLY_REMOVED"

.field public static final whitelist ACTION_PACKAGE_INSTALL:Ljava/lang/String; = "android.intent.action.PACKAGE_INSTALL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_PACKAGE_NEEDS_INTEGRITY_VERIFICATION:Ljava/lang/String; = "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PACKAGE_NEEDS_VERIFICATION:Ljava/lang/String; = "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

.field public static final whitelist ACTION_PACKAGE_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED"

.field public static final blacklist ACTION_PACKAGE_REMOVED_INTERNAL:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED_INTERNAL"

.field public static final whitelist ACTION_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.PACKAGE_REPLACED"

.field public static final whitelist ACTION_PACKAGE_RESTARTED:Ljava/lang/String; = "android.intent.action.PACKAGE_RESTARTED"

.field public static final whitelist ACTION_PACKAGE_UNSTOPPED:Ljava/lang/String; = "android.intent.action.PACKAGE_UNSTOPPED"

.field public static final whitelist ACTION_PACKAGE_UNSUSPENDED_MANUALLY:Ljava/lang/String; = "android.intent.action.PACKAGE_UNSUSPENDED_MANUALLY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PACKAGE_VERIFIED:Ljava/lang/String; = "android.intent.action.PACKAGE_VERIFIED"

.field public static final whitelist ACTION_PASTE:Ljava/lang/String; = "android.intent.action.PASTE"

.field public static final whitelist ACTION_PENDING_INCIDENT_REPORTS_CHANGED:Ljava/lang/String; = "android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PICK:Ljava/lang/String; = "android.intent.action.PICK"

.field public static final whitelist ACTION_PICK_ACTIVITY:Ljava/lang/String; = "android.intent.action.PICK_ACTIVITY"

.field public static final whitelist ACTION_POWER_CONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_CONNECTED"

.field public static final whitelist ACTION_POWER_DISCONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_DISCONNECTED"

.field public static final whitelist ACTION_POWER_USAGE_SUMMARY:Ljava/lang/String; = "android.intent.action.POWER_USAGE_SUMMARY"

.field public static final greylist-max-o ACTION_PREFERRED_ACTIVITY_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

.field public static final whitelist ACTION_PRE_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.PRE_BOOT_COMPLETED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PROCESS_TEXT:Ljava/lang/String; = "android.intent.action.PROCESS_TEXT"

.field public static final whitelist ACTION_PROFILE_ACCESSIBLE:Ljava/lang/String; = "android.intent.action.PROFILE_ACCESSIBLE"

.field public static final whitelist ACTION_PROFILE_ADDED:Ljava/lang/String; = "android.intent.action.PROFILE_ADDED"

.field public static final whitelist ACTION_PROFILE_AVAILABLE:Ljava/lang/String; = "android.intent.action.PROFILE_AVAILABLE"

.field public static final whitelist ACTION_PROFILE_INACCESSIBLE:Ljava/lang/String; = "android.intent.action.PROFILE_INACCESSIBLE"

.field public static final whitelist ACTION_PROFILE_REMOVED:Ljava/lang/String; = "android.intent.action.PROFILE_REMOVED"

.field public static final whitelist ACTION_PROFILE_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.PROFILE_UNAVAILABLE"

.field public static final whitelist ACTION_PROVIDER_CHANGED:Ljava/lang/String; = "android.intent.action.PROVIDER_CHANGED"

.field public static final whitelist ACTION_QUERY_PACKAGE_RESTART:Ljava/lang/String; = "android.intent.action.QUERY_PACKAGE_RESTART"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_QUICK_CLOCK:Ljava/lang/String; = "android.intent.action.QUICK_CLOCK"

.field public static final whitelist ACTION_QUICK_VIEW:Ljava/lang/String; = "android.intent.action.QUICK_VIEW"

.field public static final whitelist ACTION_REBOOT:Ljava/lang/String; = "android.intent.action.REBOOT"

.field public static final greylist-max-o ACTION_REMOTE_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final greylist-max-o ACTION_REQUEST_SHUTDOWN:Ljava/lang/String; = "com.android.internal.intent.action.REQUEST_SHUTDOWN"

.field public static final whitelist ACTION_RESOLVE_INSTANT_APP_PACKAGE:Ljava/lang/String; = "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "android.intent.action.REVIEW_ACCESSIBILITY_SERVICES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_APP_DATA_SHARING_UPDATES:Ljava/lang/String; = "android.intent.action.REVIEW_APP_DATA_SHARING_UPDATES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_ONGOING_PERMISSION_USAGE:Ljava/lang/String; = "android.intent.action.REVIEW_ONGOING_PERMISSION_USAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_PERMISSIONS:Ljava/lang/String; = "android.intent.action.REVIEW_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_PERMISSION_HISTORY:Ljava/lang/String; = "android.intent.action.REVIEW_PERMISSION_HISTORY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_PERMISSION_USAGE:Ljava/lang/String; = "android.intent.action.REVIEW_PERMISSION_USAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_ROLLBACK_COMMITTED:Ljava/lang/String; = "android.intent.action.ROLLBACK_COMMITTED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_RUN:Ljava/lang/String; = "android.intent.action.RUN"

.field public static final blacklist ACTION_RUN_DISK_DEFRAGMENTATION_SEC:Ljava/lang/String; = "com.samsung.intent.action.RUN_DISK_DEFRAGMENTATION"

.field public static final whitelist ACTION_SAFETY_CENTER:Ljava/lang/String; = "android.intent.action.SAFETY_CENTER"

.field public static final blacklist ACTION_SAMSUNG_SEARCH:Ljava/lang/String; = "com.samsung.android.intent.action.SEARCH"

.field public static final whitelist ACTION_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field public static final whitelist ACTION_SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field public static final whitelist ACTION_SEARCH:Ljava/lang/String; = "android.intent.action.SEARCH"

.field public static final whitelist ACTION_SEARCH_LONG_PRESS:Ljava/lang/String; = "android.intent.action.SEARCH_LONG_PRESS"

.field public static final blacklist ACTION_SECURE_FOLDER_POLICY_CHANGED:Ljava/lang/String; = "com.samsung.sec.knox.SECURE_FOLDER_POLICY_CHANGED"

.field public static final whitelist ACTION_SEND:Ljava/lang/String; = "android.intent.action.SEND"

.field public static final whitelist ACTION_SENDTO:Ljava/lang/String; = "android.intent.action.SENDTO"

.field public static final whitelist ACTION_SEND_MULTIPLE:Ljava/lang/String; = "android.intent.action.SEND_MULTIPLE"

.field public static final greylist ACTION_SERVICE_STATE:Ljava/lang/String; = "android.intent.action.SERVICE_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_SETTING_RESTORED:Ljava/lang/String; = "android.os.action.SETTING_RESTORED"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist ACTION_SET_WALLPAPER:Ljava/lang/String; = "android.intent.action.SET_WALLPAPER"

.field public static final blacklist ACTION_SF_PACKAGE_ADDED:Ljava/lang/String; = "com.samsung.knox.SECURE_FOLDER_PACKAGE_ADDED"

.field public static final blacklist ACTION_SF_PACKAGE_REMOVED:Ljava/lang/String; = "com.samsung.knox.SECURE_FOLDER_PACKAGE_REMOVED"

.field public static final whitelist ACTION_SHOW_APP_INFO:Ljava/lang/String; = "android.intent.action.SHOW_APP_INFO"

.field public static final greylist-max-o ACTION_SHOW_BRIGHTNESS_DIALOG:Ljava/lang/String; = "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

.field public static final blacklist ACTION_SHOW_FOREGROUND_SERVICE_MANAGER:Ljava/lang/String; = "android.intent.action.SHOW_FOREGROUND_SERVICE_MANAGER"

.field public static final greylist-max-o ACTION_SHOW_KEYBOARD_SHORTCUTS:Ljava/lang/String; = "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

.field public static final whitelist ACTION_SHOW_SUSPENDED_APP_DETAILS:Ljava/lang/String; = "android.intent.action.SHOW_SUSPENDED_APP_DETAILS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SHOW_WORK_APPS:Ljava/lang/String; = "android.intent.action.SHOW_WORK_APPS"

.field public static final whitelist ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field public static final whitelist ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_SPLIT_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.SPLIT_CONFIGURATION_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_SWEEP_FULL_SCREEN:Ljava/lang/String; = "com.samsung.android.motion.SWEEP_FULL_SCREEN"

.field public static final blacklist ACTION_SWEEP_LEFT:Ljava/lang/String; = "com.samsung.android.motion.SWEEP_LEFT"

.field public static final blacklist ACTION_SWEEP_RIGHT:Ljava/lang/String; = "com.samsung.android.motion.SWEEP_RIGHT"

.field public static final whitelist ACTION_SYNC:Ljava/lang/String; = "android.intent.action.SYNC"

.field public static final whitelist ACTION_SYSTEM_TUTORIAL:Ljava/lang/String; = "android.intent.action.SYSTEM_TUTORIAL"

.field public static final greylist-max-o ACTION_THERMAL_EVENT:Ljava/lang/String; = "android.intent.action.THERMAL_EVENT"

.field public static final whitelist ACTION_TIMEZONE_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEZONE_CHANGED"

.field public static final whitelist ACTION_TIME_CHANGED:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field public static final whitelist ACTION_TIME_TICK:Ljava/lang/String; = "android.intent.action.TIME_TICK"

.field public static final whitelist ACTION_TRANSLATE:Ljava/lang/String; = "android.intent.action.TRANSLATE"

.field public static final whitelist ACTION_UID_REMOVED:Ljava/lang/String; = "android.intent.action.UID_REMOVED"

.field public static final whitelist ACTION_UMS_CONNECTED:Ljava/lang/String; = "android.intent.action.UMS_CONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_UMS_DISCONNECTED:Ljava/lang/String; = "android.intent.action.UMS_DISCONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_UNARCHIVE_PACKAGE:Ljava/lang/String; = "android.intent.action.UNARCHIVE_PACKAGE"

.field public static final whitelist ACTION_UNINSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.UNINSTALL_PACKAGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_UPGRADE_SETUP:Ljava/lang/String; = "android.intent.action.UPGRADE_SETUP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_USB_RESTRICTION_STATE_SEC:Ljava/lang/String; = "com.samsung.intent.action.USB_RESTRICTION_STATE"

.field public static final blacklist ACTION_USB_WET_STATE_SEC:Ljava/lang/String; = "com.samsung.intent.action.USB_WET_STATE"

.field public static final whitelist ACTION_USER_ADDED:Ljava/lang/String; = "android.intent.action.USER_ADDED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_USER_BACKGROUND:Ljava/lang/String; = "android.intent.action.USER_BACKGROUND"

.field public static final whitelist ACTION_USER_FOREGROUND:Ljava/lang/String; = "android.intent.action.USER_FOREGROUND"

.field public static final greylist-max-o ACTION_USER_INFO_CHANGED:Ljava/lang/String; = "android.intent.action.USER_INFO_CHANGED"

.field public static final whitelist ACTION_USER_INITIALIZE:Ljava/lang/String; = "android.intent.action.USER_INITIALIZE"

.field public static final whitelist ACTION_USER_PRESENT:Ljava/lang/String; = "android.intent.action.USER_PRESENT"

.field public static final whitelist ACTION_USER_REMOVED:Ljava/lang/String; = "android.intent.action.USER_REMOVED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_USER_STARTED:Ljava/lang/String; = "android.intent.action.USER_STARTED"

.field public static final greylist-max-o ACTION_USER_STARTING:Ljava/lang/String; = "android.intent.action.USER_STARTING"

.field public static final greylist-max-o ACTION_USER_STOPPED:Ljava/lang/String; = "android.intent.action.USER_STOPPED"

.field public static final greylist-max-o ACTION_USER_STOPPING:Ljava/lang/String; = "android.intent.action.USER_STOPPING"

.field public static final whitelist ACTION_USER_SWITCHED:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_USER_UNLOCKED:Ljava/lang/String; = "android.intent.action.USER_UNLOCKED"

.field public static final whitelist ACTION_VIEW:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final whitelist ACTION_VIEW_APP_FEATURES:Ljava/lang/String; = "android.intent.action.VIEW_APP_FEATURES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_VIEW_LOCUS:Ljava/lang/String; = "android.intent.action.VIEW_LOCUS"

.field public static final whitelist ACTION_VIEW_PERMISSION_USAGE:Ljava/lang/String; = "android.intent.action.VIEW_PERMISSION_USAGE"

.field public static final whitelist ACTION_VIEW_PERMISSION_USAGE_FOR_PERIOD:Ljava/lang/String; = "android.intent.action.VIEW_PERMISSION_USAGE_FOR_PERIOD"

.field public static final whitelist ACTION_VIEW_SAFETY_CENTER_QS:Ljava/lang/String; = "android.intent.action.VIEW_SAFETY_CENTER_QS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_VOICE_ASSIST:Ljava/lang/String; = "android.intent.action.VOICE_ASSIST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_VOICE_COMMAND:Ljava/lang/String; = "android.intent.action.VOICE_COMMAND"

.field public static final whitelist ACTION_WALLPAPER_CHANGED:Ljava/lang/String; = "android.intent.action.WALLPAPER_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_WEB_SEARCH:Ljava/lang/String; = "android.intent.action.WEB_SEARCH"

.field private static final greylist-max-o ATTR_ACTION:Ljava/lang/String; = "action"

.field private static final greylist-max-o ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final greylist-max-o ATTR_COMPONENT:Ljava/lang/String; = "component"

.field private static final greylist-max-o ATTR_DATA:Ljava/lang/String; = "data"

.field private static final greylist-max-o ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final blacklist ATTR_IDENTIFIER:Ljava/lang/String; = "ident"

.field private static final greylist-max-o ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final whitelist CAPTURE_CONTENT_FOR_NOTE_BLOCKED_BY_ADMIN:I = 0x4

.field public static final whitelist CAPTURE_CONTENT_FOR_NOTE_FAILED:I = 0x1

.field public static final whitelist CAPTURE_CONTENT_FOR_NOTE_SUCCESS:I = 0x0

.field public static final whitelist CAPTURE_CONTENT_FOR_NOTE_USER_CANCELED:I = 0x2

.field public static final whitelist CAPTURE_CONTENT_FOR_NOTE_WINDOW_MODE_UNSUPPORTED:I = 0x3

.field public static final whitelist CATEGORY_ACCESSIBILITY_SHORTCUT_TARGET:Ljava/lang/String; = "android.intent.category.ACCESSIBILITY_SHORTCUT_TARGET"

.field public static final whitelist CATEGORY_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.ALTERNATIVE"

.field public static final whitelist CATEGORY_APP_BROWSER:Ljava/lang/String; = "android.intent.category.APP_BROWSER"

.field public static final whitelist CATEGORY_APP_CALCULATOR:Ljava/lang/String; = "android.intent.category.APP_CALCULATOR"

.field public static final whitelist CATEGORY_APP_CALENDAR:Ljava/lang/String; = "android.intent.category.APP_CALENDAR"

.field public static final whitelist CATEGORY_APP_CONTACTS:Ljava/lang/String; = "android.intent.category.APP_CONTACTS"

.field public static final whitelist CATEGORY_APP_EMAIL:Ljava/lang/String; = "android.intent.category.APP_EMAIL"

.field public static final whitelist CATEGORY_APP_FILES:Ljava/lang/String; = "android.intent.category.APP_FILES"

.field public static final whitelist CATEGORY_APP_FITNESS:Ljava/lang/String; = "android.intent.category.APP_FITNESS"

.field public static final whitelist CATEGORY_APP_GALLERY:Ljava/lang/String; = "android.intent.category.APP_GALLERY"

.field public static final whitelist CATEGORY_APP_MAPS:Ljava/lang/String; = "android.intent.category.APP_MAPS"

.field public static final whitelist CATEGORY_APP_MARKET:Ljava/lang/String; = "android.intent.category.APP_MARKET"

.field public static final whitelist CATEGORY_APP_MESSAGING:Ljava/lang/String; = "android.intent.category.APP_MESSAGING"

.field public static final whitelist CATEGORY_APP_MUSIC:Ljava/lang/String; = "android.intent.category.APP_MUSIC"

.field public static final whitelist CATEGORY_APP_WEATHER:Ljava/lang/String; = "android.intent.category.APP_WEATHER"

.field public static final whitelist CATEGORY_BROWSABLE:Ljava/lang/String; = "android.intent.category.BROWSABLE"

.field public static final whitelist CATEGORY_CAR_DOCK:Ljava/lang/String; = "android.intent.category.CAR_DOCK"

.field public static final greylist-max-o CATEGORY_CAR_LAUNCHER:Ljava/lang/String; = "android.intent.category.CAR_LAUNCHER"

.field public static final whitelist CATEGORY_CAR_MODE:Ljava/lang/String; = "android.intent.category.CAR_MODE"

.field public static final blacklist CATEGORY_COMMUNAL_MODE:Ljava/lang/String; = "android.intent.category.COMMUNAL_MODE"

.field public static final whitelist CATEGORY_DEFAULT:Ljava/lang/String; = "android.intent.category.DEFAULT"

.field public static final whitelist CATEGORY_DESK_DOCK:Ljava/lang/String; = "android.intent.category.DESK_DOCK"

.field public static final whitelist CATEGORY_DEVELOPMENT_PREFERENCE:Ljava/lang/String; = "android.intent.category.DEVELOPMENT_PREFERENCE"

.field public static final whitelist CATEGORY_EMBED:Ljava/lang/String; = "android.intent.category.EMBED"

.field public static final whitelist CATEGORY_FRAMEWORK_INSTRUMENTATION_TEST:Ljava/lang/String; = "android.intent.category.FRAMEWORK_INSTRUMENTATION_TEST"

.field public static final whitelist CATEGORY_HE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.HE_DESK_DOCK"

.field public static final whitelist CATEGORY_HOME:Ljava/lang/String; = "android.intent.category.HOME"

.field public static final greylist-max-o CATEGORY_HOME_MAIN:Ljava/lang/String; = "android.intent.category.HOME_MAIN"

.field public static final whitelist CATEGORY_INFO:Ljava/lang/String; = "android.intent.category.INFO"

.field public static final whitelist CATEGORY_LAUNCHER:Ljava/lang/String; = "android.intent.category.LAUNCHER"

.field public static final greylist-max-o CATEGORY_LAUNCHER_APP:Ljava/lang/String; = "android.intent.category.LAUNCHER_APP"

.field public static final whitelist CATEGORY_LEANBACK_LAUNCHER:Ljava/lang/String; = "android.intent.category.LEANBACK_LAUNCHER"

.field public static final whitelist CATEGORY_LEANBACK_SETTINGS:Ljava/lang/String; = "android.intent.category.LEANBACK_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_LE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.LE_DESK_DOCK"

.field public static final whitelist CATEGORY_MONKEY:Ljava/lang/String; = "android.intent.category.MONKEY"

.field public static final whitelist CATEGORY_OPENABLE:Ljava/lang/String; = "android.intent.category.OPENABLE"

.field public static final whitelist CATEGORY_PREFERENCE:Ljava/lang/String; = "android.intent.category.PREFERENCE"

.field public static final whitelist CATEGORY_SAMPLE_CODE:Ljava/lang/String; = "android.intent.category.SAMPLE_CODE"

.field public static final whitelist CATEGORY_SECONDARY_HOME:Ljava/lang/String; = "android.intent.category.SECONDARY_HOME"

.field public static final whitelist CATEGORY_SELECTED_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.SELECTED_ALTERNATIVE"

.field public static final greylist-max-o CATEGORY_SETUP_WIZARD:Ljava/lang/String; = "android.intent.category.SETUP_WIZARD"

.field public static final whitelist CATEGORY_TAB:Ljava/lang/String; = "android.intent.category.TAB"

.field public static final whitelist CATEGORY_TEST:Ljava/lang/String; = "android.intent.category.TEST"

.field public static final whitelist CATEGORY_TYPED_OPENABLE:Ljava/lang/String; = "android.intent.category.TYPED_OPENABLE"

.field public static final whitelist CATEGORY_UNIT_TEST:Ljava/lang/String; = "android.intent.category.UNIT_TEST"

.field public static final whitelist CATEGORY_VOICE:Ljava/lang/String; = "android.intent.category.VOICE"

.field public static final whitelist CATEGORY_VR_HOME:Ljava/lang/String; = "android.intent.category.VR_HOME"

.field public static final whitelist CHOOSER_CONTENT_TYPE_ALBUM:I = 0x1

.field private static final greylist-max-o COPY_MODE_ALL:I = 0x0

.field private static final greylist-max-o COPY_MODE_FILTER:I = 0x1

.field private static final greylist-max-o COPY_MODE_HISTORY:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXTENDED_FLAG_FILTER_MISMATCH:I = 0x1

.field public static final whitelist EXTRA_ALARM_COUNT:Ljava/lang/String; = "android.intent.extra.ALARM_COUNT"

.field public static final whitelist EXTRA_ALLOW_MULTIPLE:Ljava/lang/String; = "android.intent.extra.ALLOW_MULTIPLE"

.field public static final whitelist EXTRA_ALLOW_REPLACE:Ljava/lang/String; = "android.intent.extra.ALLOW_REPLACE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_ALTERNATE_INTENTS:Ljava/lang/String; = "android.intent.extra.ALTERNATE_INTENTS"

.field public static final whitelist EXTRA_ARCHIVAL:Ljava/lang/String; = "android.intent.extra.ARCHIVAL"

.field public static final whitelist EXTRA_ASSIST_CONTEXT:Ljava/lang/String; = "android.intent.extra.ASSIST_CONTEXT"

.field public static final whitelist EXTRA_ASSIST_INPUT_DEVICE_ID:Ljava/lang/String; = "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

.field public static final whitelist EXTRA_ASSIST_INPUT_HINT_KEYBOARD:Ljava/lang/String; = "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

.field public static final whitelist EXTRA_ASSIST_PACKAGE:Ljava/lang/String; = "android.intent.extra.ASSIST_PACKAGE"

.field public static final whitelist EXTRA_ASSIST_UID:Ljava/lang/String; = "android.intent.extra.ASSIST_UID"

.field public static final whitelist EXTRA_ATTRIBUTION_TAGS:Ljava/lang/String; = "android.intent.extra.ATTRIBUTION_TAGS"

.field public static final whitelist EXTRA_AUTO_LAUNCH_SINGLE_CHOICE:Ljava/lang/String; = "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

.field public static final whitelist EXTRA_BCC:Ljava/lang/String; = "android.intent.extra.BCC"

.field public static final blacklist EXTRA_BRIGHTNESS_DIALOG_IS_FULL_WIDTH:Ljava/lang/String; = "android.intent.extra.BRIGHTNESS_DIALOG_IS_FULL_WIDTH"

.field public static final whitelist EXTRA_BUG_REPORT:Ljava/lang/String; = "android.intent.extra.BUG_REPORT"

.field public static final whitelist EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "android.intent.extra.CALLING_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CAPTURE_CONTENT_FOR_NOTE_STATUS_CODE:Ljava/lang/String; = "android.intent.extra.CAPTURE_CONTENT_FOR_NOTE_STATUS_CODE"

.field public static final whitelist EXTRA_CC:Ljava/lang/String; = "android.intent.extra.CC"

.field public static final greylist EXTRA_CDMA_DEFAULT_ROAMING_INDICATOR:Ljava/lang/String; = "cdmaDefaultRoamingIndicator"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_CDMA_ROAMING_INDICATOR:Ljava/lang/String; = "cdmaRoamingIndicator"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_CHANGED_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.changed_component_name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_CHANGED_COMPONENT_NAME_LIST:Ljava/lang/String; = "android.intent.extra.changed_component_name_list"

.field public static final whitelist EXTRA_CHANGED_PACKAGE_LIST:Ljava/lang/String; = "android.intent.extra.changed_package_list"

.field public static final whitelist EXTRA_CHANGED_UID_LIST:Ljava/lang/String; = "android.intent.extra.changed_uid_list"

.field public static final whitelist EXTRA_CHOOSER_ADDITIONAL_CONTENT_URI:Ljava/lang/String; = "android.intent.extra.CHOOSER_ADDITIONAL_CONTENT_URI"

.field public static final whitelist EXTRA_CHOOSER_CONTENT_TYPE_HINT:Ljava/lang/String; = "android.intent.extra.CHOOSER_CONTENT_TYPE_HINT"

.field public static final whitelist EXTRA_CHOOSER_CUSTOM_ACTIONS:Ljava/lang/String; = "android.intent.extra.CHOOSER_CUSTOM_ACTIONS"

.field public static final whitelist EXTRA_CHOOSER_FOCUSED_ITEM_POSITION:Ljava/lang/String; = "android.intent.extra.CHOOSER_FOCUSED_ITEM_POSITION"

.field public static final whitelist EXTRA_CHOOSER_MODIFY_SHARE_ACTION:Ljava/lang/String; = "android.intent.extra.CHOOSER_MODIFY_SHARE_ACTION"

.field public static final whitelist EXTRA_CHOOSER_REFINEMENT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

.field public static final whitelist EXTRA_CHOOSER_RESULT:Ljava/lang/String; = "android.intent.extra.CHOOSER_RESULT"

.field public static final whitelist EXTRA_CHOOSER_RESULT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOOSER_RESULT_INTENT_SENDER"

.field public static final whitelist EXTRA_CHOOSER_TARGETS:Ljava/lang/String; = "android.intent.extra.CHOOSER_TARGETS"

.field public static final whitelist EXTRA_CHOSEN_COMPONENT:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT"

.field public static final whitelist EXTRA_CHOSEN_COMPONENT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

.field public static final greylist-max-o EXTRA_CLIENT_INTENT:Ljava/lang/String; = "android.intent.extra.client_intent"

.field public static final greylist-max-o EXTRA_CLIENT_LABEL:Ljava/lang/String; = "android.intent.extra.client_label"

.field public static final whitelist EXTRA_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.COMPONENT_NAME"

.field public static final whitelist EXTRA_CONTENT_ANNOTATIONS:Ljava/lang/String; = "android.intent.extra.CONTENT_ANNOTATIONS"

.field public static final whitelist EXTRA_CONTENT_QUERY:Ljava/lang/String; = "android.intent.extra.CONTENT_QUERY"

.field public static final greylist EXTRA_CSS_INDICATOR:Ljava/lang/String; = "cssIndicator"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_DATA_OPERATOR_ALPHA_LONG:Ljava/lang/String; = "data-operator-alpha-long"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_DATA_OPERATOR_ALPHA_SHORT:Ljava/lang/String; = "data-operator-alpha-short"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_DATA_OPERATOR_NUMERIC:Ljava/lang/String; = "data-operator-numeric"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_DATA_RADIO_TECH:Ljava/lang/String; = "dataRadioTechnology"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_DATA_REG_STATE:Ljava/lang/String; = "dataRegState"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_DATA_REMOVED:Ljava/lang/String; = "android.intent.extra.DATA_REMOVED"

.field public static final greylist EXTRA_DATA_ROAMING_TYPE:Ljava/lang/String; = "dataRoamingType"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_DISTRACTION_RESTRICTIONS:Ljava/lang/String; = "android.intent.extra.distraction_restrictions"

.field public static final blacklist EXTRA_DND_RECENT_TOP_TASK_ID:Ljava/lang/String; = "android.intent.extra.DND_RECENT_TOP_TASK_ID"

.field public static final whitelist EXTRA_DOCK_STATE:Ljava/lang/String; = "android.intent.extra.DOCK_STATE"

.field public static final blacklist EXTRA_DOCK_STATE_ABNORMAL:I = 0x6a

.field public static final blacklist EXTRA_DOCK_STATE_AUDIO_DOCK:I = 0x65

.field public static final whitelist EXTRA_DOCK_STATE_CAR:I = 0x2

.field public static final whitelist EXTRA_DOCK_STATE_DESK:I = 0x1

.field public static final blacklist EXTRA_DOCK_STATE_GAMEPAD_EARJACK:I = 0x6c

.field public static final blacklist EXTRA_DOCK_STATE_GAMEPAD_ONLY:I = 0x6b

.field public static final whitelist EXTRA_DOCK_STATE_HE_DESK:I = 0x4

.field public static final blacklist EXTRA_DOCK_STATE_HMT:I = 0x69

.field public static final blacklist EXTRA_DOCK_STATE_HMT_TETHERED:I = 0x70

.field public static final whitelist EXTRA_DOCK_STATE_LE_DESK:I = 0x3

.field public static final blacklist EXTRA_DOCK_STATE_SMART_DOCK:I = 0x66

.field public static final whitelist EXTRA_DOCK_STATE_UNDOCKED:I = 0x0

.field public static final whitelist EXTRA_DONT_KILL_APP:Ljava/lang/String; = "android.intent.extra.DONT_KILL_APP"

.field public static final whitelist EXTRA_DURATION_MILLIS:Ljava/lang/String; = "android.intent.extra.DURATION_MILLIS"

.field public static final whitelist EXTRA_EMAIL:Ljava/lang/String; = "android.intent.extra.EMAIL"

.field public static final greylist EXTRA_EMERGENCY_ONLY:Ljava/lang/String; = "emergencyOnly"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_END_TIME:Ljava/lang/String; = "android.intent.extra.END_TIME"

.field public static final whitelist EXTRA_EXCLUDE_COMPONENTS:Ljava/lang/String; = "android.intent.extra.EXCLUDE_COMPONENTS"

.field public static final blacklist EXTRA_FDR_REQUEST_TIME:Ljava/lang/String; = "com.android.internal.intent.extra.FDR_REQUEST_TIME"

.field public static final whitelist EXTRA_FORCE_FACTORY_RESET:Ljava/lang/String; = "android.intent.extra.FORCE_FACTORY_RESET"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_FORCE_MASTER_CLEAR:Ljava/lang/String; = "android.intent.extra.FORCE_MASTER_CLEAR"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_FREEZE_TASK_DISPLAY_AREA:Ljava/lang/String; = "com.sec.intent.extra.FREEZE_TASK_DISPLAY_AREA"

.field public static final whitelist EXTRA_FROM_STORAGE:Ljava/lang/String; = "android.intent.extra.FROM_STORAGE"

.field public static final whitelist EXTRA_HTML_TEXT:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final whitelist EXTRA_INDEX:Ljava/lang/String; = "android.intent.extra.INDEX"

.field public static final whitelist EXTRA_INITIAL_INTENTS:Ljava/lang/String; = "android.intent.extra.INITIAL_INTENTS"

.field public static final whitelist EXTRA_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.INSTALLER_PACKAGE_NAME"

.field public static final whitelist EXTRA_INSTALL_RESULT:Ljava/lang/String; = "android.intent.extra.INSTALL_RESULT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_ACTION:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_ACTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_BUNDLES:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_BUNDLES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_EXTRAS:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_EXTRAS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_FAILURE:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_FAILURE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_HOSTNAME:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_HOSTNAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_SUCCESS:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_SUCCESS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_TOKEN:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_TOKEN"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INTENT:Ljava/lang/String; = "android.intent.extra.INTENT"

.field public static final greylist EXTRA_IS_DATA_ROAMING_FROM_REGISTRATION:Ljava/lang/String; = "isDataRoamingFromRegistration"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_IS_RESTORE:Ljava/lang/String; = "android.intent.extra.IS_RESTORE"

.field public static final greylist EXTRA_IS_USING_CARRIER_AGGREGATION:Ljava/lang/String; = "isUsingCarrierAggregation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_KEY_CONFIRM:Ljava/lang/String; = "android.intent.extra.KEY_CONFIRM"

.field public static final whitelist EXTRA_KEY_EVENT:Ljava/lang/String; = "android.intent.extra.KEY_EVENT"

.field public static final blacklist EXTRA_KNOX_ARRAY:Ljava/lang/String; = "com.samsung.sec.knox.EXTRA_KNOX_ARRAY"

.field public static final blacklist EXTRA_KNOX_PARCEL:Ljava/lang/String; = "com.samsung.sec.knox.EXTRA_KNOX_PARCEL"

.field public static final whitelist EXTRA_LOCALE_LIST:Ljava/lang/String; = "android.intent.extra.LOCALE_LIST"

.field public static final whitelist EXTRA_LOCAL_ONLY:Ljava/lang/String; = "android.intent.extra.LOCAL_ONLY"

.field public static final whitelist EXTRA_LOCUS_ID:Ljava/lang/String; = "android.intent.extra.LOCUS_ID"

.field public static final whitelist EXTRA_LONG_VERSION_CODE:Ljava/lang/String; = "android.intent.extra.LONG_VERSION_CODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist EXTRA_LTE_EARFCN_RSRP_BOOST:Ljava/lang/String; = "LteEarfcnRsrpBoost"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_MANUAL:Ljava/lang/String; = "manual"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_MEDIA_RESOURCE_TYPE:Ljava/lang/String; = "android.intent.extra.MEDIA_RESOURCE_TYPE"

.field public static final greylist-max-o EXTRA_MEDIA_RESOURCE_TYPE_AUDIO_CODEC:I = 0x1

.field public static final greylist-max-o EXTRA_MEDIA_RESOURCE_TYPE_VIDEO_CODEC:I = 0x0

.field public static final whitelist EXTRA_METADATA_TEXT:Ljava/lang/String; = "android.intent.extra.METADATA_TEXT"

.field public static final whitelist EXTRA_MIME_TYPES:Ljava/lang/String; = "android.intent.extra.MIME_TYPES"

.field public static final greylist EXTRA_NETWORK_ID:Ljava/lang/String; = "networkId"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_NOT_UNKNOWN_SOURCE:Ljava/lang/String; = "android.intent.extra.NOT_UNKNOWN_SOURCE"

.field public static final greylist EXTRA_OPERATOR_ALPHA_LONG:Ljava/lang/String; = "operator-alpha-long"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_OPERATOR_ALPHA_SHORT:Ljava/lang/String; = "operator-alpha-short"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_OPERATOR_NUMERIC:Ljava/lang/String; = "operator-numeric"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_ORIGINATING_UID:Ljava/lang/String; = "android.intent.extra.ORIGINATING_UID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ORIGINATING_URI:Ljava/lang/String; = "android.intent.extra.ORIGINATING_URI"

.field public static final whitelist EXTRA_PACKAGES:Ljava/lang/String; = "android.intent.extra.PACKAGES"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field public static final whitelist EXTRA_PERMISSION_GROUP_NAME:Ljava/lang/String; = "android.intent.extra.PERMISSION_GROUP_NAME"

.field public static final whitelist EXTRA_PERMISSION_NAME:Ljava/lang/String; = "android.intent.extra.PERMISSION_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_PERSONA_ID:Ljava/lang/String; = "com.samsung.sec.knox.EXTRA_PERSONA_ID"

.field public static final whitelist EXTRA_PHONE_NUMBER:Ljava/lang/String; = "android.intent.extra.PHONE_NUMBER"

.field public static final whitelist EXTRA_PROCESS_TEXT:Ljava/lang/String; = "android.intent.extra.PROCESS_TEXT"

.field public static final whitelist EXTRA_PROCESS_TEXT_READONLY:Ljava/lang/String; = "android.intent.extra.PROCESS_TEXT_READONLY"

.field public static final blacklist EXTRA_QUARANTINED:Ljava/lang/String; = "android.intent.extra.quarantined"

.field public static final greylist EXTRA_QUICK_VIEW_ADVANCED:Ljava/lang/String; = "android.intent.extra.QUICK_VIEW_ADVANCED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_QUICK_VIEW_FEATURES:Ljava/lang/String; = "android.intent.extra.QUICK_VIEW_FEATURES"

.field public static final whitelist EXTRA_QUIET_MODE:Ljava/lang/String; = "android.intent.extra.QUIET_MODE"

.field public static final whitelist EXTRA_REASON:Ljava/lang/String; = "android.intent.extra.REASON"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_REBROADCAST_ON_UNLOCK:Ljava/lang/String; = "rebroadcastOnUnlock"

.field public static final whitelist EXTRA_REFERRER:Ljava/lang/String; = "android.intent.extra.REFERRER"

.field public static final whitelist EXTRA_REFERRER_NAME:Ljava/lang/String; = "android.intent.extra.REFERRER_NAME"

.field public static final whitelist EXTRA_REMOTE_CALLBACK:Ljava/lang/String; = "android.intent.extra.REMOTE_CALLBACK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_REMOTE_INTENT_TOKEN:Ljava/lang/String; = "android.intent.extra.remote_intent_token"

.field public static final greylist-max-o EXTRA_REMOVED_FOR_ALL_USERS:Ljava/lang/String; = "android.intent.extra.REMOVED_FOR_ALL_USERS"

.field public static final whitelist EXTRA_REPLACEMENT_EXTRAS:Ljava/lang/String; = "android.intent.extra.REPLACEMENT_EXTRAS"

.field public static final whitelist EXTRA_REPLACING:Ljava/lang/String; = "android.intent.extra.REPLACING"

.field public static final whitelist EXTRA_RESTRICTIONS_BUNDLE:Ljava/lang/String; = "android.intent.extra.restrictions_bundle"

.field public static final whitelist EXTRA_RESTRICTIONS_INTENT:Ljava/lang/String; = "android.intent.extra.restrictions_intent"

.field public static final whitelist EXTRA_RESTRICTIONS_LIST:Ljava/lang/String; = "android.intent.extra.restrictions_list"

.field public static final whitelist EXTRA_RESULT_NEEDED:Ljava/lang/String; = "android.intent.extra.RESULT_NEEDED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "android.intent.extra.RESULT_RECEIVER"

.field public static final whitelist EXTRA_RETURN_RESULT:Ljava/lang/String; = "android.intent.extra.RETURN_RESULT"

.field public static final whitelist EXTRA_ROLE_NAME:Ljava/lang/String; = "android.intent.extra.ROLE_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_SETTING_NAME:Ljava/lang/String; = "setting_name"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_SETTING_NEW_VALUE:Ljava/lang/String; = "new_value"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_SETTING_PREVIOUS_VALUE:Ljava/lang/String; = "previous_value"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_SETTING_RESTORED_FROM_SDK_INT:Ljava/lang/String; = "restored_from_sdk_int"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist EXTRA_SHORTCUT_ICON:Ljava/lang/String; = "android.intent.extra.shortcut.ICON"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SHORTCUT_ICON_RESOURCE:Ljava/lang/String; = "android.intent.extra.shortcut.ICON_RESOURCE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SHORTCUT_ID:Ljava/lang/String; = "android.intent.extra.shortcut.ID"

.field public static final whitelist EXTRA_SHORTCUT_INTENT:Ljava/lang/String; = "android.intent.extra.shortcut.INTENT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SHORTCUT_NAME:Ljava/lang/String; = "android.intent.extra.shortcut.NAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SHOWING_ATTRIBUTION:Ljava/lang/String; = "android.intent.extra.SHOWING_ATTRIBUTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_SHOW_WIPE_PROGRESS:Ljava/lang/String; = "android.intent.extra.SHOW_WIPE_PROGRESS"

.field public static final whitelist EXTRA_SHUTDOWN_USERSPACE_ONLY:Ljava/lang/String; = "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

.field public static final greylist-max-o EXTRA_SIM_ACTIVATION_RESPONSE:Ljava/lang/String; = "android.intent.extra.SIM_ACTIVATION_RESPONSE"

.field public static final blacklist EXTRA_SIM_LOCKED_REASON:Ljava/lang/String; = "reason"

.field public static final blacklist EXTRA_SIM_STATE:Ljava/lang/String; = "ss"

.field public static final blacklist EXTRA_SMART_DOCK_STATE:Ljava/lang/String; = "com.sec.intent.extra.SMART_DOCK_STATE"

.field public static final blacklist EXTRA_SMART_DOCK_STATE_DOCKED:I = 0x1

.field public static final blacklist EXTRA_SMART_DOCK_STATE_UNDOCKED:I = 0x0

.field public static final whitelist EXTRA_SPLIT_NAME:Ljava/lang/String; = "android.intent.extra.SPLIT_NAME"

.field public static final whitelist EXTRA_START_TIME:Ljava/lang/String; = "android.intent.extra.START_TIME"

.field public static final whitelist EXTRA_STREAM:Ljava/lang/String; = "android.intent.extra.STREAM"

.field public static final whitelist EXTRA_SUBJECT:Ljava/lang/String; = "android.intent.extra.SUBJECT"

.field public static final whitelist EXTRA_SUSPENDED_PACKAGE_EXTRAS:Ljava/lang/String; = "android.intent.extra.SUSPENDED_PACKAGE_EXTRAS"

.field public static final greylist EXTRA_SYSTEM_ID:Ljava/lang/String; = "systemId"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_SYSTEM_UPDATE_UNINSTALL:Ljava/lang/String; = "android.intent.extra.SYSTEM_UPDATE_UNINSTALL"

.field public static final greylist-max-o EXTRA_TASK_ID:Ljava/lang/String; = "android.intent.extra.TASK_ID"

.field public static final whitelist EXTRA_TEMPLATE:Ljava/lang/String; = "android.intent.extra.TEMPLATE"

.field public static final whitelist EXTRA_TEXT:Ljava/lang/String; = "android.intent.extra.TEXT"

.field public static final greylist-max-o EXTRA_THERMAL_STATE:Ljava/lang/String; = "android.intent.extra.THERMAL_STATE"

.field public static final greylist-max-o EXTRA_THERMAL_STATE_EXCEEDED:I = 0x2

.field public static final greylist-max-o EXTRA_THERMAL_STATE_NORMAL:I = 0x0

.field public static final greylist-max-o EXTRA_THERMAL_STATE_WARNING:I = 0x1

.field public static final whitelist EXTRA_TIME:Ljava/lang/String; = "android.intent.extra.TIME"

.field public static final whitelist EXTRA_TIMEZONE:Ljava/lang/String; = "time-zone"

.field public static final greylist-max-o EXTRA_TIME_PREF_24_HOUR_FORMAT:Ljava/lang/String; = "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

.field public static final greylist-max-o EXTRA_TIME_PREF_VALUE_USE_12_HOUR:I = 0x0

.field public static final greylist-max-o EXTRA_TIME_PREF_VALUE_USE_24_HOUR:I = 0x1

.field public static final greylist-max-o EXTRA_TIME_PREF_VALUE_USE_LOCALE_DEFAULT:I = 0x2

.field public static final whitelist EXTRA_TITLE:Ljava/lang/String; = "android.intent.extra.TITLE"

.field public static final whitelist EXTRA_UID:Ljava/lang/String; = "android.intent.extra.UID"

.field public static final whitelist EXTRA_UNINSTALL_ALL_USERS:Ljava/lang/String; = "android.intent.extra.UNINSTALL_ALL_USERS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_UNKNOWN_INSTANT_APP:Ljava/lang/String; = "android.intent.extra.UNKNOWN_INSTANT_APP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_USER:Ljava/lang/String; = "android.intent.extra.USER"

.field public static final whitelist EXTRA_USER_HANDLE:Ljava/lang/String; = "android.intent.extra.user_handle"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_USER_ID:Ljava/lang/String; = "android.intent.extra.USER_ID"

.field public static final whitelist EXTRA_USER_INITIATED:Ljava/lang/String; = "android.intent.extra.USER_INITIATED"

.field public static final greylist-max-o EXTRA_USER_REQUESTED_SHUTDOWN:Ljava/lang/String; = "android.intent.extra.USER_REQUESTED_SHUTDOWN"

.field public static final whitelist EXTRA_USE_STYLUS_MODE:Ljava/lang/String; = "android.intent.extra.USE_STYLUS_MODE"

.field public static final whitelist EXTRA_VERIFICATION_BUNDLE:Ljava/lang/String; = "android.intent.extra.VERIFICATION_BUNDLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_VERSION_CODE:Ljava/lang/String; = "android.intent.extra.VERSION_CODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_VISIBILITY_ALLOW_LIST:Ljava/lang/String; = "android.intent.extra.VISIBILITY_ALLOW_LIST"

.field public static final greylist EXTRA_VOICE_RADIO_TECH:Ljava/lang/String; = "radioTechnology"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_VOICE_REG_STATE:Ljava/lang/String; = "voiceRegState"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_VOICE_ROAMING_TYPE:Ljava/lang/String; = "voiceRoamingType"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_WIPE_ESIMS:Ljava/lang/String; = "com.android.internal.intent.extra.WIPE_ESIMS"

.field public static final greylist-max-o EXTRA_WIPE_EXTERNAL_STORAGE:Ljava/lang/String; = "android.intent.extra.WIPE_EXTERNAL_STORAGE"

.field public static final whitelist FILL_IN_ACTION:I = 0x1

.field public static final whitelist FILL_IN_CATEGORIES:I = 0x4

.field public static final whitelist FILL_IN_CLIP_DATA:I = 0x80

.field public static final whitelist FILL_IN_COMPONENT:I = 0x8

.field public static final whitelist FILL_IN_DATA:I = 0x2

.field public static final whitelist FILL_IN_IDENTIFIER:I = 0x100

.field public static final whitelist FILL_IN_PACKAGE:I = 0x10

.field public static final whitelist FILL_IN_SELECTOR:I = 0x40

.field public static final whitelist FILL_IN_SOURCE_BOUNDS:I = 0x20

.field public static final whitelist FLAG_ACTIVITY_BROUGHT_TO_FRONT:I = 0x400000

.field public static final whitelist FLAG_ACTIVITY_CLEAR_TASK:I = 0x8000

.field public static final whitelist FLAG_ACTIVITY_CLEAR_TOP:I = 0x4000000

.field public static final whitelist FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS:I = 0x800000

.field public static final whitelist FLAG_ACTIVITY_FORWARD_RESULT:I = 0x2000000

.field public static final whitelist FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY:I = 0x100000

.field public static final whitelist FLAG_ACTIVITY_LAUNCH_ADJACENT:I = 0x1000

.field public static final whitelist FLAG_ACTIVITY_MATCH_EXTERNAL:I = 0x800

.field public static final whitelist FLAG_ACTIVITY_MULTIPLE_TASK:I = 0x8000000

.field public static final whitelist FLAG_ACTIVITY_NEW_DOCUMENT:I = 0x80000

.field public static final whitelist FLAG_ACTIVITY_NEW_TASK:I = 0x10000000

.field public static final whitelist FLAG_ACTIVITY_NO_ANIMATION:I = 0x10000

.field public static final whitelist FLAG_ACTIVITY_NO_HISTORY:I = 0x40000000

.field public static final whitelist FLAG_ACTIVITY_NO_USER_ACTION:I = 0x40000

.field public static final whitelist FLAG_ACTIVITY_PREVIOUS_IS_TOP:I = 0x1000000

.field public static final whitelist FLAG_ACTIVITY_REORDER_TO_FRONT:I = 0x20000

.field public static final whitelist FLAG_ACTIVITY_REQUIRE_DEFAULT:I = 0x200

.field public static final whitelist FLAG_ACTIVITY_REQUIRE_NON_BROWSER:I = 0x400

.field public static final whitelist FLAG_ACTIVITY_RESET_TASK_IF_NEEDED:I = 0x200000

.field public static final whitelist FLAG_ACTIVITY_RETAIN_IN_RECENTS:I = 0x2000

.field public static final whitelist FLAG_ACTIVITY_SINGLE_TOP:I = 0x20000000

.field public static final whitelist FLAG_ACTIVITY_TASK_ON_HOME:I = 0x4000

.field public static final whitelist FLAG_DEBUG_LOG_RESOLUTION:I = 0x8

.field public static final greylist-max-o FLAG_DEBUG_TRIAGED_MISSING:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_DIRECT_BOOT_AUTO:I = 0x100

.field public static final whitelist FLAG_EXCLUDE_STOPPED_PACKAGES:I = 0x10

.field public static final whitelist FLAG_FROM_BACKGROUND:I = 0x4

.field public static final whitelist FLAG_GRANT_PERSISTABLE_URI_PERMISSION:I = 0x40

.field public static final whitelist FLAG_GRANT_PREFIX_URI_PERMISSION:I = 0x80

.field public static final whitelist FLAG_GRANT_READ_URI_PERMISSION:I = 0x1

.field public static final whitelist FLAG_GRANT_WRITE_URI_PERMISSION:I = 0x2

.field public static final greylist-max-o FLAG_IGNORE_EPHEMERAL:I = -0x80000000

.field public static final whitelist FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field public static final greylist-max-o FLAG_RECEIVER_BOOT_UPGRADE:I = 0x2000000

.field public static final greylist-max-o FLAG_RECEIVER_EXCLUDE_BACKGROUND:I = 0x800000

.field public static final whitelist FLAG_RECEIVER_FOREGROUND:I = 0x10000000

.field public static final greylist-max-o FLAG_RECEIVER_FROM_SHELL:I = 0x400000

.field public static final whitelist FLAG_RECEIVER_INCLUDE_BACKGROUND:I = 0x1000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_RECEIVER_NO_ABORT:I = 0x8000000

.field public static final blacklist FLAG_RECEIVER_OFFLOAD:I = -0x80000000

.field public static final blacklist FLAG_RECEIVER_OFFLOAD_FOREGROUND:I = 0x800

.field public static final whitelist FLAG_RECEIVER_REGISTERED_ONLY:I = 0x40000000

.field public static final whitelist FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT:I = 0x4000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_RECEIVER_REPLACE_PENDING:I = 0x20000000

.field public static final whitelist FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS:I = 0x200000

.field public static final greylist-max-o IMMUTABLE_FLAGS:I = 0xc3

.field private static final blacklist LOCAL_FLAG_FROM_COPY:I = 0x1

.field private static final blacklist LOCAL_FLAG_FROM_PARCEL:I = 0x2

.field private static final blacklist LOCAL_FLAG_FROM_PROTECTED_COMPONENT:I = 0x4

.field public static final blacklist LOCAL_FLAG_FROM_SYSTEM:I = 0x20

.field private static final blacklist LOCAL_FLAG_FROM_URI:I = 0x10

.field private static final blacklist LOCAL_FLAG_UNFILTERED_EXTRAS:I = 0x8

.field public static final whitelist METADATA_DOCK_HOME:Ljava/lang/String; = "android.dock_home"

.field public static final whitelist METADATA_SETUP_VERSION:Ljava/lang/String; = "android.SETUP_VERSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SEM_ACTION_PALM_DOWN:Ljava/lang/String; = "com.samsung.android.motion.PALM_DOWN"

.field public static final blacklist SEM_ACTION_PALM_SCREEN_OFF:Ljava/lang/String; = "com.samsung.android.motion.PALM_SCREEN_OFF"

.field public static final whitelist SEM_ACTION_PALM_UP:Ljava/lang/String; = "com.samsung.android.motion.PALM_UP"

.field public static final whitelist SEM_ACTION_USB_HID_KEYBOARD_EVENT:Ljava/lang/String; = "android.intent.action.USBHID_KEYBOARD_EVENT"

.field public static final whitelist SEM_ACTION_USER_ADDED:Ljava/lang/String; = "android.intent.action.USER_ADDED"

.field public static final whitelist SEM_ACTION_USER_REMOVED:Ljava/lang/String; = "android.intent.action.USER_REMOVED"

.field public static final whitelist SEM_ACTION_USER_SWITCHED:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field public static final whitelist SEM_EXTRA_DOCK_ID:Ljava/lang/String; = "com.sec.intent.extra.DOCK_ID"

.field public static final whitelist SEM_EXTRA_DOCK_STATE_AUDIO_DOCK:I = 0x65

.field public static final whitelist SEM_EXTRA_DOCK_STATE_DEX_PAD:I = 0x72

.field public static final whitelist SEM_EXTRA_DOCK_STATE_DEX_STATION:I = 0x6e

.field public static final whitelist SEM_EXTRA_DOCK_STATE_HDMI_ADAPTER:I = 0x6f

.field public static final whitelist SEM_EXTRA_DOCK_STATE_MIRRORLINK:I = 0x68

.field public static final whitelist SEM_EXTRA_DOCK_STATE_MULTIPORT_ADAPTER:I = 0x6d

.field public static final whitelist SEM_EXTRA_DOCK_STATE_REQUIRES_ID:I = 0xc8

.field public static final whitelist SEM_EXTRA_REBOOT_REASON:Ljava/lang/String; = "android.intent.extra.REBOOT_REASON"

.field public static final whitelist SEM_EXTRA_SMART_DOCK_STATE:Ljava/lang/String; = "com.sec.intent.extra.SMART_DOCK_STATE"

.field public static final whitelist SEM_EXTRA_SMART_DOCK_STATE_DOCKED:I = 0x1

.field public static final whitelist SEM_EXTRA_SMART_DOCK_STATE_UNDOCKED:I = 0x0

.field public static final whitelist SEM_EXTRA_USB_HID_DEVICE_STATE:Ljava/lang/String; = "android.intent.extra.device_state"

.field public static final whitelist SEM_EXTRA_USB_HID_STATE_ATTACHED:I = 0x1

.field public static final whitelist SEM_EXTRA_USB_HID_STATE_DETTACHED:I = 0x0

.field public static final whitelist SEM_EXTRA_USER_HANDLE:Ljava/lang/String; = "android.intent.extra.user_handle"

.field public static final blacklist SIM_ABSENT_ON_PERM_DISABLED:Ljava/lang/String; = "PERM_DISABLED"

.field public static final blacklist SIM_LOCKED_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final blacklist SIM_LOCKED_ON_PIN:Ljava/lang/String; = "PIN"

.field public static final blacklist SIM_LOCKED_ON_PUK:Ljava/lang/String; = "PUK"

.field public static final blacklist SIM_STATE_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final blacklist SIM_STATE_CARD_IO_ERROR:Ljava/lang/String; = "CARD_IO_ERROR"

.field public static final blacklist SIM_STATE_CARD_RESTRICTED:Ljava/lang/String; = "CARD_RESTRICTED"

.field public static final blacklist SIM_STATE_IMSI:Ljava/lang/String; = "IMSI"

.field public static final blacklist SIM_STATE_LOADED:Ljava/lang/String; = "LOADED"

.field public static final blacklist SIM_STATE_LOCKED:Ljava/lang/String; = "LOCKED"

.field public static final blacklist SIM_STATE_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final blacklist SIM_STATE_PRESENT:Ljava/lang/String; = "PRESENT"

.field public static final blacklist SIM_STATE_READY:Ljava/lang/String; = "READY"

.field public static final blacklist SIM_STATE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final blacklist TAG:Ljava/lang/String; = "Intent"

.field private static final greylist-max-o TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final greylist-max-o TAG_EXTRA:Ljava/lang/String; = "extra"

.field public static final whitelist URI_ALLOW_UNSAFE:I = 0x4

.field public static final whitelist URI_ANDROID_APP_SCHEME:I = 0x2

.field public static final whitelist URI_INTENT_SCHEME:I = 0x1


# instance fields
.field private greylist-max-o mAction:Ljava/lang/String;

.field private greylist-max-o mCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mClipData:Landroid/content/ClipData;

.field private greylist-max-o mComponent:Landroid/content/ComponentName;

.field private greylist-max-o mContentUserHint:I

.field private greylist-max-o mData:Landroid/net/Uri;

.field private blacklist mExtendedFlags:I

.field private greylist mExtras:Landroid/os/Bundle;

.field private greylist-max-o mFlags:I

.field private blacklist mForceLaunchOverTargetTask:Z

.field private blacklist mIdentifier:Ljava/lang/String;

.field private blacklist mIsAiKeyAppLaunch:Z

.field private blacklist mIsRemoteAppLaunch:Z

.field private blacklist mLaunchOverTargetTaskId:I

.field private blacklist mLaunchTaskIdForAliasManagedTarget:I

.field private blacklist mLaunchTaskIdForSingleInstancePerTask:I

.field private greylist-max-o mLaunchToken:Ljava/lang/String;

.field private blacklist mLocalFlags:I

.field private blacklist mOriginalIntent:Landroid/content/Intent;

.field private greylist-max-o mPackage:Ljava/lang/String;

.field private greylist-max-o mSelector:Landroid/content/Intent;

.field private greylist-max-o mSourceBounds:Landroid/graphics/Rect;

.field private greylist-max-o mType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/Intent$1;

    invoke-direct {v0}, Landroid/content/Intent$1;-><init>()V

    sput-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Intent;->mIsRemoteAppLaunch:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/content/Intent;->mLaunchTaskIdForAliasManagedTarget:I

    iput v1, p0, Landroid/content/Intent;->mLaunchTaskIdForSingleInstancePerTask:I

    iput-boolean v0, p0, Landroid/content/Intent;->mIsAiKeyAppLaunch:Z

    iput v1, p0, Landroid/content/Intent;->mLaunchOverTargetTaskId:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Intent;->mIsRemoteAppLaunch:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/content/Intent;->mLaunchTaskIdForAliasManagedTarget:I

    iput v1, p0, Landroid/content/Intent;->mLaunchTaskIdForSingleInstancePerTask:I

    iput-boolean v0, p0, Landroid/content/Intent;->mIsAiKeyAppLaunch:Z

    iput v1, p0, Landroid/content/Intent;->mLaunchOverTargetTaskId:I

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Intent;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Intent;->mIsRemoteAppLaunch:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/content/Intent;->mLaunchTaskIdForAliasManagedTarget:I

    iput v1, p0, Landroid/content/Intent;->mLaunchTaskIdForSingleInstancePerTask:I

    iput-boolean v0, p0, Landroid/content/Intent;->mIsAiKeyAppLaunch:Z

    iput v1, p0, Landroid/content/Intent;->mLaunchOverTargetTaskId:I

    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v0, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    iget-object v0, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    :cond_0
    iget v0, p1, Landroid/content/Intent;->mLocalFlags:I

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    const/4 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    if-eq p2, v1, :cond_5

    iget v0, p1, Landroid/content/Intent;->mFlags:I

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    iget v0, p1, Landroid/content/Intent;->mExtendedFlags:I

    iput v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    iget v0, p1, Landroid/content/Intent;->mContentUserHint:I

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    iget-object v0, p1, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    :cond_1
    iget-object v0, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    :cond_2
    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_3
    iget-object v0, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/ClipData;

    iget-object v1, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-direct {v0, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    iput-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    goto :goto_0

    :cond_4
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Bundle;->STRIPPED:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_5
    :goto_0
    iget v0, p1, Landroid/content/Intent;->mLaunchOverTargetTaskId:I

    iput v0, p0, Landroid/content/Intent;->mLaunchOverTargetTaskId:I

    iget-boolean v0, p1, Landroid/content/Intent;->mForceLaunchOverTargetTask:Z

    iput-boolean v0, p0, Landroid/content/Intent;->mForceLaunchOverTargetTask:Z

    iget-boolean v0, p1, Landroid/content/Intent;->mIsRemoteAppLaunch:Z

    iput-boolean v0, p0, Landroid/content/Intent;->mIsRemoteAppLaunch:Z

    iget v0, p1, Landroid/content/Intent;->mLaunchTaskIdForAliasManagedTarget:I

    iput v0, p0, Landroid/content/Intent;->mLaunchTaskIdForAliasManagedTarget:I

    iget v0, p1, Landroid/content/Intent;->mLaunchTaskIdForSingleInstancePerTask:I

    iput v0, p0, Landroid/content/Intent;->mLaunchTaskIdForSingleInstancePerTask:I

    iget-boolean v0, p1, Landroid/content/Intent;->mIsAiKeyAppLaunch:Z

    iput-boolean v0, p0, Landroid/content/Intent;->mIsAiKeyAppLaunch:Z

    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Intent;->mIsRemoteAppLaunch:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/content/Intent;->mLaunchTaskIdForAliasManagedTarget:I

    iput v1, p0, Landroid/content/Intent;->mLaunchTaskIdForSingleInstancePerTask:I

    iput-boolean v0, p0, Landroid/content/Intent;->mIsAiKeyAppLaunch:Z

    iput v1, p0, Landroid/content/Intent;->mLaunchOverTargetTaskId:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    invoke-virtual {p0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Intent;->mIsRemoteAppLaunch:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/content/Intent;->mLaunchTaskIdForAliasManagedTarget:I

    iput v1, p0, Landroid/content/Intent;->mLaunchTaskIdForSingleInstancePerTask:I

    iput-boolean v0, p0, Landroid/content/Intent;->mIsAiKeyAppLaunch:Z

    iput v1, p0, Landroid/content/Intent;->mLaunchOverTargetTaskId:I

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Intent;->mIsRemoteAppLaunch:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/content/Intent;->mLaunchTaskIdForAliasManagedTarget:I

    iput v1, p0, Landroid/content/Intent;->mLaunchTaskIdForSingleInstancePerTask:I

    iput-boolean v0, p0, Landroid/content/Intent;->mIsAiKeyAppLaunch:Z

    iput v1, p0, Landroid/content/Intent;->mLaunchOverTargetTaskId:I

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Intent;->mIsRemoteAppLaunch:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/content/Intent;->mLaunchTaskIdForAliasManagedTarget:I

    iput v1, p0, Landroid/content/Intent;->mLaunchTaskIdForSingleInstancePerTask:I

    iput-boolean v0, p0, Landroid/content/Intent;->mIsAiKeyAppLaunch:Z

    iput v1, p0, Landroid/content/Intent;->mLaunchOverTargetTaskId:I

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p3, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public static whitelist createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_2

    invoke-static {}, Landroid/service/chooser/Flags;->enableChooserResult()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.CHOOSER_RESULT_INTENT_SENDER"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0xc3

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v3, Landroid/content/ClipData$Item;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    :goto_1
    new-instance v5, Landroid/content/ClipData;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    move-object v2, v5

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_5
    return-object v0
.end method

.method private static blacklist decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    if-eqz p0, :cond_0

    :try_start_1
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    throw v0
.end method

.method public static greylist-max-o dockStateToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "EXTRA_DOCK_STATE_HE_DESK"

    return-object v0

    :pswitch_1
    const-string v0, "EXTRA_DOCK_STATE_LE_DESK"

    return-object v0

    :pswitch_2
    const-string v0, "EXTRA_DOCK_STATE_CAR"

    return-object v0

    :pswitch_3
    const-string v0, "EXTRA_DOCK_STATE_DESK"

    return-object v0

    :pswitch_4
    const-string v0, "EXTRA_DOCK_STATE_UNDOCKED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist dumpDebugWithoutFieldId(Landroid/util/proto/ProtoOutputStream;ZZZZ)V
    .locals 4

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-wide v0, 0x10900000001L

    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v2, 0x20900000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-wide v0, 0x10900000004L

    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_4
    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-wide v0, 0x1090000000dL

    iget-object v2, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_5
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    const-string v1, "0x"

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v2, 0x10900000005L

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_6
    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/Intent;->mExtendedFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x1090000000eL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-wide v0, 0x10900000006L

    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_8
    if-eqz p3, :cond_9

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    const-wide v1, 0x10b00000007L

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_9
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000008L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz p5, :cond_c

    if-eqz p2, :cond_b

    goto :goto_2

    :cond_b
    const/4 v2, 0x0

    goto :goto_3

    :cond_c
    :goto_2
    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v1, v0, v2}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;Z)V

    const-wide v1, 0x10900000009L

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_d
    if-eqz p4, :cond_e

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x1090000000aL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_e
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    if-eqz v0, :cond_f

    const-wide v0, 0x1050000000bL

    iget v2, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_f
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x1090000000cL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_10
    return-void
.end method

.method public static whitelist getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getIntentOld(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget v1, v0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/content/Intent;->mLocalFlags:I

    return-object v0
.end method

.method private static greylist-max-o getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/16 v0, 0x23

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const-string v2, "android.intent.action.VIEW"

    if-ltz v0, :cond_16

    const/4 v3, 0x0

    move v4, v0

    const/4 v5, 0x0

    add-int/lit8 v0, v0, 0x1

    const-string v6, "action("

    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-virtual {v1, v0, v6, v7, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    const/16 v9, 0x29

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v6, 0x1

    :cond_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "categories("

    const/16 v11, 0xb

    invoke-virtual {v1, v0, v10, v7, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    const/16 v11, 0x21

    if-eqz v10, :cond_5

    const/4 v5, 0x1

    add-int/lit8 v0, v0, 0xb

    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    :goto_0
    if-ge v0, v10, :cond_4

    invoke-virtual {v1, v11, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    if-ltz v12, :cond_1

    if-le v12, v10, :cond_2

    :cond_1
    move v12, v10

    :cond_2
    if-ge v0, v12, :cond_3

    invoke-virtual {v1, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    add-int/lit8 v0, v12, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v10, 0x1

    :cond_5
    const-string/jumbo v10, "type("

    const/4 v12, 0x5

    invoke-virtual {v1, v0, v10, v7, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v5, 0x1

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    invoke-virtual {v1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Landroid/content/Intent;->mType:Ljava/lang/String;

    add-int/lit8 v0, v10, 0x1

    :cond_6
    const-string/jumbo v10, "launchFlags("

    const/16 v12, 0xc

    invoke-virtual {v1, v0, v10, v7, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v5, 0x1

    add-int/lit8 v0, v0, 0xc

    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    invoke-virtual {v1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v6, Landroid/content/Intent;->mFlags:I

    and-int/lit8 v12, p1, 0x4

    if-nez v12, :cond_7

    iget v12, v6, Landroid/content/Intent;->mFlags:I

    and-int/lit16 v12, v12, -0xc4

    iput v12, v6, Landroid/content/Intent;->mFlags:I

    :cond_7
    add-int/lit8 v0, v10, 0x1

    :cond_8
    const-string v10, "component("

    const/16 v12, 0xa

    invoke-virtual {v1, v0, v10, v7, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v5, 0x1

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    invoke-virtual {v1, v11, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    if-ltz v12, :cond_9

    if-ge v12, v10, :cond_9

    invoke-virtual {v1, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Landroid/content/ComponentName;

    invoke-direct {v15, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v15, v6, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    :cond_9
    add-int/lit8 v0, v10, 0x1

    :cond_a
    const-string v10, "extras("

    invoke-virtual {v1, v0, v10, v7, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v5, 0x1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_12

    :goto_1
    if-ge v0, v8, :cond_13

    const/16 v12, 0x3d

    invoke-virtual {v1, v12, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    add-int/lit8 v13, v0, 0x1

    if-le v12, v13, :cond_11

    if-ge v0, v8, :cond_11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v13

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v1, v11, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    if-eq v12, v10, :cond_b

    if-lt v12, v8, :cond_c

    :cond_b
    move v12, v8

    :cond_c
    const-string v15, "EXTRA missing \'!\'"

    if-ge v0, v12, :cond_10

    invoke-virtual {v1, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move/from16 v17, v12

    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_d

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_d
    sparse-switch v13, :sswitch_data_0

    move/from16 v18, v12

    move/from16 v11, v17

    :try_start_0
    new-instance v0, Ljava/net/URISyntaxException;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_3

    :sswitch_0
    :try_start_1
    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v10

    invoke-virtual {v0, v14, v10}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v18, v12

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move/from16 v18, v12

    move/from16 v11, v17

    goto/16 :goto_4

    :sswitch_1
    :try_start_2
    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v18, v12

    :try_start_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v0, v14, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v18, v12

    move/from16 v11, v17

    goto/16 :goto_4

    :sswitch_2
    move/from16 v18, v12

    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v14, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :sswitch_3
    move/from16 v18, v12

    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v0, v14, v11}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_2

    :sswitch_4
    move/from16 v18, v12

    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-virtual {v0, v14, v11, v12}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_2

    :sswitch_5
    move/from16 v18, v12

    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v14, v11}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_2

    :sswitch_6
    move/from16 v18, v12

    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v11

    invoke-virtual {v0, v14, v11}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_2

    :sswitch_7
    move/from16 v18, v12

    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v14, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move/from16 v11, v17

    goto :goto_4

    :sswitch_8
    move/from16 v18, v12

    :try_start_4
    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v0, v14, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    nop

    :goto_2
    nop

    move/from16 v11, v17

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_e

    move v0, v11

    goto :goto_5

    :cond_e
    const/16 v10, 0x21

    if-ne v0, v10, :cond_f

    nop

    add-int/lit8 v0, v11, 0x1

    move v11, v10

    const/4 v10, -0x1

    goto/16 :goto_1

    :cond_f
    new-instance v2, Ljava/net/URISyntaxException;

    invoke-direct {v2, v1, v15, v11}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :catch_3
    move-exception v0

    move/from16 v11, v17

    goto :goto_4

    :goto_3
    :try_start_5
    const-string v2, "EXTRA has unknown type"

    invoke-direct {v0, v1, v2, v11}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    move-exception v0

    :goto_4
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v7, "EXTRA value can\'t be parsed"

    invoke-direct {v2, v1, v7, v11}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_10
    new-instance v2, Ljava/net/URISyntaxException;

    invoke-direct {v2, v1, v15, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_11
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v7, "EXTRA missing \'=\'"

    invoke-direct {v2, v1, v7, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_12
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v7, "EXTRA missing trailing \')\'"

    invoke-direct {v2, v1, v7, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_13
    :goto_5
    if-eqz v5, :cond_14

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v6, Landroid/content/Intent;->mData:Landroid/net/Uri;

    goto :goto_6

    :cond_14
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v6, Landroid/content/Intent;->mData:Landroid/net/Uri;

    :goto_6
    iget-object v7, v6, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-nez v7, :cond_15

    iput-object v2, v6, Landroid/content/Intent;->mAction:Ljava/lang/String;

    :cond_15
    goto :goto_7

    :cond_16
    new-instance v3, Landroid/content/Intent;

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v6, v3

    :goto_7
    return-object v6

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_8
        0x53 -> :sswitch_7
        0x62 -> :sswitch_6
        0x63 -> :sswitch_5
        0x64 -> :sswitch_4
        0x66 -> :sswitch_3
        0x69 -> :sswitch_2
        0x6c -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist-max-o isAccessUriMode(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isImageCaptureIntent()Z
    .locals 2

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static greylist-max-o makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/ClipData$Item;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    new-instance v4, Landroid/content/ClipData$Item;

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    return-object v4
.end method

.method public static whitelist makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static whitelist makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    return-object v0
.end method

.method public static whitelist makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2

    invoke-static {p0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private blacklist maybeConvertFileToContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring failure to create file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Intent"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-object p2
.end method

.method public static whitelist normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static greylist-max-r parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move-object/from16 v1, p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    const/16 v8, 0x2f

    const/4 v9, 0x7

    if-eqz v0, :cond_1a

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v13, 0x8

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string v0, "--grant-write-uri-permission"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x1e

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "--activity-multiple-task"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x29

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "--grant-read-uri-permission"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x1d

    goto/16 :goto_2

    :sswitch_3
    const-string v0, "--receiver-foreground"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x36

    goto/16 :goto_2

    :sswitch_4
    const-string v0, "--receiver-no-abort"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x37

    goto/16 :goto_2

    :sswitch_5
    const-string v0, "--activity-launched-from-history"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x28

    goto/16 :goto_2

    :sswitch_6
    const-string v0, "--activity-clear-when-task-reset"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x26

    goto/16 :goto_2

    :sswitch_7
    const-string v0, "--esal"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x17

    goto/16 :goto_2

    :sswitch_8
    const-string v0, "--elal"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0xf

    goto/16 :goto_2

    :sswitch_9
    const-string v0, "--eial"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0xc

    goto/16 :goto_2

    :sswitch_a
    const-string v0, "--efal"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x12

    goto/16 :goto_2

    :sswitch_b
    const-string v0, "--edal"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x15

    goto/16 :goto_2

    :sswitch_c
    const-string v0, "--selector"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x39

    goto/16 :goto_2

    :sswitch_d
    const-string v0, "--activity-match-external"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x33

    goto/16 :goto_2

    :sswitch_e
    const-string v0, "--receiver-replace-pending"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x35

    goto/16 :goto_2

    :sswitch_f
    const-string v0, "--include-stopped-packages"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x22

    goto/16 :goto_2

    :sswitch_10
    const-string v0, "--exclude-stopped-packages"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x21

    goto/16 :goto_2

    :sswitch_11
    const-string v0, "--grant-persistable-uri-permission"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x1f

    goto/16 :goto_2

    :sswitch_12
    const-string v0, "--activity-single-top"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x30

    goto/16 :goto_2

    :sswitch_13
    const-string v0, "--receiver-registered-only"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x34

    goto/16 :goto_2

    :sswitch_14
    const-string v0, "--activity-no-user-action"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x2c

    goto/16 :goto_2

    :sswitch_15
    const-string v0, "--activity-clear-top"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x25

    goto/16 :goto_2

    :sswitch_16
    const-string v0, "--activity-reset-task-if-needed"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :sswitch_17
    const-string v0, "--activity-no-animation"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x2a

    goto/16 :goto_2

    :sswitch_18
    const-string v0, "--activity-exclude-from-recents"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x27

    goto/16 :goto_2

    :sswitch_19
    const-string v0, "--esn"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v8, v9

    goto/16 :goto_2

    :sswitch_1a
    const-string v0, "--esa"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x16

    goto/16 :goto_2

    :sswitch_1b
    const-string v0, "--ela"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0xe

    goto/16 :goto_2

    :sswitch_1c
    const-string v0, "--eia"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0xb

    goto/16 :goto_2

    :sswitch_1d
    const-string v0, "--efa"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x11

    goto/16 :goto_2

    :sswitch_1e
    const-string v0, "--eda"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x14

    goto/16 :goto_2

    :sswitch_1f
    const-string v0, "--ecn"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0xa

    goto/16 :goto_2

    :sswitch_20
    const-string v0, "--ez"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x18

    goto/16 :goto_2

    :sswitch_21
    const-string v0, "--eu"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x9

    goto/16 :goto_2

    :sswitch_22
    const-string v0, "--es"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x6

    goto/16 :goto_2

    :sswitch_23
    const-string v0, "--el"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0xd

    goto/16 :goto_2

    :sswitch_24
    const-string v0, "--ei"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v8, v13

    goto/16 :goto_2

    :sswitch_25
    const-string v0, "--ef"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x10

    goto/16 :goto_2

    :sswitch_26
    const-string v0, "--ed"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x13

    goto/16 :goto_2

    :sswitch_27
    const-string v0, "-t"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x2

    goto/16 :goto_2

    :sswitch_28
    const-string v0, "-p"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x1a

    goto/16 :goto_2

    :sswitch_29
    const-string v0, "-n"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x19

    goto/16 :goto_2

    :sswitch_2a
    const-string v0, "-i"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x3

    goto/16 :goto_2

    :sswitch_2b
    const-string v0, "-f"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x1c

    goto/16 :goto_2

    :sswitch_2c
    const-string v0, "-e"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x5

    goto/16 :goto_2

    :sswitch_2d
    const-string v0, "-d"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    goto/16 :goto_2

    :sswitch_2e
    const-string v0, "-c"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x4

    goto/16 :goto_2

    :sswitch_2f
    const-string v0, "-a"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    goto/16 :goto_2

    :sswitch_30
    const-string v0, "--receiver-include-background"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x38

    goto/16 :goto_2

    :sswitch_31
    const-string v0, "--activity-previous-is-top"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x2d

    goto :goto_2

    :sswitch_32
    const-string v0, "--activity-brought-to-front"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x24

    goto :goto_2

    :sswitch_33
    const-string v0, "--activity-reorder-to-front"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x2e

    goto :goto_2

    :sswitch_34
    const-string v0, "--debug-log-resolution"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x23

    goto :goto_2

    :sswitch_35
    const-string v0, "--activity-clear-task"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x31

    goto :goto_2

    :sswitch_36
    const-string v0, "--mw-lott"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x1b

    goto :goto_2

    :sswitch_37
    const-string v0, "--activity-no-history"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x2b

    goto :goto_2

    :sswitch_38
    const-string v0, "--activity-task-on-home"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x32

    goto :goto_2

    :sswitch_39
    const-string v0, "--grant-prefix-uri-permission"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v8, 0x20

    goto :goto_2

    :goto_1
    const/4 v8, -0x1

    :goto_2
    const-string v0, "Bad component name: "

    const/high16 v9, 0x20000000

    const/high16 v10, 0x1000000

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v11, 0x8000000

    const-string v15, "(?<!\\\\),"

    const-string v14, ","

    packed-switch v8, :pswitch_data_0

    if-eqz v1, :cond_18

    move-object/from16 v10, p0

    invoke-interface {v1, v7, v10}, Landroid/content/Intent$CommandOptionHandler;->handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto/16 :goto_10

    :pswitch_0
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v10, p0

    move-object v3, v0

    goto/16 :goto_10

    :pswitch_1
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_2
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_3
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_4
    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_5
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_6
    const/16 v0, 0x800

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_7
    const/16 v0, 0x4000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_8
    const v0, 0x8000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_9
    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_a
    const/high16 v0, 0x200000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_b
    const/high16 v0, 0x20000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_c
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_d
    const/high16 v0, 0x40000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_e
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_f
    const/high16 v0, 0x10000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_10
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_11
    const/high16 v0, 0x100000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_12
    const/high16 v0, 0x800000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_13
    const/high16 v0, 0x80000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_14
    const/high16 v0, 0x4000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_15
    const/high16 v0, 0x400000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_16
    invoke-virtual {v3, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_17
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_18
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_19
    const/16 v0, 0x80

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_1a
    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_1b
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_1c
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->semSetLaunchOverTargetTask(IZ)V

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-ne v3, v2, :cond_1

    const/4 v4, 0x1

    :cond_1
    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-ne v3, v2, :cond_2

    const/4 v4, 0x1

    :cond_2
    move-object/from16 v10, p0

    goto/16 :goto_10

    :cond_3
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :pswitch_21
    const/4 v0, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "true"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const-string/jumbo v10, "t"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_5

    :cond_4
    const-string v10, "false"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "f"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_4

    :cond_5
    :try_start_0
    invoke-static {v9}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_6

    move v11, v0

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    move v0, v11

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid boolean value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_7
    :goto_4
    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v0, 0x1

    :goto_6
    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v9

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_7
    array-length v12, v9

    if-ge v11, v12, :cond_9

    aget-object v12, v9, v11

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_10

    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_10

    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v9

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_8
    array-length v12, v9

    if-ge v11, v12, :cond_a

    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_a
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_10

    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    new-array v10, v10, [D

    const/4 v11, 0x0

    :goto_9
    array-length v12, v9

    if-ge v11, v12, :cond_b

    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    aput-wide v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_b
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_10

    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_10

    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v9

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_a
    array-length v12, v9

    if-ge v11, v12, :cond_c

    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_c
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_10

    :pswitch_28
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    new-array v10, v10, [F

    const/4 v11, 0x0

    :goto_b
    array-length v12, v9

    if-ge v11, v12, :cond_d

    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_d
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_10

    :pswitch_29
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_10

    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v9

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_c
    array-length v12, v9

    if-ge v11, v12, :cond_e

    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_e
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_10

    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    new-array v10, v10, [J

    const/4 v11, 0x0

    :goto_d
    array-length v12, v9

    if-ge v11, v12, :cond_f

    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    aput-wide v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_f
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_10

    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v9

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_e
    array-length v12, v9

    if-ge v11, v12, :cond_10

    aget-object v12, v9, v11

    invoke-static {v12}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_10
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_2e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    new-array v10, v10, [I

    const/4 v11, 0x0

    :goto_f
    array-length v12, v9

    if-ge v11, v12, :cond_11

    aget-object v12, v9, v11

    invoke-static {v12}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_11
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_12

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :cond_12
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_31
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_33
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v10, p0

    goto/16 :goto_10

    :pswitch_34
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-ne v3, v2, :cond_13

    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    goto :goto_10

    :cond_13
    move-object/from16 v10, p0

    goto :goto_10

    :pswitch_35
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    if-ne v3, v2, :cond_14

    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    goto :goto_10

    :cond_14
    move-object/from16 v10, p0

    goto :goto_10

    :pswitch_36
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    if-ne v3, v2, :cond_15

    const/4 v4, 0x1

    move-object/from16 v10, p0

    move-object v6, v0

    goto :goto_10

    :cond_15
    move-object/from16 v10, p0

    move-object v6, v0

    goto :goto_10

    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-ne v3, v2, :cond_16

    const/4 v4, 0x1

    move-object/from16 v10, p0

    move-object v5, v0

    goto :goto_10

    :cond_16
    move-object/from16 v10, p0

    move-object v5, v0

    goto :goto_10

    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-ne v3, v2, :cond_17

    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    goto :goto_10

    :cond_17
    move-object/from16 v10, p0

    :goto_10
    goto/16 :goto_0

    :cond_18
    move-object/from16 v10, p0

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown option: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const/4 v0, 0x1

    move-object/from16 v10, p0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-eq v3, v2, :cond_1b

    move v11, v0

    goto :goto_11

    :cond_1b
    const/4 v11, 0x0

    :goto_11
    move v0, v11

    if-eqz v0, :cond_1c

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    move-object v3, v2

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x0

    const-string v12, "android.intent.category.LAUNCHER"

    const-string v13, "android.intent.action.MAIN"

    if-nez v11, :cond_1d

    if-eqz v0, :cond_20

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    invoke-virtual {v2, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_12

    :cond_1d
    const/16 v14, 0x3a

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_1e

    invoke-static {v11, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    goto :goto_12

    :cond_1e
    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_1f

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    invoke-virtual {v2, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_12

    :cond_1f
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    invoke-virtual {v2, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_20
    :goto_12
    if-eqz v2, :cond_24

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const/4 v9, 0x0

    move-object v12, v9

    check-cast v12, Landroid/os/Bundle;

    invoke-virtual {v3, v9}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    invoke-virtual {v2, v9}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_21

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    if-eqz v9, :cond_21

    new-instance v9, Ljava/util/HashSet;

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_13
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_21

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v2, v14}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    goto :goto_13

    :cond_21
    const/16 v9, 0x48

    invoke-virtual {v3, v2, v9}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    if-nez v8, :cond_22

    move-object v8, v12

    goto :goto_14

    :cond_22
    if-eqz v12, :cond_23

    invoke-virtual {v12, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object v8, v12

    :cond_23
    :goto_14
    invoke-virtual {v3, v8}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v4, 0x1

    :cond_24
    if-eqz v4, :cond_25

    return-object v3

    :cond_25
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "No intent supplied"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ffea226 -> :sswitch_39
        -0x7e40bfdd -> :sswitch_38
        -0x61305b9a -> :sswitch_37
        -0x599ec41a -> :sswitch_36
        -0x4aae571d -> :sswitch_35
        -0x3fbe74d1 -> :sswitch_34
        -0x328eb9b9 -> :sswitch_33
        -0x31a9343b -> :sswitch_32
        -0x2f378b56 -> :sswitch_31
        -0x2e804d8f -> :sswitch_30
        0x5d4 -> :sswitch_2f
        0x5d6 -> :sswitch_2e
        0x5d7 -> :sswitch_2d
        0x5d8 -> :sswitch_2c
        0x5d9 -> :sswitch_2b
        0x5dc -> :sswitch_2a
        0x5e1 -> :sswitch_29
        0x5e3 -> :sswitch_28
        0x5e7 -> :sswitch_27
        0x152a3f -> :sswitch_26
        0x152a41 -> :sswitch_25
        0x152a44 -> :sswitch_24
        0x152a47 -> :sswitch_23
        0x152a4e -> :sswitch_22
        0x152a50 -> :sswitch_21
        0x152a55 -> :sswitch_20
        0x2901df0 -> :sswitch_1f
        0x2901e02 -> :sswitch_1e
        0x2901e40 -> :sswitch_1d
        0x2901e9d -> :sswitch_1c
        0x2901efa -> :sswitch_1b
        0x2901fd3 -> :sswitch_1a
        0x2901fe0 -> :sswitch_19
        0x41eb1c6 -> :sswitch_18
        0x54a2ed6 -> :sswitch_17
        0xb611ab9 -> :sswitch_16
        0xe1b6a37 -> :sswitch_15
        0x1998b94a -> :sswitch_14
        0x1a0135d9 -> :sswitch_13
        0x1a23762e -> :sswitch_12
        0x1f699c40 -> :sswitch_11
        0x22987a20 -> :sswitch_10
        0x2caeb912 -> :sswitch_f
        0x2e337d40 -> :sswitch_e
        0x422c3bb1 -> :sswitch_d
        0x47f6597f -> :sswitch_c
        0x4f73a2aa -> :sswitch_b
        0x4f73aa2c -> :sswitch_a
        0x4f73b56f -> :sswitch_9
        0x4f73c0b2 -> :sswitch_8
        0x4f73daf9 -> :sswitch_7
        0x50b32d5c -> :sswitch_6
        0x5359f12e -> :sswitch_5
        0x569e74a2 -> :sswitch_4
        0x62838641 -> :sswitch_3
        0x67da9e16 -> :sswitch_2
        0x69396684 -> :sswitch_1
        0x6c467a2f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/android/internal/R$styleable;->Intent:[I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_0

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v9, :cond_1

    if-eqz v11, :cond_1

    new-instance v12, Landroid/content/ComponentName;

    invoke-direct {v12, v9, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    move v14, v13

    if-eq v13, v6, :cond_9

    if-ne v14, v4, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v12, :cond_9

    :cond_2
    if-eq v14, v4, :cond_8

    if-ne v14, v10, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v15, "categories"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    sget-object v15, Lcom/android/internal/R$styleable;->IntentCategory:[I

    invoke-virtual {v0, v1, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v15, :cond_4

    invoke-virtual {v2, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_5
    const-string v15, "extra"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    iget-object v4, v2, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v4, :cond_6

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v2, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_6
    iget-object v4, v2, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v15, v1, v4}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2
    const/4 v4, 0x3

    goto :goto_1

    :cond_8
    :goto_3
    const/4 v4, 0x3

    goto :goto_1

    :cond_9
    return-object v2
.end method

.method public static whitelist parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/content/Intent;->parseUriInternal(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget v1, v0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/content/Intent;->mLocalFlags:I

    return-object v0
.end method

.method private static blacklist parseUriInternal(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "android-app:"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    and-int/lit8 v4, p1, 0x3

    const-string v5, "intent:"

    const-string v6, "android.intent.action.VIEW"

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v0

    :try_start_2
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    nop

    return-object v4

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v5, Ljava/net/URISyntaxException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    :cond_0
    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    if-nez v3, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0

    :cond_1
    const-string v4, "#Intent;"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v3, :cond_2

    invoke-static/range {p0 .. p1}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v2, -0x1

    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-ltz v2, :cond_4

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_4
    move-object/from16 v11, p0

    :goto_0
    const-string v12, ":"

    const-string v13, ""

    if-ltz v2, :cond_20

    :try_start_4
    const-string v14, "end"

    invoke-virtual {v1, v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_20

    const/16 v14, 0x3d

    invoke-virtual {v1, v14, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    if-gez v14, :cond_5

    add-int/lit8 v14, v2, -0x1

    :cond_5
    const/16 v15, 0x3b

    invoke-virtual {v1, v15, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    if-ltz v15, :cond_1f

    if-ge v14, v15, :cond_6

    add-int/lit8 v13, v14, 0x1

    invoke-virtual {v1, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_6
    const-string v10, "action="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v4, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-nez v8, :cond_7

    const/4 v7, 0x1

    move/from16 v17, v3

    move/from16 v16, v14

    goto/16 :goto_2

    :cond_7
    move/from16 v17, v3

    move/from16 v16, v14

    move-object v14, v4

    goto/16 :goto_1

    :cond_8
    const-string v10, "category="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v4, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v17, v3

    move/from16 v16, v14

    move-object v14, v4

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v10, "type="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_a

    iput-object v13, v4, Landroid/content/Intent;->mType:Ljava/lang/String;

    move/from16 v17, v3

    move/from16 v16, v14

    move-object v14, v4

    goto/16 :goto_1

    :cond_a
    const-string v10, "identifier="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b

    iput-object v13, v4, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    move/from16 v17, v3

    move/from16 v16, v14

    move-object v14, v4

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v10, "launchFlags="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {v13}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v4, Landroid/content/Intent;->mFlags:I

    and-int/lit8 v10, p1, 0x4

    if-nez v10, :cond_c

    iget v10, v4, Landroid/content/Intent;->mFlags:I

    and-int/lit16 v10, v10, -0xc4

    iput v10, v4, Landroid/content/Intent;->mFlags:I

    move/from16 v17, v3

    move/from16 v16, v14

    move-object v14, v4

    goto/16 :goto_1

    :cond_c
    move/from16 v17, v3

    move/from16 v16, v14

    move-object v14, v4

    goto/16 :goto_1

    :cond_d
    const-string v10, "extendedLaunchFlags="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-static {v13}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v4, Landroid/content/Intent;->mExtendedFlags:I

    move/from16 v17, v3

    move/from16 v16, v14

    move-object v14, v4

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v10, "package="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_f

    iput-object v13, v4, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    move/from16 v17, v3

    move/from16 v16, v14

    move-object v14, v4

    goto/16 :goto_1

    :cond_f
    const-string v10, "component="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    iput-object v10, v4, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    move/from16 v17, v3

    move/from16 v16, v14

    move-object v14, v4

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v10, "scheme="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_12

    if-eqz v8, :cond_11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v4, Landroid/content/Intent;->mData:Landroid/net/Uri;

    move/from16 v17, v3

    move/from16 v16, v14

    move-object v14, v4

    goto/16 :goto_1

    :cond_11
    move-object v9, v13

    move/from16 v17, v3

    move/from16 v16, v14

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v10, "sourceBounds="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-static {v13}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v10

    iput-object v10, v4, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    move/from16 v17, v3

    move/from16 v16, v14

    move-object v14, v4

    goto/16 :goto_1

    :cond_13
    add-int/lit8 v10, v2, 0x3

    if-ne v15, v10, :cond_14

    const-string v10, "SEL"

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_14

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    move-object v4, v10

    const/4 v8, 0x1

    move/from16 v17, v3

    move/from16 v16, v14

    goto/16 :goto_2

    :cond_14
    add-int/lit8 v10, v2, 0x2

    invoke-virtual {v1, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v12, v4, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v12, :cond_15

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    iput-object v12, v4, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_15
    iget-object v12, v4, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move/from16 v17, v3

    const-string v3, "S."

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v12, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v16, v14

    move-object v14, v4

    goto/16 :goto_1

    :cond_16
    const-string v3, "B."

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v12, v10, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move/from16 v16, v14

    move-object v14, v4

    goto/16 :goto_1

    :cond_17
    const-string v3, "b."

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {v13}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    invoke-virtual {v12, v10, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    move/from16 v16, v14

    move-object v14, v4

    goto/16 :goto_1

    :cond_18
    const-string v3, "c."

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_19

    move/from16 v16, v14

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v12, v10, v14}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    move-object v14, v4

    goto :goto_1

    :cond_19
    move/from16 v16, v14

    const/4 v3, 0x0

    const-string v14, "d."

    invoke-virtual {v1, v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1a

    move-object v14, v4

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v12, v10, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    :cond_1a
    move-object v14, v4

    const-string v3, "f."

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v12, v10, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    :cond_1b
    const-string v3, "i."

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1c
    const-string/jumbo v3, "l."

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v12, v10, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_1d
    const-string/jumbo v3, "s."

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {v13}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    invoke-virtual {v12, v10, v3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    :goto_1
    move-object v4, v14

    :goto_2
    add-int/lit8 v2, v15, 0x1

    move/from16 v3, v17

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_1e
    new-instance v0, Ljava/net/URISyntaxException;

    const-string/jumbo v3, "unknown EXTRA type"

    invoke-direct {v0, v1, v3, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_1f
    move/from16 v17, v3

    move/from16 v16, v14

    move-object v14, v4

    new-instance v0, Ljava/net/URISyntaxException;

    const-string/jumbo v3, "uri end not found"

    invoke-direct {v0, v1, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_20
    move/from16 v17, v3

    move-object v14, v4

    if-eqz v8, :cond_22

    iget-object v3, v6, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v3, :cond_21

    move-object v4, v14

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    goto :goto_3

    :cond_21
    move-object v4, v14

    :goto_3
    move-object v4, v6

    goto :goto_4

    :cond_22
    move-object v4, v14

    :goto_4
    if-eqz v11, :cond_2e

    invoke-virtual {v11, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v0, 0x7

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object v11, v0

    goto/16 :goto_7

    :cond_23
    move-object v11, v0

    goto/16 :goto_7

    :cond_24
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v0, 0xc

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_2c

    const/16 v0, 0xd

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2c

    const/16 v0, 0xe

    invoke-virtual {v11, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    const-string v10, "android.intent.action.MAIN"

    if-gez v5, :cond_26

    :try_start_5
    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decodeIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v7, :cond_25

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_25
    move-object v0, v13

    goto/16 :goto_6

    :cond_26
    const/4 v14, 0x0

    invoke-virtual {v11, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decodeIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v0, v15, :cond_28

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v11, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v15, v0

    if-ltz v0, :cond_27

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v11, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decodeIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    move v5, v15

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v5, v0, :cond_28

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v11, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v3, v0

    if-ltz v0, :cond_28

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v11, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decodeIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    move v5, v3

    goto :goto_5

    :cond_27
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decodeIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    :cond_28
    :goto_5
    if-nez v9, :cond_2a

    if-nez v7, :cond_29

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_29
    move-object v0, v13

    goto :goto_6

    :cond_2a
    if-nez v14, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    move-object v11, v0

    goto :goto_7

    :cond_2c
    move-object v0, v13

    move-object v11, v0

    :cond_2d
    :goto_7
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    if-lez v0, :cond_2e

    :try_start_6
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v4, Landroid/content/Intent;->mData:Landroid/net/Uri;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_8

    :catch_1
    move-exception v0

    :try_start_7
    new-instance v3, Ljava/net/URISyntaxException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_2e
    :goto_8
    return-object v4

    :catch_2
    move-exception v0

    new-instance v3, Ljava/net/URISyntaxException;

    const-string v4, "illegal Intent URI format"

    invoke-direct {v3, v1, v4, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v3
.end method

.method public static greylist-max-r printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 53

    const-string v51, "    [--selector]"

    const-string v52, "    [<URI> | <PACKAGE> | <COMPONENT>]"

    const-string v0, "<INTENT> specifications include these flags and arguments:"

    const-string v1, "    [-a <ACTION>] [-d <DATA_URI>] [-t <MIME_TYPE>] [-i <IDENTIFIER>]"

    const-string v2, "    [-c <CATEGORY> [-c <CATEGORY>] ...]"

    const-string v3, "    [-n <COMPONENT_NAME>]"

    const-string v4, "    [-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...]"

    const-string v5, "    [--esn <EXTRA_KEY> ...]"

    const-string v6, "    [--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...]"

    const-string v7, "    [--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...]"

    const-string v8, "    [--el <EXTRA_KEY> <EXTRA_LONG_VALUE> ...]"

    const-string v9, "    [--ef <EXTRA_KEY> <EXTRA_FLOAT_VALUE> ...]"

    const-string v10, "    [--ed <EXTRA_KEY> <EXTRA_DOUBLE_VALUE> ...]"

    const-string v11, "    [--eu <EXTRA_KEY> <EXTRA_URI_VALUE> ...]"

    const-string v12, "    [--ecn <EXTRA_KEY> <EXTRA_COMPONENT_NAME_VALUE>]"

    const-string v13, "    [--eia <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]"

    const-string v14, "        (multiple extras passed as Integer[])"

    const-string v15, "    [--eial <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]"

    const-string v16, "        (multiple extras passed as List<Integer>)"

    const-string v17, "    [--ela <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]"

    const-string v18, "        (multiple extras passed as Long[])"

    const-string v19, "    [--elal <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]"

    const-string v20, "        (multiple extras passed as List<Long>)"

    const-string v21, "    [--efa <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]"

    const-string v22, "        (multiple extras passed as Float[])"

    const-string v23, "    [--efal <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]"

    const-string v24, "        (multiple extras passed as List<Float>)"

    const-string v25, "    [--eda <EXTRA_KEY> <EXTRA_DOUBLE_VALUE>[,<EXTRA_DOUBLE_VALUE...]]"

    const-string v26, "        (multiple extras passed as Double[])"

    const-string v27, "    [--edal <EXTRA_KEY> <EXTRA_DOUBLE_VALUE>[,<EXTRA_DOUBLE_VALUE...]]"

    const-string v28, "        (multiple extras passed as List<Double>)"

    const-string v29, "    [--esa <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]"

    const-string v30, "        (multiple extras passed as String[]; to embed a comma into a string,"

    const-string v31, "         escape it using \"\\,\")"

    const-string v32, "    [--esal <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]"

    const-string v33, "        (multiple extras passed as List<String>; to embed a comma into a string,"

    const-string v34, "         escape it using \"\\,\")"

    const-string v35, "    [-f <FLAG>]"

    const-string v36, "    [--grant-read-uri-permission] [--grant-write-uri-permission]"

    const-string v37, "    [--grant-persistable-uri-permission] [--grant-prefix-uri-permission]"

    const-string v38, "    [--debug-log-resolution] [--exclude-stopped-packages]"

    const-string v39, "    [--include-stopped-packages]"

    const-string v40, "    [--activity-brought-to-front] [--activity-clear-top]"

    const-string v41, "    [--activity-clear-when-task-reset] [--activity-exclude-from-recents]"

    const-string v42, "    [--activity-launched-from-history] [--activity-multiple-task]"

    const-string v43, "    [--activity-no-animation] [--activity-no-history]"

    const-string v44, "    [--activity-no-user-action] [--activity-previous-is-top]"

    const-string v45, "    [--activity-reorder-to-front] [--activity-reset-task-if-needed]"

    const-string v46, "    [--activity-single-top] [--activity-clear-task]"

    const-string v47, "    [--activity-task-on-home] [--activity-match-external]"

    const-string v48, "    [--receiver-registered-only] [--receiver-replace-pending]"

    const-string v49, "    [--receiver-foreground] [--receiver-no-abort]"

    const-string v50, "    [--receiver-include-background]"

    filled-new-array/range {v0 .. v52}, [Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p0

    return-void
.end method

.method public static greylist-max-o restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_0
    const-string v4, "Intent"

    if-ltz v3, :cond_6

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "action"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_0
    const-string v7, "data"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    const-string/jumbo v7, "type"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string v7, "ident"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const-string v7, "component"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    const-string v7, "flags"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v4, 0x10

    invoke-static {v6, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreFromXml: unknown attribute="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_6
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v5, v3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_a

    const/4 v3, 0x3

    if-ne v5, v3, :cond_7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v1, :cond_a

    :cond_7
    const/4 v3, 0x2

    if-ne v5, v3, :cond_6

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "categories"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    add-int/lit8 v6, v2, -0x1

    :goto_3
    if-ltz v6, :cond_8

    invoke-interface {p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_8
    goto :goto_2

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreFromXml: unknown name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_a
    return-object v0
.end method

.method private greylist-max-o toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v1, :cond_1

    const-string v1, "SEL;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object v1, v1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object v1, v1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    move v7, p5

    invoke-direct/range {v2 .. v7}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "#Intent;"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "end"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method private greylist-max-o toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/16 v0, 0x3b

    if-eqz p2, :cond_0

    const-string/jumbo v1, "scheme="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "action="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const-string v2, "category="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    const-string v2, "/"

    if-eqz v1, :cond_3

    const-string/jumbo v1, "type="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "identifier="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    iget v1, p0, Landroid/content/Intent;->mFlags:I

    if-eqz v1, :cond_5

    const-string/jumbo v1, "launchFlags=0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    iget v1, p0, Landroid/content/Intent;->mExtendedFlags:I

    if-eqz v1, :cond_6

    const-string v1, "extendedLaunchFlags=0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/Intent;->mExtendedFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "package="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_8

    const-string v1, "component="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v1, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_9

    const-string/jumbo v1, "sourceBounds="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_a

    const/16 v4, 0x53

    goto :goto_2

    :cond_a
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_b

    const/16 v4, 0x42

    goto :goto_2

    :cond_b
    instance-of v4, v3, Ljava/lang/Byte;

    if-eqz v4, :cond_c

    const/16 v4, 0x62

    goto :goto_2

    :cond_c
    instance-of v4, v3, Ljava/lang/Character;

    if-eqz v4, :cond_d

    const/16 v4, 0x63

    goto :goto_2

    :cond_d
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_e

    const/16 v4, 0x64

    goto :goto_2

    :cond_e
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_f

    const/16 v4, 0x66

    goto :goto_2

    :cond_f
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_10

    const/16 v4, 0x69

    goto :goto_2

    :cond_10
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_11

    const/16 v4, 0x6c

    goto :goto_2

    :cond_11
    instance-of v4, v3, Ljava/lang/Short;

    if-eqz v4, :cond_12

    const/16 v4, 0x73

    goto :goto_2

    :cond_12
    const/4 v4, 0x0

    :goto_2
    nop

    if-eqz v4, :cond_13

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    goto :goto_1

    :cond_14
    return-void
.end method


# virtual methods
.method public whitelist addCategory(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist addExtendedFlags(I)Landroid/content/Intent;
    .locals 1

    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    return-object p0
.end method

.method public whitelist addFlags(I)Landroid/content/Intent;
    .locals 1

    iget v0, p0, Landroid/content/Intent;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    return-object p0
.end method

.method public greylist-max-o canStripForHistory()Z
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isParcelled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public whitelist cloneFilter()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->dumpDebugWithoutFieldId(Landroid/util/proto/ProtoOutputStream;ZZZZ)V

    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V
    .locals 8

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v2 .. v7}, Landroid/content/Intent;->dumpDebugWithoutFieldId(Landroid/util/proto/ProtoOutputStream;ZZZZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist fillIn(Landroid/content/Intent;I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v2, :cond_0

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v2, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-nez v2, :cond_2

    iget-object v2, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v2, :cond_4

    :cond_3
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v2, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    :cond_5
    iget-object v2, p1, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_6

    and-int/lit16 v2, p2, 0x100

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p1, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget-object v2, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v2, :cond_8

    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_a

    :cond_8
    iget-object v2, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v2, :cond_9

    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    :cond_9
    or-int/lit8 v0, v0, 0x4

    :cond_a
    iget-object v2, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_b

    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-nez v2, :cond_c

    iget-object v2, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x10

    :cond_c
    iget-object v2, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v2, :cond_d

    and-int/lit8 v2, p2, 0x40

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v2, :cond_d

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x40

    :cond_d
    iget-object v2, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v2, :cond_e

    and-int/lit16 v2, p2, 0x80

    if-eqz v2, :cond_f

    :cond_e
    iget-object v2, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    iput-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    or-int/lit16 v0, v0, 0x80

    const/4 v1, 0x1

    :cond_f
    iget-object v2, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_10

    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_10

    iget-object v2, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    or-int/lit8 v0, v0, 0x8

    :cond_10
    iget v2, p0, Landroid/content/Intent;->mFlags:I

    iget v3, p1, Landroid/content/Intent;->mFlags:I

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/Intent;->mFlags:I

    iget v2, p0, Landroid/content/Intent;->mExtendedFlags:I

    iget v3, p1, Landroid/content/Intent;->mExtendedFlags:I

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/Intent;->mExtendedFlags:I

    iget-object v2, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_11

    and-int/lit8 v2, p2, 0x20

    if-eqz v2, :cond_12

    :cond_11
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    or-int/lit8 v0, v0, 0x20

    :cond_12
    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v2, :cond_13

    iget-object v2, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_14

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    const/4 v1, 0x1

    goto :goto_0

    :cond_13
    iget-object v2, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_14

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iput-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Intent"

    const-string v4, "Failure filling in extras"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_0
    if-eqz v1, :cond_15

    iget v2, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_15

    iget v2, p1, Landroid/content/Intent;->mContentUserHint:I

    if-eq v2, v3, :cond_15

    iget v2, p1, Landroid/content/Intent;->mContentUserHint:I

    iput v2, p0, Landroid/content/Intent;->mContentUserHint:I

    :cond_15
    return v0
.end method

.method public whitelist filterEquals(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v2, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    :cond_5
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist filterHashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method public greylist-max-o fixUris(I)V
    .locals 7

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v1, p1}, Landroid/content/ClipData;->fixUris(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "android.intent.extra.STREAM"

    if-eqz v2, :cond_3

    const-class v2, Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-static {v2, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    goto :goto_2

    :cond_3
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-class v2, Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-static {v6, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Landroid/content/Intent;->isImageCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_6

    const-class v2, Landroid/net/Uri;

    const-string/jumbo v3, "output"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_7

    invoke-static {v2, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    :goto_1
    nop

    :cond_7
    :goto_2
    return-void
.end method

.method public whitelist getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getBooleanArrayExtra(Ljava/lang/String;)[Z
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getBooleanExtra(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public whitelist getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getByteArrayExtra(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getByteExtra(Ljava/lang/String;B)B
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    :goto_0
    return v0
.end method

.method public whitelist getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getCharArrayExtra(Ljava/lang/String;)[C
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getCharExtra(Ljava/lang/String;C)C
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    :goto_0
    return v0
.end method

.method public whitelist getCharSequenceArrayExtra(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public whitelist getComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public greylist-max-o getContentUserHint()I
    .locals 1

    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    return v0
.end method

.method public whitelist getData()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getDataString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getDoubleArrayExtra(Ljava/lang/String;)[D
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getDoubleExtra(Ljava/lang/String;D)D
    .locals 2

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public blacklist getExtendedFlags()I
    .locals 1

    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    return v0
.end method

.method public greylist getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p2

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getExtrasTotalSize()I
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->getSize()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getFlags()I
    .locals 1

    iget v0, p0, Landroid/content/Intent;->mFlags:I

    return v0
.end method

.method public whitelist getFloatArrayExtra(Ljava/lang/String;)[F
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getFloatExtra(Ljava/lang/String;F)F
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    :goto_0
    return v0
.end method

.method public blacklist getForceLaunchOverTargetTask()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/Intent;->mForceLaunchOverTargetTask:Z

    return v0
.end method

.method public greylist getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIntArrayExtra(Ljava/lang/String;)[I
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getIntExtra(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public whitelist getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public blacklist getLaunchOverTargetTaskId()I
    .locals 1

    iget v0, p0, Landroid/content/Intent;->mLaunchOverTargetTaskId:I

    return v0
.end method

.method public blacklist getLaunchTaskIdForAliasManagedTarget()I
    .locals 1

    iget v0, p0, Landroid/content/Intent;->mLaunchTaskIdForAliasManagedTarget:I

    return v0
.end method

.method public blacklist getLaunchTaskIdForSingleInstancePerTask()I
    .locals 1

    iget v0, p0, Landroid/content/Intent;->mLaunchTaskIdForSingleInstancePerTask:I

    return v0
.end method

.method public greylist-max-o getLaunchToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLongArrayExtra(Ljava/lang/String;)[J
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getLongExtra(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move-wide v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public blacklist getOriginalIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getParcelableArrayExtra(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getSelector()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getShortArrayExtra(Ljava/lang/String;)[S
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getShortExtra(Ljava/lang/String;S)S
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    :goto_0
    return v0
.end method

.method public whitelist getSourceBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist hasCategory(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasExtra(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasFileDescriptors()Z
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o hasWebURI()Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public blacklist isAiKeyAppLaunch()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/Intent;->mIsAiKeyAppLaunch:Z

    return v0
.end method

.method public greylist-max-o isDocument()Z
    .locals 2

    iget v0, p0, Landroid/content/Intent;->mFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist isExcludingStopped()Z
    .locals 2

    iget v0, p0, Landroid/content/Intent;->mFlags:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isImplicitImageCaptureIntent()Z
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/content/Intent;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isMismatchingFilter()Z
    .locals 2

    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isRemoteAppLaunch()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/Intent;->mIsRemoteAppLaunch:Z

    return v0
.end method

.method public blacklist isSandboxActivity(Landroid/content/Context;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const-string v2, "android.app.sdksandbox.action.START_SANDBOXED_ACTIVITY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o isWebIntent()Z
    .locals 2

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->hasWebURI()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o maybeStripForHistory()Landroid/content/Intent;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    return-object v0
.end method

.method public blacklist mergeExtras(Landroid/content/Intent;Landroid/os/BundleMerger;)V
    .locals 2

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p2, v0, v1}, Landroid/os/BundleMerger;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public greylist-max-o migrateExtraStreamToClipData()Z
    .locals 1

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public blacklist migrateExtraStreamToClipData(Landroid/content/Context;)Z
    .locals 11

    const-string/jumbo v0, "output"

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isParcelled()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.CHOOSER"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "android.intent.extra.INTENT"

    const-class v3, Landroid/content/Intent;

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v0, v3

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    :try_start_1
    const-string v2, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_4

    aget-object v4, v2, v3

    check-cast v4, Landroid/content/Intent;

    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    or-int/2addr v0, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    goto :goto_2

    :catch_1
    move-exception v2

    :goto_2
    return v0

    :cond_5
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "android.intent.extra.HTML_TEXT"

    const-string v5, "android.intent.extra.TEXT"

    const-string v6, "android.intent.extra.STREAM"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_9

    :try_start_2
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p0, v6, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_7

    if-nez v3, :cond_7

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    goto :goto_4

    :cond_7
    :goto_3
    new-instance v5, Landroid/content/ClipData;

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v9, Landroid/content/ClipData$Item;

    invoke-direct {v9, v3, v4, v7, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-direct {v5, v7, v6, v9}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {p0, v5}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    if-eqz v0, :cond_8

    invoke-virtual {p0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_8
    return v8

    :catch_2
    move-exception v0

    :goto_4
    goto/16 :goto_7

    :cond_9
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    :try_start_3
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p0, v6, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v6

    :cond_a
    if-eqz v3, :cond_c

    if-ltz v5, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_b

    return v2

    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v6

    :cond_c
    if-eqz v4, :cond_e

    if-ltz v5, :cond_d

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_d

    return v2

    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v6

    :cond_e
    if-lez v5, :cond_11

    new-instance v6, Landroid/content/ClipData;

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v3, v4, v2}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-direct {v6, v7, v9, v10}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    const/4 v7, 0x1

    :goto_5
    if-ge v7, v5, :cond_f

    invoke-static {v0, v3, v4, v7}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_f
    invoke-virtual {p0, v6}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    if-eqz v0, :cond_10

    invoke-virtual {p0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_10
    return v8

    :cond_11
    goto :goto_6

    :catch_3
    move-exception v0

    :goto_6
    goto :goto_7

    :cond_12
    invoke-direct {p0}, Landroid/content/Intent;->isImageCaptureIntent()Z

    move-result v3

    if-eqz v3, :cond_13

    :try_start_4
    const-class v3, Landroid/net/Uri;

    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    nop

    if-eqz v3, :cond_13

    invoke-direct {p0, p1, v3}, Landroid/content/Intent;->maybeConvertFileToContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, ""

    invoke-static {v0, v2}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return v8

    :catch_4
    move-exception v0

    return v2

    :cond_13
    :goto_7
    return v2
.end method

.method public blacklist prepareToEnterProcess(ILandroid/content/AttributionSource;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setDefusable(Z)V

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p2}, Landroid/content/ClipData;->prepareToEnterProcess(Landroid/content/AttributionSource;)V

    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V

    :cond_2
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_3

    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p0, v0}, Landroid/content/Intent;->fixUris(I)V

    iput v1, p0, Landroid/content/Intent;->mContentUserHint:I

    :cond_3
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const-string v1, "android.bluetooth."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-class v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->prepareToEnterProcess(Landroid/content/AttributionSource;)V

    :cond_4
    return-void
.end method

.method public blacklist prepareToEnterProcess(ZLandroid/content/AttributionSource;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V

    :goto_0
    return-void
.end method

.method public greylist-max-r prepareToLeaveProcess(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    return-void
.end method

.method public greylist-max-o prepareToLeaveProcess(Z)V
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    iget-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ClipData;->prepareToLeaveProcess(ZI)V

    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    :cond_2
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isParcelled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/content/Intent;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    :cond_3
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "Intent.getData()"

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, -0x1

    const/4 v7, 0x2

    const-string v8, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_4
    goto/16 :goto_0

    :sswitch_0
    const-string v9, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_1
    const-string v9, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v7

    goto/16 :goto_1

    :sswitch_2
    const-string v9, "android.intent.action.PACKAGE_VERIFIED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_3
    const-string v9, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    goto/16 :goto_1

    :sswitch_4
    const-string v9, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    goto/16 :goto_1

    :sswitch_5
    const-string v9, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_7
    const-string v9, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_8
    const-string v9, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_9
    const-string v9, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_a
    const-string v9, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_b
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_1

    :sswitch_c
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_d
    const-string v9, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_e
    const-string v9, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_1

    :sswitch_f
    const-string v9, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_10
    const-string v9, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xe

    goto :goto_1

    :goto_0
    move v1, v6

    :goto_1
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    nop

    :cond_5
    :goto_2
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_7

    invoke-static {}, Landroid/os/StrictMode;->vmContentUriWithoutPermissionEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    :cond_6
    goto :goto_3

    :sswitch_11
    const-string v2, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :sswitch_12
    const-string v0, "android.provider.action.QUICK_CONTACT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_4

    :goto_3
    move v0, v6

    :goto_4
    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri;->checkContentUriWithoutPermission(Ljava/lang/String;I)V

    goto :goto_5

    :pswitch_1
    nop

    :cond_7
    :goto_5
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    nop

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/StorageManager;->translateAppToSystem(Ljava/io/File;II)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Translated "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Intent"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    :cond_8
    invoke-static {}, Landroid/os/StrictMode;->vmUnsafeIntentLaunchEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    and-int/lit8 v0, v0, 0x24

    if-nez v0, :cond_9

    invoke-static {p0}, Landroid/os/StrictMode;->onUnsafeIntentLaunch(Landroid/content/Intent;)V

    goto :goto_6

    :cond_9
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_a

    invoke-static {p0}, Landroid/os/StrictMode;->onUnsafeIntentLaunch(Landroid/content/Intent;)V

    goto :goto_6

    :cond_a
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_c

    :cond_b
    invoke-static {p0}, Landroid/os/StrictMode;->onUnsafeIntentLaunch(Landroid/content/Intent;)V

    :cond_c
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x78257653 -> :sswitch_10
        -0x6cb4d57b -> :sswitch_f
        -0x6342a1e0 -> :sswitch_e
        -0x5a4113c8 -> :sswitch_d
        -0x4418042d -> :sswitch_c
        -0x39738481 -> :sswitch_b
        -0x254e496f -> :sswitch_a
        0xf54386e -> :sswitch_9
        0x187b165e -> :sswitch_8
        0x22b70ddb -> :sswitch_7
        0x32c98ebd -> :sswitch_6
        0x543610e0 -> :sswitch_5
        0x5559c83a -> :sswitch_4
        0x5f557da2 -> :sswitch_3
        0x7277a986 -> :sswitch_2
        0x751aa7fa -> :sswitch_1
        0x79e65f52 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x2265ad8c -> :sswitch_12
        0x6316690b -> :sswitch_11
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public greylist-max-o prepareToLeaveUser(I)V
    .locals 2

    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iput p1, p0, Landroid/content/Intent;->mContentUserHint:I

    :cond_0
    return-void
.end method

.method public whitelist putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;B)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;C)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;D)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;F)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public greylist putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;S)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[C)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[D)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[F)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[J)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[S)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-object p0
.end method

.method public whitelist putExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    iget v0, p1, Landroid/content/Intent;->mLocalFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/content/Intent;->mLocalFlags:I

    and-int/lit8 v0, v0, 0x24

    if-nez v0, :cond_2

    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    :cond_2
    return-object p0
.end method

.method public whitelist putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Bundle;->isParcelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public whitelist putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public whitelist putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public whitelist putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/content/ClipData;

    invoke-direct {v1, p1}, Landroid/content/ClipData;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/Intent;->mLaunchOverTargetTaskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Landroid/content/Intent;->mForceLaunchOverTargetTask:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/Intent;->mIsRemoteAppLaunch:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/Intent;->mIsAiKeyAppLaunch:Z

    return-void
.end method

.method public whitelist removeCategory(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    :cond_0
    return-void
.end method

.method public blacklist removeExtendedFlags(I)V
    .locals 2

    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    return-void
.end method

.method public whitelist removeExtra(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public whitelist removeFlags(I)V
    .locals 2

    iget v0, p0, Landroid/content/Intent;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    return-void
.end method

.method public whitelist replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .locals 4

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object v0

    :cond_0
    const/high16 v0, 0x10000

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000

    or-int/2addr v1, p2

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_1
    :goto_1
    return-object v0
.end method

.method public greylist resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;
    .locals 8

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object v0

    :cond_0
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_3

    move-object v1, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple system services handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    return-object v1
.end method

.method public whitelist resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist resolveType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "action"

    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "data"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "type"

    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "ident"

    iget-object v2, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "component"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "flags"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_6

    const-string v0, "categories"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_5

    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "category"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    return-void
.end method

.method public whitelist semSetLaunchOverTargetTask(IZ)V
    .locals 0

    iput p1, p0, Landroid/content/Intent;->mLaunchOverTargetTaskId:I

    iput-boolean p2, p0, Landroid/content/Intent;->mForceLaunchOverTargetTask:Z

    return-void
.end method

.method public whitelist setAction(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setAiKeyAppLaunch(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/content/Intent;->mIsAiKeyAppLaunch:Z

    return-void
.end method

.method public greylist-max-r setAllowFds(Z)V
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    :cond_0
    return-void
.end method

.method public whitelist setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public whitelist setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public whitelist setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public whitelist setClipData(Landroid/content/ClipData;)V
    .locals 0

    iput-object p1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    return-void
.end method

.method public whitelist setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public whitelist setData(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object p2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setDefusable(Z)V
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setDefusable(Z)V

    :cond_0
    return-void
.end method

.method public whitelist setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method

.method public whitelist setFlags(I)Landroid/content/Intent;
    .locals 0

    iput p1, p0, Landroid/content/Intent;->mFlags:I

    return-object p0
.end method

.method public whitelist setIdentifier(Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setLaunchTaskIdForAliasManagedTarget(I)V
    .locals 0

    iput p1, p0, Landroid/content/Intent;->mLaunchTaskIdForAliasManagedTarget:I

    return-void
.end method

.method public blacklist setLaunchTaskIdForSingleInstancePerTask(I)V
    .locals 0

    iput p1, p0, Landroid/content/Intent;->mLaunchTaskIdForSingleInstancePerTask:I

    return-void
.end method

.method public greylist-max-o setLaunchToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    return-void
.end method

.method public blacklist setOriginalIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    return-void
.end method

.method public whitelist setPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set package name when selector is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setRemoteAppLaunch(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/content/Intent;->mIsRemoteAppLaunch:Z

    return-void
.end method

.method public whitelist setSelector(Landroid/content/Intent;)V
    .locals 2

    if-eq p1, p0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set selector when package name is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent being set as a selector of itself"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSourceBounds(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method

.method public whitelist setType(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    invoke-static {p1}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r toInsecureString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Intent { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o toShortString(ZZZZ)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o toShortString(Ljava/lang/StringBuilder;ZZZZ)V
    .locals 9

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "act="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    const/16 v2, 0x20

    if-eqz v1, :cond_4

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v0, 0x0

    const-string v1, "cat=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    if-lez v1, :cond_2

    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_8

    if-nez v0, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const/4 v0, 0x0

    const-string v1, "dat="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "nfc://secure"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "nfc://secure:it should not be shown"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_1
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v1, :cond_a

    if-nez v0, :cond_9

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    const/4 v0, 0x0

    const-string/jumbo v1, "typ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v1, :cond_c

    if-nez v0, :cond_b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    const/4 v0, 0x0

    const-string v1, "id="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget v1, p0, Landroid/content/Intent;->mFlags:I

    if-eqz v1, :cond_e

    if-nez v0, :cond_d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d
    const/4 v0, 0x0

    const-string v1, "flg=0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget v1, p0, Landroid/content/Intent;->mExtendedFlags:I

    if-eqz v1, :cond_10

    if-nez v0, :cond_f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_f
    const/4 v0, 0x0

    const-string/jumbo v1, "xflg=0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/Intent;->mExtendedFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_12

    if-nez v0, :cond_11

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    const/4 v0, 0x0

    const-string/jumbo v1, "pkg="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    if-eqz p3, :cond_14

    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_14

    if-nez v0, :cond_13

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    const/4 v0, 0x0

    const-string v1, "cmp="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v1, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_16

    if-nez v0, :cond_15

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    const/4 v0, 0x0

    const-string v1, "bnds="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v1, :cond_1a

    if-nez v0, :cond_17

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_17
    const-string v1, "clip={"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz p5, :cond_19

    if-eqz p2, :cond_18

    goto :goto_2

    :cond_18
    const/4 v3, 0x0

    goto :goto_3

    :cond_19
    :goto_2
    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v1, p1, v3}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;Z)V

    const/4 v0, 0x0

    const/16 v1, 0x7d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    if-eqz p4, :cond_1c

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1c

    if-nez v0, :cond_1b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1b
    const/4 v0, 0x0

    const-string v1, "(has extras)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    iget v1, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v3, -0x2

    if-eq v1, v3, :cond_1e

    if-nez v0, :cond_1d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    const/4 v0, 0x0

    const-string/jumbo v1, "u="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1e
    iget-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    const-string/jumbo v2, "}"

    if-eqz v1, :cond_1f

    const-string v1, " sel="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    iget-object v1, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    if-eqz v1, :cond_20

    const-string v1, " org={"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    iget v1, p0, Landroid/content/Intent;->mLaunchOverTargetTaskId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    const-string v1, " launch-over-target-task-id="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/Intent;->mLaunchOverTargetTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " force="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/Intent;->mForceLaunchOverTargetTask:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_21
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toString(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist toString(Ljava/lang/StringBuilder;)V
    .locals 7

    const-string v0, "Intent { "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    const-string v0, " }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public whitelist toURI()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist toUri(I)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "android-app://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/net/Uri;->encodeIfNotEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/net/Uri;->encodeIfNotEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    const-string v5, "/"

    invoke-static {v2, v5}, Landroid/net/Uri;->encodeIfNotEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v5, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/net/Uri;->encodeIfNotEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const/16 v6, 0x3f

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v6, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/net/Uri;->encodeIfNotEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/16 v6, 0x23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-nez v1, :cond_3

    const-string v2, "android.intent.action.MAIN"

    goto :goto_0

    :cond_3
    const-string v2, "android.intent.action.VIEW"

    :goto_0
    move-object v5, v2

    iget-object v6, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, v0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent must include an explicit package name to build an android-app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    const-string v3, "intent:"

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_b

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-lt v6, v7, :cond_6

    const/16 v7, 0x7a

    if-le v6, v7, :cond_a

    :cond_6
    const/16 v7, 0x41

    if-lt v6, v7, :cond_7

    const/16 v7, 0x5a

    if-le v6, v7, :cond_a

    :cond_7
    const/16 v7, 0x30

    if-lt v6, v7, :cond_8

    const/16 v7, 0x39

    if-le v6, v7, :cond_a

    :cond_8
    const/16 v7, 0x2e

    if-eq v6, v7, :cond_a

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_a

    const/16 v7, 0x2b

    if-ne v6, v7, :cond_9

    goto :goto_2

    :cond_9
    const/16 v7, 0x3a

    if-ne v6, v7, :cond_b

    if-lez v5, :cond_b

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_a
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_b
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    goto :goto_4

    :cond_d
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v5, "android.intent.action.VIEW"

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move-object v4, v1

    move v7, p1

    invoke-direct/range {v2 .. v7}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/Intent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    iget v0, p0, Landroid/content/Intent;->mLaunchOverTargetTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/Intent;->mForceLaunchOverTargetTask:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/Intent;->mIsRemoteAppLaunch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/Intent;->mIsAiKeyAppLaunch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
