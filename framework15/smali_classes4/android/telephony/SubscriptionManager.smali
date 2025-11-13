.class public Landroid/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;,
        Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;,
        Landroid/telephony/SubscriptionManager$CallISubMethodHelper;,
        Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;,
        Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;,
        Landroid/telephony/SubscriptionManager$TransferStatus;,
        Landroid/telephony/SubscriptionManager$ServiceCapability;,
        Landroid/telephony/SubscriptionManager$PhoneNumberSource;,
        Landroid/telephony/SubscriptionManager$UsageSetting;,
        Landroid/telephony/SubscriptionManager$SemProfileClass;,
        Landroid/telephony/SubscriptionManager$ProfileClass;,
        Landroid/telephony/SubscriptionManager$DataRoamingMode;,
        Landroid/telephony/SubscriptionManager$DeviceToDeviceStatusSharingPreference;,
        Landroid/telephony/SubscriptionManager$SimDisplayNameSource;,
        Landroid/telephony/SubscriptionManager$SubscriptionType;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACCESS_RULES:Ljava/lang/String; = "access_rules"

.field public static final blacklist ACCESS_RULES_FROM_CARRIER_CONFIGS:Ljava/lang/String; = "access_rules_from_carrier_configs"

.field public static final whitelist ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

.field public static final whitelist ACTION_DEFAULT_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

.field public static final whitelist ACTION_MANAGE_SUBSCRIPTION_PLANS:Ljava/lang/String; = "android.telephony.action.MANAGE_SUBSCRIPTION_PLANS"

.field public static final whitelist ACTION_REFRESH_SUBSCRIPTION_PLANS:Ljava/lang/String; = "android.telephony.action.REFRESH_SUBSCRIPTION_PLANS"

.field public static final whitelist ACTION_SUBSCRIPTION_PLANS_CHANGED:Ljava/lang/String; = "android.telephony.action.SUBSCRIPTION_PLANS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ADVANCED_CALLING_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ALLOWED_NETWORK_TYPES:Ljava/lang/String; = "allowed_network_types_for_reasons"

.field private static final blacklist CACHE_KEY_SUBSCRIPTION_MANAGER_SERVICE_PROPERTY:Ljava/lang/String; = "cache_key.telephony.subscription_manager_service"

.field public static final greylist-max-o CARD_ID:Ljava/lang/String; = "card_id"

.field public static final blacklist CARRIER_ID:Ljava/lang/String; = "carrier_id"

.field public static final greylist-max-o CARRIER_NAME:Ljava/lang/String; = "carrier_name"

.field public static final greylist-max-o CB_ALERT_REMINDER_INTERVAL:Ljava/lang/String; = "alert_reminder_interval"

.field public static final greylist-max-o CB_ALERT_SOUND_DURATION:Ljava/lang/String; = "alert_sound_duration"

.field public static final greylist-max-o CB_ALERT_SPEECH:Ljava/lang/String; = "enable_alert_speech"

.field public static final greylist-max-o CB_ALERT_VIBRATE:Ljava/lang/String; = "enable_alert_vibrate"

.field public static final greylist-max-o CB_AMBER_ALERT:Ljava/lang/String; = "enable_cmas_amber_alerts"

.field public static final greylist-max-o CB_CHANNEL_50_ALERT:Ljava/lang/String; = "enable_channel_50_alerts"

.field public static final greylist-max-o CB_CMAS_TEST_ALERT:Ljava/lang/String; = "enable_cmas_test_alerts"

.field public static final greylist-max-o CB_EMERGENCY_ALERT:Ljava/lang/String; = "enable_emergency_alerts"

.field public static final greylist-max-o CB_ETWS_TEST_ALERT:Ljava/lang/String; = "enable_etws_test_alerts"

.field public static final greylist-max-o CB_EXTREME_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_extreme_threat_alerts"

.field public static final greylist-max-o CB_OPT_OUT_DIALOG:Ljava/lang/String; = "show_cmas_opt_out_dialog"

.field public static final greylist-max-o CB_SEVERE_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_severe_threat_alerts"

.field public static final greylist-max-r CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist CROSS_SIM_CALLING_ENABLED:Ljava/lang/String; = "cross_sim_calling_enabled"

.field public static final whitelist CROSS_SIM_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist D2D_SHARING_ALL:I = 0x3

.field public static final whitelist D2D_SHARING_ALL_CONTACTS:I = 0x1

.field public static final whitelist D2D_SHARING_DISABLED:I = 0x0

.field public static final whitelist D2D_SHARING_SELECTED_CONTACTS:I = 0x2

.field public static final whitelist D2D_STATUS_SHARING:Ljava/lang/String; = "d2d_sharing_status"

.field public static final whitelist D2D_STATUS_SHARING_SELECTED_CONTACTS:Ljava/lang/String; = "d2d_sharing_contacts"

.field public static final greylist-max-o DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final whitelist DATA_ROAMING_DISABLE:I = 0x0

.field public static final whitelist DATA_ROAMING_ENABLE:I = 0x1

.field private static final greylist-max-o DBG:Z = false

.field public static final greylist-max-o DEFAULT_NAME_RES:I = 0x104000e

.field public static final greylist-max-o DEFAULT_PHONE_INDEX:I = 0x7fffffff

.field public static final greylist-max-o DEFAULT_SIM_SLOT_INDEX:I = 0x7fffffff

.field public static final whitelist DEFAULT_SUBSCRIPTION_ID:I = 0x7fffffff

.field public static final greylist-max-o DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final blacklist EHPLMNS:Ljava/lang/String; = "ehplmns"

.field public static final blacklist ENABLED_MOBILE_DATA_POLICIES:Ljava/lang/String; = "enabled_mobile_data_policies"

.field public static final greylist-max-o ENHANCED_4G_MODE_ENABLED:Ljava/lang/String; = "volte_vt_enabled"

.field public static final whitelist EXTRA_SLOT_INDEX:Ljava/lang/String; = "android.telephony.extra.SLOT_INDEX"

.field public static final whitelist EXTRA_SUBSCRIPTION_INDEX:Ljava/lang/String; = "android.telephony.extra.SUBSCRIPTION_INDEX"

.field public static final blacklist GET_SIM_SPECIFIC_SETTINGS_METHOD_NAME:Ljava/lang/String; = "getSimSpecificSettings"

.field public static final blacklist GROUP_OWNER:Ljava/lang/String; = "group_owner"

.field public static final blacklist GROUP_UUID:Ljava/lang/String; = "group_uuid"

.field public static final blacklist HPLMNS:Ljava/lang/String; = "hplmns"

.field public static final blacklist HUE:Ljava/lang/String; = "color"

.field public static final greylist-max-o ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final blacklist IMSI:Ljava/lang/String; = "imsi"

.field public static final blacklist IMS_RCS_UCE_ENABLED:Ljava/lang/String; = "ims_rcs_uce_enabled"

.field public static final greylist-max-o INVALID_PHONE_INDEX:I = -0x1

.field public static final whitelist INVALID_SIM_SLOT_INDEX:I = -0x1

.field public static final whitelist INVALID_SUBSCRIPTION_ID:I = -0x1

.field public static final blacklist ISO_COUNTRY_CODE:Ljava/lang/String; = "iso_country_code"

.field public static final greylist-max-o IS_EMBEDDED:Ljava/lang/String; = "is_embedded"

.field public static final blacklist IS_ONLY_NTN:Ljava/lang/String; = "is_only_ntn"

.field public static final blacklist IS_OPPORTUNISTIC:Ljava/lang/String; = "is_opportunistic"

.field public static final greylist-max-o IS_REMOVABLE:Ljava/lang/String; = "is_removable"

.field public static final blacklist IS_SATELLITE_PROVISIONED_FOR_NON_IP_DATAGRAM:Ljava/lang/String; = "is_satellite_provisioned_for_non_ip_datagram"

.field public static final blacklist KEY_SIM_SPECIFIC_SETTINGS_DATA:Ljava/lang/String; = "KEY_SIM_SPECIFIC_SETTINGS_DATA"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field private static final blacklist MAX_CACHE_SIZE:I = 0x4

.field private static final blacklist MAX_RESOURCE_CACHE_ENTRY_COUNT:I = 0x3e8

.field public static final greylist-max-o MAX_SUBSCRIPTION_ID_VALUE:I = 0x7ffffffe

.field public static final greylist-max-o MCC:Ljava/lang/String; = "mcc"

.field public static final blacklist MCC_STRING:Ljava/lang/String; = "mcc_string"

.field public static final greylist-max-o MIN_SUBSCRIPTION_ID_VALUE:I = 0x0

.field public static final greylist-max-o MNC:Ljava/lang/String; = "mnc"

.field public static final blacklist MNC_STRING:Ljava/lang/String; = "mnc_string"

.field public static final greylist-max-o NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final blacklist NAME_SOURCE_CARRIER:I = 0x3

.field public static final blacklist NAME_SOURCE_CARRIER_ID:I = 0x0

.field public static final blacklist NAME_SOURCE_SIM_PNN:I = 0x4

.field public static final blacklist NAME_SOURCE_SIM_SPN:I = 0x1

.field public static final blacklist NAME_SOURCE_UNKNOWN:I = -0x1

.field public static final greylist-max-p NAME_SOURCE_USER_INPUT:I = 0x2

.field public static final blacklist NR_ADVANCED_CALLING_ENABLED:Ljava/lang/String; = "nr_advanced_calling_enabled"

.field public static final greylist-max-o NUMBER:Ljava/lang/String; = "number"

.field public static final whitelist PHONE_NUMBER_SOURCE_CARRIER:I = 0x2

.field public static final whitelist PHONE_NUMBER_SOURCE_IMS:I = 0x3

.field public static final whitelist PHONE_NUMBER_SOURCE_UICC:I = 0x1

.field public static final blacklist PLACEHOLDER_SUBSCRIPTION_ID_BASE:I = -0x2

.field public static final blacklist PORT_INDEX:Ljava/lang/String; = "port_index"

.field public static final blacklist PROFILE_CLASS:Ljava/lang/String; = "profile_class"

.field public static final whitelist PROFILE_CLASS_DEFAULT:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist PROFILE_CLASS_OPERATIONAL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROFILE_CLASS_PROVISIONING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROFILE_CLASS_TESTING:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROFILE_CLASS_UNSET:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist RESTORE_SIM_SPECIFIC_SETTINGS_DATABASE_UPDATED:Ljava/lang/String; = "restoreSimSpecificSettingsDatabaseUpdated"

.field public static final blacklist RESTORE_SIM_SPECIFIC_SETTINGS_METHOD_NAME:Ljava/lang/String; = "restoreSimSpecificSettings"

.field public static final blacklist SATELLITE_ATTACH_ENABLED_FOR_CARRIER:Ljava/lang/String; = "satellite_attach_enabled_for_carrier"

.field public static final blacklist SATELLITE_ENABLED:Ljava/lang/String; = "satellite_enabled"

.field public static final blacklist SATELLITE_ENTITLEMENT_PLMNS:Ljava/lang/String; = "satellite_entitlement_plmns"

.field public static final blacklist SATELLITE_ENTITLEMENT_STATUS:Ljava/lang/String; = "satellite_entitlement_status"

.field public static final blacklist SATELLITE_ESOS_SUPPORTED:Ljava/lang/String; = "satellite_esos_supported"

.field public static final whitelist SEM_PROFILE_CLASS_OPERATIONAL:I = 0x2

.field public static final whitelist SEM_PROFILE_CLASS_PROVISIONING:I = 0x1

.field public static final whitelist SEM_PROFILE_CLASS_TESTING:I = 0x0

.field public static final whitelist SEM_PROFILE_CLASS_UNSET:I = -0x1

.field public static final blacklist SERVICE_CAPABILITIES:Ljava/lang/String; = "service_capabilities"

.field public static final whitelist SERVICE_CAPABILITY_DATA:I = 0x3

.field public static final blacklist SERVICE_CAPABILITY_DATA_BITMASK:I

.field public static final blacklist SERVICE_CAPABILITY_MAX:I = 0x3

.field public static final whitelist SERVICE_CAPABILITY_SMS:I = 0x2

.field public static final blacklist SERVICE_CAPABILITY_SMS_BITMASK:I

.field public static final whitelist SERVICE_CAPABILITY_VOICE:I = 0x1

.field public static final blacklist SERVICE_CAPABILITY_VOICE_BITMASK:I

.field public static final blacklist SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist SIM_INFO_SUW_RESTORE_CONTENT_URI:Landroid/net/Uri;

.field public static final greylist-max-o SIM_NOT_INSERTED:I = -0x1

.field public static final greylist-max-o SIM_SLOT_INDEX:Ljava/lang/String; = "sim_id"

.field public static final blacklist SLOT_INDEX_FOR_REMOTE_SIM_SUB:I = -0x1

.field public static final blacklist SUBSCRIPTION_TYPE:Ljava/lang/String; = "subscription_type"

.field public static final whitelist SUBSCRIPTION_TYPE_LOCAL_SIM:I = 0x0

.field public static final whitelist SUBSCRIPTION_TYPE_REMOTE_SIM:I = 0x1

.field public static final greylist-max-o SUB_DEFAULT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.SUB_DEFAULT_CHANGED"

.field public static final blacklist TP_MESSAGE_REF:Ljava/lang/String; = "tp_message_ref"

.field public static final blacklist TRANSFER_STATUS:Ljava/lang/String; = "transfer_status"

.field public static final whitelist TRANSFER_STATUS_CONVERTED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TRANSFER_STATUS_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TRANSFER_STATUS_TRANSFERRED_OUT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist UICC_APPLICATIONS_ENABLED:Ljava/lang/String; = "uicc_applications_enabled"

.field public static final greylist-max-o UNIQUE_KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "_id"

.field public static final blacklist USAGE_SETTING:Ljava/lang/String; = "usage_setting"

.field public static final whitelist USAGE_SETTING_DATA_CENTRIC:I = 0x2

.field public static final whitelist USAGE_SETTING_DEFAULT:I = 0x0

.field public static final whitelist USAGE_SETTING_UNKNOWN:I = -0x1

.field public static final whitelist USAGE_SETTING_VOICE_CENTRIC:I = 0x1

.field public static final blacklist USER_HANDLE:Ljava/lang/String; = "user_handle"

.field private static final greylist-max-o VDBG:Z = false

.field public static final blacklist VOIMS_OPT_IN_STATUS:Ljava/lang/String; = "voims_opt_in_status"

.field public static final whitelist VT_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o VT_IMS_ENABLED:Ljava/lang/String; = "vt_ims_enabled"

.field public static final whitelist WFC_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o WFC_IMS_ENABLED:Ljava/lang/String; = "wfc_ims_enabled"

.field public static final greylist-max-o WFC_IMS_MODE:Ljava/lang/String; = "wfc_ims_mode"

.field public static final greylist-max-o WFC_IMS_ROAMING_ENABLED:Ljava/lang/String; = "wfc_ims_roaming_enabled"

.field public static final greylist-max-o WFC_IMS_ROAMING_MODE:Ljava/lang/String; = "wfc_ims_roaming_mode"

.field public static final whitelist WFC_MODE_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WFC_ROAMING_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist WFC_ROAMING_MODE_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static blacklist sGetActiveDataSubscriptionIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sGetDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sGetDefaultSmsSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sGetDefaultSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sGetPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sGetSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sGetSubIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sResourcesCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/res/Configuration;",
            ">;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mIsForAllUserProfiles:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$1eo3N-t4L7428ca0yAgbUgEpBao(Landroid/telephony/SubscriptionManager;Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionManager;->lambda$getActiveSubscriptionInfoList$2(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$4qyfT2nanfDxhPKgO8rARHDz9Ao(Landroid/telephony/SubscriptionManager;Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionManager;->lambda$getActiveSubscriptionInfoList$1(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$7vgQE1sb2eIt3k4-21aTcUWQN7Q(Landroid/telephony/SubscriptionManager;ZILcom/android/internal/telephony/ISub;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/SubscriptionManager;->lambda$setOpportunistic$7(ZILcom/android/internal/telephony/ISub;)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$y-NltIiKGCtMq1bnaz_GXbvdtGs(Landroid/telephony/SubscriptionManager;IILcom/android/internal/telephony/ISub;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/SubscriptionManager;->lambda$setUsageSetting$13(IILcom/android/internal/telephony/ISub;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    sget-object v0, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda9;-><init>()V

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cache_key.telephony.subscription_manager_service"

    invoke-direct {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v0, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda10;-><init>()V

    invoke-direct {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda11;-><init>()V

    invoke-direct {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultSmsSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v0, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda12;-><init>()V

    invoke-direct {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sGetActiveDataSubscriptionIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda13;-><init>()V

    invoke-direct {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sGetSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda14;-><init>()V

    invoke-direct {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sGetSubIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda15;-><init>()V

    invoke-direct {v0, v1, v3, v2}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sGetPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "wfc"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->WFC_ENABLED_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "advanced_calling"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->ADVANCED_CALLING_ENABLED_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "wfc_mode"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->WFC_MODE_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "wfc_roaming_mode"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->WFC_ROAMING_MODE_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "vt_enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->VT_ENABLED_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "wfc_roaming_enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->WFC_ROAMING_ENABLED_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "backup_and_restore"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "suw_restore"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->SIM_INFO_SUW_RESTORE_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "cross_sim_calling_enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->CROSS_SIM_ENABLED_CONTENT_URI:Landroid/net/Uri;

    nop

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->serviceCapabilityToBitmask(I)I

    move-result v0

    sput v0, Landroid/telephony/SubscriptionManager;->SERVICE_CAPABILITY_VOICE_BITMASK:I

    nop

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->serviceCapabilityToBitmask(I)I

    move-result v0

    sput v0, Landroid/telephony/SubscriptionManager;->SERVICE_CAPABILITY_SMS_BITMASK:I

    nop

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->serviceCapabilityToBitmask(I)I

    move-result v0

    sput v0, Landroid/telephony/SubscriptionManager;->SERVICE_CAPABILITY_DATA_BITMASK:I

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sResourcesCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroid/telephony/SubscriptionManager;->mIsForAllUserProfiles:Z

    iput-object p1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static blacklist clearCaches()V
    .locals 1

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->clear()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->clear()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetActiveDataSubscriptionIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->clear()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultSmsSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->clear()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->clear()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetSubIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->clear()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->clear()V

    return-void
.end method

.method public static blacklist disableCaching()V
    .locals 1

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->disableLocal()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->disableLocal()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetActiveDataSubscriptionIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->disableLocal()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultSmsSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->disableLocal()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->disableLocal()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetSubIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->disableLocal()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->disableLocal()V

    return-void
.end method

.method public static blacklist displayNameSourceToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "SIM_PNN"

    return-object v0

    :pswitch_1
    const-string v0, "CARRIER"

    return-object v0

    :pswitch_2
    const-string v0, "USER_INPUT"

    return-object v0

    :pswitch_3
    const-string v0, "SIM_SPN"

    return-object v0

    :pswitch_4
    const-string v0, "CARRIER_ID"

    return-object v0

    :pswitch_5
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static whitelist from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    nop

    const-string/jumbo v0, "telephony_subscription_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method public static whitelist getActiveDataSubscriptionId()I
    .locals 2

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetActiveDataSubscriptionIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->query(Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static blacklist getAllServiceCapabilityBitmasks()I
    .locals 2

    sget v0, Landroid/telephony/SubscriptionManager;->SERVICE_CAPABILITY_VOICE_BITMASK:I

    sget v1, Landroid/telephony/SubscriptionManager;->SERVICE_CAPABILITY_SMS_BITMASK:I

    or-int/2addr v0, v1

    sget v1, Landroid/telephony/SubscriptionManager;->SERVICE_CAPABILITY_DATA_BITMASK:I

    or-int/2addr v0, v1

    return v0
.end method

.method public static greylist-max-o getBooleanSubscriptionProperty(ILjava/lang/String;ZLandroid/content/Context;)Z
    .locals 3

    invoke-static {p3, p0, p1}, Landroid/telephony/SubscriptionManager;->getStringSubscriptionProperty(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string v2, "getBooleanSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_1
    return p2
.end method

.method public static whitelist getDefaultDataSubscriptionId()I
    .locals 2

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->query(Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static whitelist getDefaultSmsSubscriptionId()I
    .locals 2

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultSmsSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->query(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static whitelist getDefaultSubscriptionId()I
    .locals 2

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetDefaultSubIdCacheAsUser:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->query(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static greylist-max-r getDefaultVoicePhoneId()I
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getDefaultVoiceSubscriptionId()I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getDefaultVoiceSubIdAsUser(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public static greylist-max-o getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I
    .locals 3

    invoke-static {p3, p0, p1}, Landroid/telephony/SubscriptionManager;->getStringSubscriptionProperty(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "getIntegerSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_0
    return p2
.end method

.method public static blacklist getLongSubscriptionProperty(ILjava/lang/String;JLandroid/content/Context;)J
    .locals 3

    invoke-static {p4, p0, p1}, Landroid/telephony/SubscriptionManager;->getStringSubscriptionProperty(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v1

    const-string v2, "getLongSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_0
    return-wide p2
.end method

.method private blacklist getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;
    .locals 2

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "netpolicy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method public static greylist-max-p getPhoneId(I)I
    .locals 2

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->query(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static whitelist getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-eqz p2, :cond_0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    sget-object v3, Landroid/telephony/SubscriptionManager;->sResourcesCache:Landroid/util/LruCache;

    monitor-enter v3

    :try_start_0
    sget-object v0, Landroid/telephony/SubscriptionManager;->sResourcesCache:Landroid/util/LruCache;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    monitor-exit v3

    return-object v0

    :cond_1
    monitor-exit v3

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    nop

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    iget v3, v2, Landroid/content/res/Configuration;->mnc:I

    if-nez v3, :cond_4

    const v3, 0xffff

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    :cond_5
    invoke-virtual {p0, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v0, :cond_6

    sget-object v5, Landroid/telephony/SubscriptionManager;->sResourcesCache:Landroid/util/LruCache;

    monitor-enter v5

    :try_start_1
    sget-object v6, Landroid/telephony/SubscriptionManager;->sResourcesCache:Landroid/util/LruCache;

    invoke-virtual {v6, v0, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5

    goto :goto_2

    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    :cond_6
    :goto_2
    return-object v4
.end method

.method public static blacklist getServiceCapabilitiesSet(I)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->serviceCapabilityToBitmask(I)I

    move-result v2

    and-int v3, p0, v2

    if-ne v3, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getSlotIndex(I)I
    .locals 2

    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->query(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static blacklist getStringSubscriptionProperty(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/ISub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getSubId(I)[I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getSubscriptionId(I)I
    .locals 2

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    sget-object v0, Landroid/telephony/SubscriptionManager;->sGetSubIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->query(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static blacklist getUriForSubscriptionId(I)Landroid/net/Uri;
    .locals 2

    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist invalidateSubscriptionManagerServiceCaches()V
    .locals 1

    const-string v0, "cache_key.telephony.subscription_manager_service"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist isSystemProcess()Z
    .locals 2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-p isUsableSubIdValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0x7ffffffe

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isUsableSubscriptionId(I)Z
    .locals 1

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r isValidPhoneId(I)Z
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-p isValidSlotIndex(I)Z
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isValidSubscriptionId(I)Z
    .locals 1

    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$addOnSubscriptionsChangedListener$0(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onAddListenerFailed()V

    return-void
.end method

.method static synthetic blacklist lambda$addSubscriptionsIntoGroup$9(Ljava/lang/Integer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$createSubscriptionGroup$8(Ljava/lang/Integer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$getActiveSubscriptionInfoList$1(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->isSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$getActiveSubscriptionInfoList$2(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->isSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$removeSubscriptionsFromGroup$10(Ljava/lang/Integer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDataRoaming$6(IILcom/android/internal/telephony/ISub;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setDataRoaming(II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDeviceToDeviceStatusSharingContacts$12(Ljava/util/List;ILcom/android/internal/telephony/ISub;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->serializeUriLists(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/android/internal/telephony/ISub;->setDeviceToDeviceStatusSharingContacts(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDeviceToDeviceStatusSharingPreference$11(IILcom/android/internal/telephony/ISub;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setDeviceToDeviceStatusSharing(II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDisplayName$4(Ljava/lang/String;IILcom/android/internal/telephony/ISub;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p3, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNameUsingSrc(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDisplayNumber$5(Ljava/lang/String;ILcom/android/internal/telephony/ISub;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setIconTint$3(IILcom/android/internal/telephony/ISub;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setIconTint(II)I

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$setOpportunistic$7(ZILcom/android/internal/telephony/ISub;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0}, Lcom/android/internal/telephony/ISub;->setOpportunistic(ZILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$setUsageSetting$13(IILcom/android/internal/telephony/ISub;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0}, Lcom/android/internal/telephony/ISub;->setUsageSetting(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SubscriptionManager"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SubscriptionManager"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist phoneNumberSourceToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "IMS"

    return-object v0

    :pswitch_1
    const-string v0, "CARRIER"

    return-object v0

    :pswitch_2
    const-string v0, "UICC"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-p putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "putPhoneIdAndSubIdExtra: no valid subs"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public static greylist-max-r putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V
    .locals 1

    const-string v0, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, p2}, Landroid/telephony/SubscriptionManager;->putSubscriptionIdExtra(Landroid/content/Intent;I)V

    return-void
.end method

.method public static blacklist putSubscriptionIdExtra(Landroid/content/Intent;I)V
    .locals 1

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "subscription"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public static blacklist serializeUriLists(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v2, "serializeUriLists IO exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const-string v1, ""

    return-object v1
.end method

.method public static blacklist serviceCapabilityToBitmask(I)I
    .locals 2

    add-int/lit8 v0, p0, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method public static greylist-max-o setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private blacklist setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I
    .locals 3

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]- fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p3, v1}, Landroid/telephony/SubscriptionManager$CallISubMethodHelper;->callMethod(Lcom/android/internal/telephony/ISub;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public static blacklist subscriptionTypeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "REMOTE_SIM"

    return-object v0

    :pswitch_1
    const-string v0, "LOCAL_SIM"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist usageSettingToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "DATA_CENTRIC"

    return-object v0

    :pswitch_1
    const-string v0, "VOICE_CENTRIC"

    return-object v0

    :pswitch_2
    const-string v0, "DEFAULT"

    return-object v0

    :pswitch_3
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist addOnOpportunisticSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "<unknown>"

    :goto_0
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2, p1}, Landroid/telephony/TelephonyRegistryManager;->addOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public whitelist addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->getCreatorLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/internal/telephony/util/HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/util/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v1, p1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t create handler inside thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " that has not called Looper.prepare()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    :goto_0
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2, p1}, Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOnSubscriptionsChangedListener: pkgname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed to be added  due to TELEPHONY_REGISTRY_SERVICE being unavailable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public greylist-max-o addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "[addSubscriptionInfoRecord]- null iccId"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[addSubscriptionInfoRecord]- invalid slotIndex"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v1
.end method

.method public blacklist addSubscriptionInfoRecord(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    const-string v0, "SubscriptionManager"

    if-nez p1, :cond_0

    const-string v1, "[addSubscriptionInfoRecord]- uniqueId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "[addSubscriptionInfoRecord]- ISub service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISub;->addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    if-gez v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding of subscription didn\'t succeed: error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "successfully added new subscription"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method

.method public whitelist addSubscriptionsIntoGroup(Ljava/util/List;Landroid/os/ParcelUuid;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/ParcelUuid;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "subIdList can\'t be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "groupUuid can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda20;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda20;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, v1, p2, v0}, Lcom/android/internal/telephony/ISub;->addSubscriptionsIntoGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "telephony service is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSubscriptionsIntoGroup RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_1
    return-void
.end method

.method public whitelist canDisablePhysicalSubscription()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->canDisablePhysicalSubscription()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist canManageSubscription(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getAccessRules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x8000000

    :try_start_0
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getAccessRules()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccAccessRule;

    invoke-virtual {v4, v2}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    return v6

    :cond_1
    goto :goto_0

    :cond_2
    return v0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method public blacklist createForAllUserProfiles()Landroid/telephony/SubscriptionManager;
    .locals 3

    new-instance v0, Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/telephony/SubscriptionManager;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public whitelist createSubscriptionGroup(Ljava/util/List;)Landroid/os/ParcelUuid;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/ParcelUuid;"
        }
    .end annotation

    const-string v0, "can\'t create group for null subId list"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    :goto_0
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, v2, v0}, Lcom/android/internal/telephony/ISub;->createSubscriptionGroup([ILjava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    move-object v1, v4

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "telephony service is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSubscriptionGroup RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_1
    return-object v1
.end method

.method public whitelist getAccessibleSubscriptionInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getAccessibleSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public whitelist getActiveSubscriptionIdList()[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getActiveSubscriptionIdList(Z)[I
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->getActiveSubIdList(Z)[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method public whitelist getActiveSubscriptionInfoCount()I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/SubscriptionManager;->mIsForAllUserProfiles:Z

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCount(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public whitelist getActiveSubscriptionInfoCountMax()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCountMax()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public whitelist getActiveSubscriptionInfoForIcc(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "[getActiveSubscriptionInfoForIccIndex]- null iccid"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method public whitelist getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    .locals 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[getActiveSubscriptionInfoForSimSlotIndex]- invalid slotIndex"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method public whitelist getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/SubscriptionManager;->mIsForAllUserProfiles:Z

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/SubscriptionManager;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public blacklist getActiveSubscriptionInfoList(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/SubscriptionManager;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getAllSimSpecificSettingsForBackup()[B
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "getSimSpecificSettings"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_SIM_SPECIFIC_SETTINGS_DATA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public whitelist getAllSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public whitelist getAvailableSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public whitelist getCompleteActiveSubscriptionIdList()[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCompleteActiveSubscriptionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceToDeviceStatusSharingContacts(I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string v1, "d2d_sharing_contacts"

    invoke-static {v0, p1, v1}, Landroid/telephony/SubscriptionManager;->getStringSubscriptionProperty(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :cond_0
    return-object v5

    :catch_0
    move-exception v1

    const-string v2, "getDeviceToDeviceStatusSharingContacts ClassNotFound exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "getDeviceToDeviceStatusSharingContacts IO exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    nop

    :cond_1
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public whitelist getDeviceToDeviceStatusSharingPreference(I)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string v2, "d2d_sharing_status"

    invoke-static {p1, v2, v0, v1}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public whitelist getEnabledSubscriptionId(I)I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->getEnabledSubscriptionId(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public whitelist getOpportunisticSubscriptions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    :goto_0
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3, v0, v1}, Lcom/android/internal/telephony/ISub;->getOpportunisticSubscriptions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    :cond_2
    goto :goto_2

    :catch_0
    move-exception v3

    :goto_2
    if-nez v2, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    :cond_3
    return-object v2
.end method

.method public whitelist getPhoneNumber(I)Ljava/lang/String;
    .locals 3

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ISub;->getPhoneNumberFromFirstAvailableSource(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "subscription service unavailable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPhoneNumber(II)Ljava/lang/String;
    .locals 3

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/ISub;->getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "subscription service unavailable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPreferredDataSubscriptionId()I
    .locals 3

    const v0, 0x7fffffff

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getPreferredDataSubscriptionId()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public blacklist getSelectableSubscriptionInfoList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    if-eq v6, v7, :cond_4

    :cond_3
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public whitelist getSubscriptionIds(I)[I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubscriptionInfoListAssociatedWithUser(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->getSubscriptionInfoListAssociatedWithUser(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "SubscriptionManager"

    const-string v2, "[getSubscriptionInfoListAssociatedWithUser]: subscription service unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getSubscriptionPlans(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation

    nop

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/net/NetworkPolicyManager;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public blacklist getSubscriptionUserHandle(I)Landroid/os/UserHandle;
    .locals 3

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->getSubscriptionUserHandle(I)Landroid/os/UserHandle;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "SubscriptionManager"

    const-string v2, "[getSubscriptionUserHandle]: subscription service unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSubscriptionUserHandle]: Invalid subscriptionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "groupUuid can\'t be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    :goto_0
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3, p1, v0, v1}, Lcom/android/internal/telephony/ISub;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    goto :goto_3

    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "telephony service is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeSubscriptionsFromGroup RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :cond_4
    :goto_3
    if-nez v2, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method public greylist isActiveSubId(I)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ISub;->isActiveSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isActiveSubscriptionId(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isNetworkRoaming(I)Z
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    return v1
.end method

.method public blacklist isSubscriptionAssociatedWithUser(I)Z
    .locals 3

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->isSubscriptionAssociatedWithCallingUser(I)Z

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "subscription service unavailable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isSubscriptionAssociatedWithCallingUser]: Invalid subscriptionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isSubscriptionAssociatedWithUser(ILandroid/os/UserHandle;)Z
    .locals 3

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->isSubscriptionAssociatedWithUser(ILandroid/os/UserHandle;)Z

    move-result v1

    return v1

    :cond_0
    const-string v1, "SubscriptionManager"

    const-string v2, "[isSubscriptionAssociatedWithUser]: subscription service unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isSubscriptionAssociatedWithUser]: Invalid subscriptionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isSubscriptionEnabled(I)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->isSubscriptionEnabled(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method public whitelist removeOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V
    .locals 3

    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    :goto_0
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyRegistryManager;->removeOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V

    :cond_1
    return-void
.end method

.method public whitelist removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "<unknown>"

    :goto_0
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyRegistryManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_2
    return-void
.end method

.method public blacklist removeSubscriptionInfoRecord(Ljava/lang/String;I)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    const-string v0, "SubscriptionManager"

    if-nez p1, :cond_0

    const-string v1, "[addSubscriptionInfoRecord]- uniqueId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "[removeSubscriptionInfoRecord]- ISub service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->removeSubInfo(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v3, "Removal of subscription didn\'t succeed"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "successfully removed subscription"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method

.method public whitelist removeSubscriptionsFromGroup(Ljava/util/List;Landroid/os/ParcelUuid;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/ParcelUuid;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "subIdList can\'t be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "groupUuid can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, v1, p2, v0}, Lcom/android/internal/telephony/ISub;->removeSubscriptionsFromGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "telephony service is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSubscriptionsFromGroup RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_1
    return-void
.end method

.method public whitelist requestEmbeddedSubscriptionInfoListRefresh()V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCardIdForDefaultEuicc()I

    move-result v0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ISub;->requestEmbeddedSubscriptionInfoListRefresh(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestEmbeddedSubscriptionInfoListFresh for card = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public whitelist requestEmbeddedSubscriptionInfoListRefresh(I)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->requestEmbeddedSubscriptionInfoListRefresh(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestEmbeddedSubscriptionInfoListFresh for card = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public whitelist restoreAllSimSpecificSettingsFromBackup([B)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->restoreAllSimSpecificSettingsFromBackup([B)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "subscription service unavailable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist semGetAvailableSubscriptionInfoListWithSelectable(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getSelectableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist semGetPreferredDataSubscriptionId()I
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getPreferredDataSubscriptionId()I

    move-result v0

    return v0
.end method

.method public whitelist semIsSubscriptionEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->isSubscriptionEnabled(I)Z

    move-result v0

    return v0
.end method

.method public whitelist semSetSubscriptionEnabled(IZ)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->setSubscriptionEnabled(IZ)Z

    move-result v0

    return v0
.end method

.method public whitelist setCarrierPhoneNumber(ILjava/lang/String;)V
    .locals 7

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    :cond_0
    if-eqz p2, :cond_2

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    move-object v6, v0

    if-eqz v6, :cond_1

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x2

    move-object v0, v6

    move v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISub;->setPhoneNumber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    nop

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "subscription service unavailable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid number null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r setDataRoaming(II)I
    .locals 2

    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda5;-><init>(II)V

    const-string/jumbo v1, "setDataRoaming"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public whitelist setDefaultDataSubId(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public whitelist setDefaultSmsSubId(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSmsSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public greylist-max-o setDefaultVoiceSubId(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubscriptionId(I)V

    return-void
.end method

.method public whitelist setDefaultVoiceSubscriptionId(I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultVoiceSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public whitelist setDeviceToDeviceStatusSharingContacts(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->serializeUriLists(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2, p1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda8;-><init>(Ljava/util/List;I)V

    const-string/jumbo v2, "setDeviceToDeviceSharingStatus"

    invoke-direct {p0, p1, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    return-void
.end method

.method public whitelist setDeviceToDeviceStatusSharingPreference(II)V
    .locals 2

    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda1;-><init>(II)V

    const-string/jumbo v1, "setDeviceToDeviceSharingStatus"

    invoke-direct {p0, p1, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    return-void
.end method

.method public blacklist setDisplayName(Ljava/lang/String;II)I
    .locals 2

    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1, p2, p3}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda16;-><init>(Ljava/lang/String;II)V

    const-string/jumbo v1, "setDisplayName"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public greylist-max-r setDisplayNumber(Ljava/lang/String;I)I
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "[setDisplayNumber]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda19;

    invoke-direct {v0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda19;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v1, "setDisplayNumber"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public blacklist setGroupOwner(ILjava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->setGroupOwner(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "[setGroupOwner]: subscription service unavailable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public blacklist setIconTint(II)I
    .locals 2

    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2, p1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda4;-><init>(II)V

    const-string/jumbo v1, "setIconTint"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public whitelist setOpportunistic(ZI)Z
    .locals 2

    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/SubscriptionManager;ZI)V

    const-string/jumbo v1, "setOpportunistic"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist setPreferredDataSubscriptionId(IZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/telephony/SubscriptionManager$1;

    invoke-direct {v1, p0, p3, p4}, Landroid/telephony/SubscriptionManager$1;-><init>(Landroid/telephony/SubscriptionManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/ISub;->setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "subscription manager service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreferredDataSubscriptionId RemoteException="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public whitelist setSubscriptionEnabled(IZ)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p1}, Lcom/android/internal/telephony/ISub;->setUiccApplicationsEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setSubscriptionOverrideCongested(IZJ)V
    .locals 6

    nop

    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SubscriptionManager;->setSubscriptionOverrideCongested(IZ[IJ)V

    return-void
.end method

.method public whitelist setSubscriptionOverrideCongested(IZ[IJ)V
    .locals 9

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x2

    move v2, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkPolicyManager;->setSubscriptionOverride(III[IJLjava/lang/String;)V

    return-void
.end method

.method public whitelist setSubscriptionOverrideUnmetered(IZJ)V
    .locals 6

    nop

    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SubscriptionManager;->setSubscriptionOverrideUnmetered(IZ[IJ)V

    return-void
.end method

.method public whitelist setSubscriptionOverrideUnmetered(IZ[IJ)V
    .locals 8

    move v3, p2

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    move v1, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkPolicyManager;->setSubscriptionOverride(III[IJLjava/lang/String;)V

    return-void
.end method

.method public whitelist setSubscriptionPlans(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionPlans(ILjava/util/List;J)V

    return-void
.end method

.method public whitelist setSubscriptionPlans(ILjava/util/List;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/telephony/SubscriptionPlan;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Landroid/telephony/SubscriptionPlan;

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkPolicyManager;->setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V

    return-void
.end method

.method public blacklist setSubscriptionUserHandle(ILandroid/os/UserHandle;)V
    .locals 3

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p1}, Lcom/android/internal/telephony/ISub;->setSubscriptionUserHandle(Landroid/os/UserHandle;I)I

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "[setSubscriptionUserHandle]: subscription service unavailable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSubscriptionUserHandle]: Invalid subscriptionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTransferStatus(II)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->setTransferStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTransferStatus for subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setUiccApplicationsEnabled(IZ)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p1}, Lcom/android/internal/telephony/ISub;->setUiccApplicationsEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method blacklist setUsageSetting(II)V
    .locals 2

    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/SubscriptionManager;II)V

    const-string/jumbo v1, "setUsageSetting"

    invoke-direct {p0, p1, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    return-void
.end method

.method public whitelist switchToSubscription(ILandroid/app/PendingIntent;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "callbackIntent cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/telephony/euicc/EuiccManager;

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/telephony/euicc/EuiccManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(ILandroid/app/PendingIntent;)V

    return-void
.end method
