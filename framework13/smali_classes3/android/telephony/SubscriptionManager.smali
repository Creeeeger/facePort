.class public Landroid/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$CallISubMethodHelper;,
        Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;,
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;,
        Landroid/telephony/SubscriptionManager$PhoneNumberSource;,
        Landroid/telephony/SubscriptionManager$UsageSetting;,
        Landroid/telephony/SubscriptionManager$ProfileClass;,
        Landroid/telephony/SubscriptionManager$DeviceToDeviceStatusSharingPreference;,
        Landroid/telephony/SubscriptionManager$SimDisplayNameSource;,
        Landroid/telephony/SubscriptionManager$SubscriptionType;,
        Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;,
        Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
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

.field public static final blacklist CACHE_KEY_ACTIVE_DATA_SUB_ID_PROPERTY:Ljava/lang/String; = "cache_key.telephony.get_active_data_sub_id"

.field public static final blacklist CACHE_KEY_DEFAULT_DATA_SUB_ID_PROPERTY:Ljava/lang/String; = "cache_key.telephony.get_default_data_sub_id"

.field public static final blacklist CACHE_KEY_DEFAULT_SMS_SUB_ID_PROPERTY:Ljava/lang/String; = "cache_key.telephony.get_default_sms_sub_id"

.field public static final blacklist CACHE_KEY_DEFAULT_SUB_ID_PROPERTY:Ljava/lang/String; = "cache_key.telephony.get_default_sub_id"

.field public static final blacklist CACHE_KEY_SLOT_INDEX_PROPERTY:Ljava/lang/String; = "cache_key.telephony.get_slot_index"

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

.field public static final blacklist DATA_ENABLED_OVERRIDE_RULES:Ljava/lang/String; = "data_enabled_override_rules"

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

.field public static final blacklist IS_OPPORTUNISTIC:Ljava/lang/String; = "is_opportunistic"

.field public static final greylist-max-o IS_REMOVABLE:Ljava/lang/String; = "is_removable"

.field public static final blacklist KEY_SIM_SPECIFIC_SETTINGS_DATA:Ljava/lang/String; = "KEY_SIM_SPECIFIC_SETTINGS_DATA"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field private static final blacklist MAX_CACHE_SIZE:I = 0x4

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

.field public static final blacklist RESTORE_SIM_SPECIFIC_SETTINGS_METHOD_NAME:Ljava/lang/String; = "restoreSimSpecificSettings"

.field public static final blacklist SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist SIM_INFO_SUW_RESTORE_CONTENT_URI:Landroid/net/Uri;

.field public static final greylist-max-o SIM_NOT_INSERTED:I = -0x1

.field public static final greylist-max-o SIM_SLOT_INDEX:Ljava/lang/String; = "sim_id"

.field public static final blacklist SLOT_INDEX_FOR_REMOTE_SIM_SUB:I = -0x1

.field public static final blacklist SUBSCRIPTION_TYPE:Ljava/lang/String; = "subscription_type"

.field public static final whitelist SUBSCRIPTION_TYPE_LOCAL_SIM:I = 0x0

.field public static final whitelist SUBSCRIPTION_TYPE_REMOTE_SIM:I = 0x1

.field public static final greylist-max-o SUB_DEFAULT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.SUB_DEFAULT_CHANGED"

.field public static final blacklist UICC_APPLICATIONS_ENABLED:Ljava/lang/String; = "uicc_applications_enabled"

.field public static final greylist-max-o UNIQUE_KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "_id"

.field public static final blacklist USAGE_SETTING:Ljava/lang/String; = "usage_setting"

.field public static final whitelist USAGE_SETTING_DATA_CENTRIC:I = 0x2

.field public static final whitelist USAGE_SETTING_DEFAULT:I = 0x0

.field public static final whitelist USAGE_SETTING_UNKNOWN:I = -0x1

.field public static final whitelist USAGE_SETTING_VOICE_CENTRIC:I = 0x1

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

.field private static blacklist sActiveDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sDefaultSmsSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sDefaultSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sResourcesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 140
    sget-object v0, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    .line 248
    new-instance v1, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda3;-><init>()V

    .line 251
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cache_key.telephony.get_default_sub_id"

    invoke-direct {v1, v2, v4, v3}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sDefaultSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    .line 253
    new-instance v1, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda4;-><init>()V

    .line 256
    const-string v5, "cache_key.telephony.get_default_data_sub_id"

    invoke-direct {v1, v2, v5, v3}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    .line 258
    new-instance v1, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda5;-><init>()V

    .line 261
    const-string v5, "cache_key.telephony.get_default_sms_sub_id"

    invoke-direct {v1, v2, v5, v3}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sDefaultSmsSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    .line 263
    new-instance v1, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda6;-><init>()V

    .line 266
    const-string v5, "cache_key.telephony.get_active_data_sub_id"

    invoke-direct {v1, v2, v5, v3}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sActiveDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    .line 268
    new-instance v1, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda7;-><init>()V

    .line 271
    const-string v5, "cache_key.telephony.get_slot_index"

    invoke-direct {v1, v2, v5, v3}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    .line 274
    new-instance v1, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda8;-><init>()V

    .line 277
    invoke-direct {v1, v2, v4, v3}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    .line 306
    const-string/jumbo v1, "wfc"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->WFC_ENABLED_CONTENT_URI:Landroid/net/Uri;

    .line 325
    const-string v1, "advanced_calling"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->ADVANCED_CALLING_ENABLED_CONTENT_URI:Landroid/net/Uri;

    .line 343
    const-string/jumbo v1, "wfc_mode"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->WFC_MODE_CONTENT_URI:Landroid/net/Uri;

    .line 360
    const-string/jumbo v1, "wfc_roaming_mode"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->WFC_ROAMING_MODE_CONTENT_URI:Landroid/net/Uri;

    .line 379
    const-string/jumbo v1, "vt_enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->VT_ENABLED_CONTENT_URI:Landroid/net/Uri;

    .line 397
    const-string/jumbo v1, "wfc_roaming_enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->WFC_ROAMING_ENABLED_CONTENT_URI:Landroid/net/Uri;

    .line 410
    const-string v1, "backup_and_restore"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    .line 419
    const-string/jumbo v2, "suw_restore"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->SIM_INFO_SUW_RESTORE_CONTENT_URI:Landroid/net/Uri;

    .line 439
    const-string v1, "cross_sim_calling_enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->CROSS_SIM_ENABLED_CONTENT_URI:Landroid/net/Uri;

    .line 1261
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sResourcesCache:Ljava/util/Map;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1343
    iput-object p1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1344
    return-void
.end method

.method public static blacklist clearCaches()V
    .locals 1

    .line 3902
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->clear()V

    .line 3903
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->clear()V

    .line 3904
    sget-object v0, Landroid/telephony/SubscriptionManager;->sActiveDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->clear()V

    .line 3905
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSmsSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->clear()V

    .line 3906
    sget-object v0, Landroid/telephony/SubscriptionManager;->sSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->clear()V

    .line 3907
    sget-object v0, Landroid/telephony/SubscriptionManager;->sPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->clear()V

    .line 3908
    return-void
.end method

.method public static blacklist disableCaching()V
    .locals 1

    .line 3889
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->disableLocal()V

    .line 3890
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->disableLocal()V

    .line 3891
    sget-object v0, Landroid/telephony/SubscriptionManager;->sActiveDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->disableLocal()V

    .line 3892
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSmsSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->disableLocal()V

    .line 3893
    sget-object v0, Landroid/telephony/SubscriptionManager;->sSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->disableLocal()V

    .line 3894
    sget-object v0, Landroid/telephony/SubscriptionManager;->sPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->disableLocal()V

    .line 3895
    return-void
.end method

.method public static whitelist from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1357
    nop

    .line 1358
    const-string/jumbo v0, "telephony_subscription_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 1357
    return-object v0
.end method

.method public static whitelist getActiveDataSubscriptionId()I
    .locals 2

    .line 3840
    sget-object v0, Landroid/telephony/SubscriptionManager;->sActiveDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static greylist-max-o getBooleanSubscriptionProperty(ILjava/lang/String;ZLandroid/content/Context;)Z
    .locals 3
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .line 2718
    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2719
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2721
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

    .line 2722
    :catch_0
    move-exception v1

    .line 2723
    .local v1, "err":Ljava/lang/NumberFormatException;
    const-string v2, "getBooleanSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2726
    .end local v1    # "err":Ljava/lang/NumberFormatException;
    :cond_1
    return p2
.end method

.method private static blacklist getContactsFromSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 2665
    invoke-static {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2666
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2668
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 2669
    .local v1, "b":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2670
    .local v2, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2671
    .local v3, "ois":Ljava/io/ObjectInputStream;
    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2672
    .local v4, "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2673
    .local v5, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2674
    .local v7, "contact":Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2675
    nop

    .end local v7    # "contact":Ljava/lang/String;
    goto :goto_0

    .line 2676
    :cond_0
    return-object v5

    .line 2679
    .end local v1    # "b":[B
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .end local v4    # "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catch_0
    move-exception v1

    .line 2680
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "getContactsFromSubscriptionProperty ClassNotFound exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 2677
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 2678
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "getContactsFromSubscriptionProperty IO exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2683
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public static whitelist getDefaultDataSubscriptionId()I
    .locals 2

    .line 2370
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static whitelist getDefaultSmsSubscriptionId()I
    .locals 2

    .line 2318
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSmsSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static whitelist getDefaultSubscriptionId()I
    .locals 2

    .line 2230
    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static greylist-max-r getDefaultVoicePhoneId()I
    .locals 1

    .line 2307
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static whitelist getDefaultVoiceSubscriptionId()I
    .locals 3

    .line 2241
    const/4 v0, -0x1

    .line 2244
    .local v0, "subId":I
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2245
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 2246
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultVoiceSubId()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 2250
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 2248
    :catch_0
    move-exception v1

    .line 2253
    :goto_0
    return v0
.end method

.method public static greylist-max-o getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I
    .locals 3
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 2739
    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2740
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2742
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2743
    :catch_0
    move-exception v1

    .line 2744
    .local v1, "err":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "getIntegerSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2747
    .end local v1    # "err":Ljava/lang/NumberFormatException;
    :cond_0
    return p2
.end method

.method public static blacklist getLongSubscriptionProperty(ILjava/lang/String;JLandroid/content/Context;)J
    .locals 3
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # J
    .param p4, "context"    # Landroid/content/Context;

    .line 2760
    invoke-static {p0, p1, p4}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2761
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2763
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 2764
    :catch_0
    move-exception v1

    .line 2765
    .local v1, "err":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "getLongSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2768
    .end local v1    # "err":Ljava/lang/NumberFormatException;
    :cond_0
    return-wide p2
.end method

.method private blacklist getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;
    .locals 2

    .line 1347
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1348
    const-string/jumbo v1, "netpolicy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    .line 1347
    return-object v0
.end method

.method public static greylist-max-p getPhoneId(I)I
    .locals 2
    .param p0, "subId"    # I

    .line 2209
    sget-object v0, Landroid/telephony/SubscriptionManager;->sPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static whitelist getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2785
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "useRootLocale"    # Z

    .line 2801
    const/4 v0, 0x0

    .line 2802
    .local v0, "cacheKey":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Context;Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 2803
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 2804
    sget-object v1, Landroid/telephony/SubscriptionManager;->sResourcesCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2806
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    return-object v1

    .line 2810
    :cond_0
    nop

    .line 2811
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 2813
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 2814
    .local v2, "overrideConfig":Landroid/content/res/Configuration;
    if-eqz v1, :cond_1

    .line 2815
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mcc:I

    .line 2816
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    .line 2817
    iget v3, v2, Landroid/content/res/Configuration;->mnc:I

    if-nez v3, :cond_2

    .line 2818
    const v3, 0xffff

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    .line 2819
    const/4 v0, 0x0

    goto :goto_0

    .line 2822
    :cond_1
    const/4 v0, 0x0

    .line 2825
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 2826
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 2834
    :cond_3
    invoke-virtual {p0, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    .line 2835
    .local v3, "newContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2837
    .local v4, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_4

    .line 2839
    sget-object v5, Landroid/telephony/SubscriptionManager;->sResourcesCache:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2841
    :cond_4
    return-object v4
.end method

.method public static greylist-max-o getSimStateForSlotIndex(I)I
    .locals 3
    .param p0, "slotIndex"    # I

    .line 2604
    const/4 v0, 0x0

    .line 2607
    .local v0, "simState":I
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2608
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 2609
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSimStateForSlotIndex(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 2612
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 2611
    :catch_0
    move-exception v1

    .line 2614
    :goto_0
    return v0
.end method

.method public static whitelist getSlotIndex(I)I
    .locals 2
    .param p0, "subscriptionId"    # I

    .line 2170
    sget-object v0, Landroid/telephony/SubscriptionManager;->sSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static greylist getSubId(I)[I
    .locals 3
    .param p0, "slotIndex"    # I

    .line 2187
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2188
    const-string v0, "[getSubId]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2189
    const/4 v0, 0x0

    return-object v0

    .line 2192
    :cond_0
    const/4 v0, 0x0

    .line 2195
    .local v0, "subId":[I
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2196
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 2197
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSubId(I)[I

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 2201
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    goto :goto_0

    .line 2199
    :catch_0
    move-exception v1

    .line 2203
    :goto_0
    return-object v0
.end method

.method private static greylist-max-o getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 2695
    const/4 v0, 0x0

    .line 2697
    .local v0, "resultValue":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2698
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 2699
    nop

    .line 2700
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2699
    invoke-interface {v1, p0, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 2704
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 2702
    :catch_0
    move-exception v1

    .line 2705
    :goto_0
    return-object v0
.end method

.method public static blacklist getUriForSubscriptionId(I)Landroid/net/Uri;
    .locals 2
    .param p0, "subscriptionId"    # I

    .line 287
    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist invalidateActiveDataSubIdCaches()V
    .locals 1

    .line 3875
    const-string v0, "cache_key.telephony.get_active_data_sub_id"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3876
    return-void
.end method

.method public static blacklist invalidateDefaultDataSubIdCaches()V
    .locals 1

    .line 3865
    const-string v0, "cache_key.telephony.get_default_data_sub_id"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3866
    return-void
.end method

.method public static blacklist invalidateDefaultSmsSubIdCaches()V
    .locals 1

    .line 3870
    const-string v0, "cache_key.telephony.get_default_sms_sub_id"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3871
    return-void
.end method

.method public static blacklist invalidateDefaultSubIdCaches()V
    .locals 1

    .line 3860
    const-string v0, "cache_key.telephony.get_default_sub_id"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3861
    return-void
.end method

.method public static blacklist invalidateSlotIndexCaches()V
    .locals 1

    .line 3880
    const-string v0, "cache_key.telephony.get_slot_index"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3881
    return-void
.end method

.method private blacklist isSystemProcess()Z
    .locals 2

    .line 3417
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
    .param p0, "subId"    # I

    .line 2481
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
    .param p0, "subscriptionId"    # I

    .line 2471
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r isValidPhoneId(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .line 2493
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
    .param p0, "slotIndex"    # I

    .line 2487
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
    .param p0, "subscriptionId"    # I

    .line 2456
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
    .param p0, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1411
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onAddListenerFailed()V

    return-void
.end method

.method static synthetic blacklist lambda$addSubscriptionsIntoGroup$8(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 3397
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$createSubscriptionGroup$7(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 3348
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$removeSubscriptionsFromGroup$9(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 3449
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDataRoaming$5(IILcom/android/internal/telephony/ISub;)I
    .locals 1
    .param p0, "roaming"    # I
    .param p1, "subId"    # I
    .param p2, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2158
    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setDataRoaming(II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDeviceToDeviceStatusSharingContacts$11(Ljava/util/List;ILcom/android/internal/telephony/ISub;)I
    .locals 1
    .param p0, "contacts"    # Ljava/util/List;
    .param p1, "subscriptionId"    # I
    .param p2, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3762
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->serializeUriLists(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/android/internal/telephony/ISub;->setDeviceToDeviceStatusSharingContacts(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDeviceToDeviceStatusSharingPreference$10(IILcom/android/internal/telephony/ISub;)I
    .locals 1
    .param p0, "sharing"    # I
    .param p1, "subscriptionId"    # I
    .param p2, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3729
    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setDeviceToDeviceStatusSharing(II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDisplayName$3(Ljava/lang/String;IILcom/android/internal/telephony/ISub;)I
    .locals 1
    .param p0, "displayName"    # Ljava/lang/String;
    .param p1, "subId"    # I
    .param p2, "nameSource"    # I
    .param p3, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2125
    invoke-interface {p3, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNameUsingSrc(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setDisplayNumber$4(Ljava/lang/String;ILcom/android/internal/telephony/ISub;)I
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "subId"    # I
    .param p2, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2143
    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$setIconTint$2(IILcom/android/internal/telephony/ISub;)I
    .locals 1
    .param p0, "tint"    # I
    .param p1, "subId"    # I
    .param p2, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2105
    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setIconTint(II)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 2213
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 2217
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    return-void
.end method

.method public static greylist-max-p putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .line 2499
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 2500
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 2501
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {p0, p1, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    goto :goto_0

    .line 2503
    :cond_0
    const-string/jumbo v1, "putPhoneIdAndSubIdExtra: no valid subs"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2504
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2505
    const-string v1, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2507
    :goto_0
    return-void
.end method

.method public static greylist-max-r putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .line 2513
    const-string v0, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2514
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2515
    invoke-static {p0, p2}, Landroid/telephony/SubscriptionManager;->putSubscriptionIdExtra(Landroid/content/Intent;I)V

    .line 2516
    return-void
.end method

.method public static blacklist putSubscriptionIdExtra(Landroid/content/Intent;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "subId"    # I

    .line 3854
    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3855
    const-string/jumbo v0, "subscription"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3856
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

    .line 2640
    .local p0, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2641
    .local v0, "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 2642
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2643
    .end local v2    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 2645
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2646
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2647
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2648
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 2649
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 2650
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .line 2651
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "serializeUriLists IO exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2653
    .end local v1    # "e":Ljava/io/IOException;
    const-string v1, ""

    return-object v1
.end method

.method public static greylist-max-o setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "propValue"    # Ljava/lang/String;

    .line 2626
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2627
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 2628
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2632
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 2630
    :catch_0
    move-exception v0

    .line 2633
    :goto_0
    return-void
.end method

.method private blacklist setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "helper"    # Landroid/telephony/SubscriptionManager$CallISubMethodHelper;

    .line 3810
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3811
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

    .line 3812
    const/4 v0, -0x1

    return v0

    .line 3815
    :cond_0
    const/4 v0, 0x0

    .line 3818
    .local v0, "result":I
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 3819
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 3820
    invoke-interface {p3, v1}, Landroid/telephony/SubscriptionManager$CallISubMethodHelper;->callMethod(Lcom/android/internal/telephony/ISub;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 3824
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    goto :goto_0

    .line 3822
    :catch_0
    move-exception v1

    .line 3826
    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist addOnOpportunisticSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    .line 1477
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 1481
    :cond_0
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "<unknown>"

    .line 1489
    .local v0, "pkgName":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1490
    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    .line 1491
    .local v1, "telephonyRegistryManager":Landroid/telephony/TelephonyRegistryManager;
    if-eqz v1, :cond_2

    .line 1492
    invoke-virtual {v1, p2, p1}, Landroid/telephony/TelephonyRegistryManager;->addOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    .line 1495
    :cond_2
    return-void

    .line 1478
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "telephonyRegistryManager":Landroid/telephony/TelephonyRegistryManager;
    :cond_3
    :goto_1
    return-void
.end method

.method public whitelist addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1376
    if-nez p1, :cond_0

    return-void

    .line 1377
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->-$$Nest$fgetmExecutor(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)Lcom/android/internal/telephony/util/HandlerExecutor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1378
    return-void
.end method

.method public whitelist addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1394
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    .line 1401
    .local v0, "pkgName":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1402
    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    .line 1403
    .local v1, "telephonyRegistryManager":Landroid/telephony/TelephonyRegistryManager;
    if-eqz v1, :cond_1

    .line 1404
    invoke-virtual {v1, p2, p1}, Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    .line 1409
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

    .line 1411
    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1413
    :goto_1
    return-void
.end method

.method public greylist-max-o addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotIndex"    # I

    .line 2004
    if-nez p1, :cond_0

    .line 2005
    const-string v0, "[addSubscriptionInfoRecord]- null iccId"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2007
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2008
    const-string v0, "[addSubscriptionInfoRecord]- invalid slotIndex"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2011
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2014
    return-object v1
.end method

.method public blacklist addSubscriptionInfoRecord(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "slotIndex"    # I
    .param p4, "subscriptionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2036
    const-string v0, "SubscriptionManager"

    if-nez p1, :cond_0

    .line 2037
    const-string v1, "[addSubscriptionInfoRecord]- uniqueId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    return-void

    .line 2042
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2043
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-nez v1, :cond_1

    .line 2044
    const-string v2, "[addSubscriptionInfoRecord]- ISub service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    return-void

    .line 2047
    :cond_1
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISub;->addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    .line 2048
    .local v2, "result":I
    if-gez v2, :cond_2

    .line 2049
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

    .line 2051
    :cond_2
    const-string/jumbo v0, "successfully added new subscription"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2055
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":I
    :goto_0
    goto :goto_1

    .line 2053
    :catch_0
    move-exception v0

    .line 2056
    :goto_1
    return-void
.end method

.method public whitelist addSubscriptionsIntoGroup(Ljava/util/List;Landroid/os/ParcelUuid;)V
    .locals 5
    .param p2, "groupUuid"    # Landroid/os/ParcelUuid;
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

    .line 3390
    .local p1, "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v0, "subIdList can\'t be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3391
    const-string/jumbo v0, "groupUuid can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3392
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    .line 3397
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 3400
    .local v1, "subIdArray":[I
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v2

    .line 3401
    .local v2, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v2, :cond_1

    .line 3402
    invoke-interface {v2, v1, p2, v0}, Lcom/android/internal/telephony/ISub;->addSubscriptionsIntoGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    goto :goto_1

    .line 3404
    :cond_1
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3413
    .end local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    :goto_1
    goto :goto_2

    .line 3405
    .restart local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "telephony service is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pkgForDebug":Ljava/lang/String;
    .end local v1    # "subIdArray":[I
    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p2    # "groupUuid":Landroid/os/ParcelUuid;
    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3408
    .end local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    .restart local v1    # "subIdArray":[I
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p2    # "groupUuid":Landroid/os/ParcelUuid;
    :catch_0
    move-exception v2

    .line 3409
    .local v2, "ex":Landroid/os/RemoteException;
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

    .line 3410
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3411
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3414
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    return-void
.end method

.method public greylist-max-o allDefaultsSelected()Z
    .locals 2

    .line 2432
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2433
    return v1

    .line 2435
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2436
    return v1

    .line 2438
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2439
    return v1

    .line 2441
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist canDisablePhysicalSubscription()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3680
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 3681
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 3682
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 3678
    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 3683
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 3684
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->canDisablePhysicalSubscription()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 3688
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 3686
    :catch_0
    move-exception v0

    .line 3690
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist canManageSubscription(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .line 3099
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3119
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getAllAccessRules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 3122
    :cond_0
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3125
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x8000000

    :try_start_0
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3130
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 3131
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getAllAccessRules()Ljava/util/List;

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

    .line 3132
    .local v4, "rule":Landroid/telephony/UiccAccessRule;
    invoke-virtual {v4, v2}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 3134
    return v6

    .line 3136
    .end local v4    # "rule":Landroid/telephony/UiccAccessRule;
    :cond_1
    goto :goto_0

    .line 3137
    :cond_2
    return v0

    .line 3127
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 3128
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
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

    .line 3129
    return v0

    .line 3120
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :goto_1
    return v0
.end method

.method public greylist-max-o clearSubscriptionInfo()V
    .locals 1

    .line 2418
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2419
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 2420
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearSubInfo()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2424
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 2422
    :catch_0
    move-exception v0

    .line 2426
    :goto_0
    return-void
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

    .line 3341
    .local p1, "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "can\'t create group for null subId list"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3342
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    .line 3347
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 3348
    .local v1, "groupUuid":Landroid/os/ParcelUuid;
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda15;

    invoke-direct {v3}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda15;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    .line 3350
    .local v2, "subIdArray":[I
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v3

    .line 3351
    .local v3, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v3, :cond_1

    .line 3352
    invoke-interface {v3, v2, v0}, Lcom/android/internal/telephony/ISub;->createSubscriptionGroup([ILjava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    move-object v1, v4

    goto :goto_1

    .line 3354
    :cond_1
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3363
    .end local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    :goto_1
    goto :goto_2

    .line 3355
    .restart local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "telephony service is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pkgForDebug":Ljava/lang/String;
    .end local v1    # "groupUuid":Landroid/os/ParcelUuid;
    .end local v2    # "subIdArray":[I
    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3358
    .end local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    .restart local v1    # "groupUuid":Landroid/os/ParcelUuid;
    .restart local v2    # "subIdArray":[I
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v3

    .line 3359
    .local v3, "ex":Landroid/os/RemoteException;
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

    .line 3360
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3361
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3365
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_2
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

    .line 1852
    const/4 v0, 0x0

    .line 1855
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1856
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1857
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getAccessibleSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1861
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1859
    :catch_0
    move-exception v1

    .line 1862
    :goto_0
    return-object v0
.end method

.method public whitelist getActiveSubscriptionIdList()[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2528
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getActiveSubscriptionIdList(Z)[I
    .locals 2
    .param p1, "visibleOnly"    # Z

    .line 2556
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2557
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 2558
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->getActiveSubIdList(Z)[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2559
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    return-object v1

    .line 2563
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v1    # "subId":[I
    :cond_0
    goto :goto_0

    .line 2561
    :catch_0
    move-exception v0

    .line 2565
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "subId"    # I

    .line 1534
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1538
    const/4 v0, 0x0

    return-object v0

    .line 1541
    :cond_0
    const/4 v0, 0x0

    .line 1544
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1545
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 1546
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1547
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1546
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1551
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    goto :goto_0

    .line 1549
    :catch_0
    move-exception v1

    .line 1553
    :goto_0
    return-object v0
.end method

.method public whitelist getActiveSubscriptionInfoCount()I
    .locals 4

    .line 1960
    const/4 v0, 0x0

    .line 1963
    .local v0, "result":I
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1964
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1965
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1966
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1965
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1970
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1968
    :catch_0
    move-exception v1

    .line 1972
    :goto_0
    return v0
.end method

.method public whitelist getActiveSubscriptionInfoCountMax()I
    .locals 3

    .line 1981
    const/4 v0, 0x0

    .line 1984
    .local v0, "result":I
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1985
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1986
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCountMax()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1990
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1988
    :catch_0
    move-exception v1

    .line 1992
    :goto_0
    return v0
.end method

.method public whitelist getActiveSubscriptionInfoForIcc(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1569
    if-nez p1, :cond_0

    .line 1570
    const-string v0, "[getActiveSubscriptionInfoForIccIndex]- null iccid"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1571
    const/4 v0, 0x0

    return-object v0

    .line 1574
    :cond_0
    const/4 v0, 0x0

    .line 1577
    .local v0, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1578
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 1579
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1580
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1579
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1584
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    goto :goto_0

    .line 1582
    :catch_0
    move-exception v1

    .line 1586
    :goto_0
    return-object v0
.end method

.method public whitelist getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "slotIndex"    # I

    .line 1603
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1604
    const-string v0, "[getActiveSubscriptionInfoForSimSlotIndex]- invalid slotIndex"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1605
    const/4 v0, 0x0

    return-object v0

    .line 1608
    :cond_0
    const/4 v0, 0x0

    .line 1611
    .local v0, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1612
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_1

    .line 1613
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1614
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1613
    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1618
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    goto :goto_0

    .line 1616
    :catch_0
    move-exception v1

    .line 1620
    :goto_0
    return-object v0
.end method

.method public whitelist getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 1679
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getActiveSubscriptionInfoList(Z)Ljava/util/List;
    .locals 4
    .param p1, "userVisibleOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 1719
    const/4 v0, 0x0

    .line 1722
    .local v0, "activeList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1723
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1724
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1725
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1724
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1729
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1727
    :catch_0
    move-exception v1

    .line 1731
    :goto_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 1734
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/SubscriptionManager;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1735
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1734
    return-object v1

    .line 1732
    :cond_2
    :goto_1
    return-object v0
.end method

.method public whitelist getAllSimSpecificSettingsForBackup()[B
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3921
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "getSimSpecificSettings"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3924
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "KEY_SIM_SPECIFIC_SETTINGS_DATA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public greylist getAllSubscriptionInfoCount()I
    .locals 4

    .line 1931
    const/4 v0, 0x0

    .line 1934
    .local v0, "result":I
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1935
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1936
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1937
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1936
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getAllSubInfoCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1941
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1939
    :catch_0
    move-exception v1

    .line 1943
    :goto_0
    return v0
.end method

.method public greylist getAllSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 1633
    const/4 v0, 0x0

    .line 1636
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1637
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1638
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1639
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1638
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1643
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1641
    :catch_0
    move-exception v1

    .line 1645
    :goto_0
    if-nez v0, :cond_1

    .line 1646
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1648
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

    .line 1770
    const/4 v0, 0x0

    .line 1773
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1774
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1775
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1776
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 1775
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1780
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1778
    :catch_0
    move-exception v1

    .line 1781
    :goto_0
    return-object v0
.end method

.method public whitelist getCompleteActiveSubscriptionIdList()[I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2546
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCompleteActiveSubscriptionInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 1704
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    .line 1706
    .local v0, "completeList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_0

    .line 1707
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1709
    :cond_0
    return-object v0
.end method

.method public greylist getDefaultDataPhoneId()I
    .locals 1

    .line 2412
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public greylist getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 2406
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getDefaultSmsPhoneId()I
    .locals 1

    .line 2359
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 2353
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 2301
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceToDeviceStatusSharingContacts(I)Ljava/util/List;
    .locals 2
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 3776
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string v1, "d2d_sharing_contacts"

    invoke-static {p1, v1, v0}, Landroid/telephony/SubscriptionManager;->getContactsFromSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceToDeviceStatusSharingPreference(I)I
    .locals 3
    .param p1, "subscriptionId"    # I

    .line 3742
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string v1, "d2d_sharing_status"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public whitelist getEnabledSubscriptionId(I)I
    .locals 3
    .param p1, "slotIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3789
    const/4 v0, -0x1

    .line 3792
    .local v0, "subId":I
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 3793
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 3794
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->getEnabledSubscriptionId(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 3798
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 3796
    :catch_0
    move-exception v1

    .line 3801
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

    .line 3238
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    .line 3239
    .local v0, "contextPkg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 3240
    .local v1, "contextAttributionTag":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .line 3243
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v3

    .line 3244
    .local v3, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v3, :cond_2

    .line 3245
    invoke-interface {v3, v0, v1}, Lcom/android/internal/telephony/ISub;->getOpportunisticSubscriptions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 3250
    .end local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2
    goto :goto_2

    .line 3248
    :catch_0
    move-exception v3

    .line 3252
    :goto_2
    if-nez v2, :cond_3

    .line 3253
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 3256
    :cond_3
    return-object v2
.end method

.method public whitelist getPhoneNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscriptionId"    # I

    .line 4069
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 4070
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 4073
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4074
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 4075
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 4076
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 4075
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ISub;->getPhoneNumberFromFirstAvailableSource(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4078
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "subscription service unavailable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subscriptionId":I
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4080
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subscriptionId":I
    :catch_0
    move-exception v0

    .line 4081
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getPhoneNumber(II)Ljava/lang/String;
    .locals 3
    .param p1, "subscriptionId"    # I
    .param p2, "source"    # I

    .line 4017
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 4018
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 4020
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 4023
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4026
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4027
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_3

    .line 4028
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 4029
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 4028
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/ISub;->getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4031
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "subscription service unavailable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subscriptionId":I
    .end local p2    # "source":I
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4033
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subscriptionId":I
    .restart local p2    # "source":I
    :catch_0
    move-exception v0

    .line 4034
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPreferredDataSubscriptionId()I
    .locals 3

    .line 3210
    const v0, 0x7fffffff

    .line 3212
    .local v0, "preferredSubId":I
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 3213
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 3214
    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getPreferredDataSubscriptionId()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 3218
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 3216
    :catch_0
    move-exception v1

    .line 3220
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

    .line 3552
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 3553
    .local v0, "availableList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_0

    .line 3554
    const/4 v1, 0x0

    return-object v1

    .line 3559
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3560
    .local v1, "selectableList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3562
    .local v2, "groupMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/ParcelUuid;Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 3565
    .local v4, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {p0, v4}, Landroid/telephony/SubscriptionManager;->isSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 3567
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v5

    .line 3568
    .local v5, "groupUuid":Landroid/os/ParcelUuid;
    if-nez v5, :cond_2

    .line 3570
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3571
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3572
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 3573
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    if-eq v6, v7, :cond_4

    .line 3576
    :cond_3
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3577
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3578
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3581
    .end local v4    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "groupUuid":Landroid/os/ParcelUuid;
    :cond_4
    :goto_1
    goto :goto_0

    .line 3582
    :cond_5
    return-object v1
.end method

.method public whitelist getSubscriptionIds(I)[I
    .locals 1
    .param p1, "slotIndex"    # I

    .line 2181
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSubscriptionPlans(I)Ljava/util/List;
    .locals 2
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation

    .line 2893
    nop

    .line 2894
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/net/NetworkPolicyManager;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    .line 2895
    .local v0, "subscriptionPlans":[Landroid/telephony/SubscriptionPlan;
    if-nez v0, :cond_0

    .line 2896
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2895
    :goto_0
    return-object v1
.end method

.method public whitelist getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;
    .locals 6
    .param p1, "groupUuid"    # Landroid/os/ParcelUuid;
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

    .line 3488
    const-string/jumbo v0, "groupUuid can\'t be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3489
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    .line 3490
    .local v0, "contextPkg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 3495
    .local v1, "contextAttributionTag":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x0

    .line 3497
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v3

    .line 3498
    .local v3, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v3, :cond_2

    .line 3499
    invoke-interface {v3, p1, v0, v1}, Lcom/android/internal/telephony/ISub;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    goto :goto_2

    .line 3502
    :cond_2
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3511
    .end local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    :goto_2
    goto :goto_3

    .line 3503
    .restart local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "telephony service is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "contextPkg":Ljava/lang/String;
    .end local v1    # "contextAttributionTag":Ljava/lang/String;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "groupUuid":Landroid/os/ParcelUuid;
    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3506
    .end local v3    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local v0    # "contextPkg":Ljava/lang/String;
    .restart local v1    # "contextAttributionTag":Ljava/lang/String;
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "groupUuid":Landroid/os/ParcelUuid;
    :catch_0
    move-exception v3

    .line 3507
    .local v3, "ex":Landroid/os/RemoteException;
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

    .line 3508
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3509
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3513
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_4
    :goto_3
    return-object v2
.end method

.method public greylist isActiveSubId(I)Z
    .locals 3
    .param p1, "subId"    # I

    .line 2866
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2867
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 2868
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 2869
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2868
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ISub;->isActiveSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2872
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 2871
    :catch_0
    move-exception v0

    .line 2873
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isActiveSubscriptionId(I)Z
    .locals 1
    .param p1, "subscriptionId"    # I

    .line 2855
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isNetworkRoaming(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 2578
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2579
    .local v0, "phoneId":I
    if-gez v0, :cond_0

    .line 2581
    const/4 v1, 0x0

    return v1

    .line 2583
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    return v1
.end method

.method public whitelist isSubscriptionEnabled(I)Z
    .locals 2
    .param p1, "subscriptionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3703
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 3704
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 3705
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->isSubscriptionEnabled(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 3709
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 3707
    :catch_0
    move-exception v0

    .line 3711
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z
    .locals 4
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .line 3528
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3530
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 3534
    :cond_1
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 3535
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3536
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v0, v2

    .line 3537
    .local v0, "hasCarrierPrivilegePermission":Z
    :cond_3
    return v0

    .line 3530
    .end local v0    # "hasCarrierPrivilegePermission":Z
    :cond_4
    :goto_0
    return v2
.end method

.method synthetic blacklist lambda$getActiveSubscriptionInfoList$1$android-telephony-SubscriptionManager(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .line 1734
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->isSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$setOpportunistic$6$android-telephony-SubscriptionManager(ZILcom/android/internal/telephony/ISub;)I
    .locals 1
    .param p1, "opportunistic"    # Z
    .param p2, "subId"    # I
    .param p3, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3303
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 3304
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3303
    invoke-interface {p3, p1, p2, v0}, Lcom/android/internal/telephony/ISub;->setOpportunistic(ZILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$setUsageSetting$12$android-telephony-SubscriptionManager(IILcom/android/internal/telephony/ISub;)I
    .locals 1
    .param p1, "usageSetting"    # I
    .param p2, "subscriptionId"    # I
    .param p3, "iSub"    # Lcom/android/internal/telephony/ISub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4148
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 4149
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4148
    invoke-interface {p3, p1, p2, v0}, Lcom/android/internal/telephony/ISub;->setUsageSetting(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist removeOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    .line 1507
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    .line 1513
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1514
    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    .line 1515
    .local v1, "telephonyRegistryManager":Landroid/telephony/TelephonyRegistryManager;
    if-eqz v1, :cond_1

    .line 1516
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyRegistryManager;->removeOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V

    .line 1518
    :cond_1
    return-void
.end method

.method public whitelist removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1423
    if-nez p1, :cond_0

    return-void

    .line 1424
    :cond_0
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "<unknown>"

    .line 1431
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 1432
    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    .line 1433
    .local v1, "telephonyRegistryManager":Landroid/telephony/TelephonyRegistryManager;
    if-eqz v1, :cond_2

    .line 1434
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyRegistryManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1436
    :cond_2
    return-void
.end method

.method public blacklist removeSubscriptionInfoRecord(Ljava/lang/String;I)V
    .locals 5
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "subscriptionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2072
    const-string v0, "SubscriptionManager"

    if-nez p1, :cond_0

    .line 2073
    const-string v1, "[addSubscriptionInfoRecord]- uniqueId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    return-void

    .line 2078
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 2079
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-nez v1, :cond_1

    .line 2080
    const-string v2, "[removeSubscriptionInfoRecord]- ISub service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    return-void

    .line 2083
    :cond_1
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->removeSubInfo(Ljava/lang/String;I)I

    move-result v2

    .line 2084
    .local v2, "result":I
    if-gez v2, :cond_2

    .line 2085
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removal of subscription didn\'t succeed: error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2087
    :cond_2
    const-string/jumbo v0, "successfully removed subscription"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2091
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v2    # "result":I
    :goto_0
    goto :goto_1

    .line 2089
    :catch_0
    move-exception v0

    .line 2092
    :goto_1
    return-void
.end method

.method public whitelist removeSubscriptionsFromGroup(Ljava/util/List;Landroid/os/ParcelUuid;)V
    .locals 5
    .param p2, "groupUuid"    # Landroid/os/ParcelUuid;
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

    .line 3442
    .local p1, "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v0, "subIdList can\'t be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3443
    const-string/jumbo v0, "groupUuid can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3444
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    .line 3449
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 3452
    .local v1, "subIdArray":[I
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v2

    .line 3453
    .local v2, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v2, :cond_1

    .line 3454
    invoke-interface {v2, v1, p2, v0}, Lcom/android/internal/telephony/ISub;->removeSubscriptionsFromGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    goto :goto_1

    .line 3456
    :cond_1
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3465
    .end local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    :goto_1
    goto :goto_2

    .line 3457
    .restart local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "telephony service is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pkgForDebug":Ljava/lang/String;
    .end local v1    # "subIdArray":[I
    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p2    # "groupUuid":Landroid/os/ParcelUuid;
    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3460
    .end local v2    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    .restart local v1    # "subIdArray":[I
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p2    # "groupUuid":Landroid/os/ParcelUuid;
    :catch_0
    move-exception v2

    .line 3461
    .local v2, "ex":Landroid/os/RemoteException;
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

    .line 3462
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3463
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3466
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    return-void
.end method

.method public whitelist requestEmbeddedSubscriptionInfoListRefresh()V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1882
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCardIdForDefaultEuicc()I

    move-result v0

    .line 1884
    .local v0, "cardId":I
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 1885
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 1886
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ISub;->requestEmbeddedSubscriptionInfoListRefresh(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1890
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1888
    :catch_0
    move-exception v1

    .line 1889
    .local v1, "ex":Landroid/os/RemoteException;
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

    .line 1891
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist requestEmbeddedSubscriptionInfoListRefresh(I)V
    .locals 3
    .param p1, "cardId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1913
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1914
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1915
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->requestEmbeddedSubscriptionInfoListRefresh(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1919
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 1917
    :catch_0
    move-exception v0

    .line 1918
    .local v0, "ex":Landroid/os/RemoteException;
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

    .line 1920
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist restoreAllSimSpecificSettingsFromBackup([B)V
    .locals 5
    .param p1, "data"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3969
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3970
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "KEY_SIM_SPECIFIC_SETTINGS_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3971
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "restoreSimSpecificSettings"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3975
    return-void
.end method

.method public blacklist restoreSimSpecificSettingsForIccIdFromBackup(Ljava/lang/String;)V
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;

    .line 3944
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "restoreSimSpecificSettings"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3948
    return-void
.end method

.method public whitelist semGetAvailableSubscriptionInfoListWithSelectable(Z)Ljava/util/List;
    .locals 1
    .param p1, "selectable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 1819
    if-eqz p1, :cond_0

    .line 1820
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getSelectableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1822
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist semPhoneAccountIsRegistered(I)V
    .locals 1
    .param p1, "subId"    # I

    .line 4158
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 4159
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 4160
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->phoneAccountIsRegistered(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4163
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 4162
    :catch_0
    move-exception v0

    .line 4164
    :goto_0
    return-void
.end method

.method public whitelist setCarrierPhoneNumber(ILjava/lang/String;)V
    .locals 7
    .param p1, "subscriptionId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 4105
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 4106
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    .line 4108
    :cond_0
    if-eqz p2, :cond_2

    .line 4112
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    move-object v6, v0

    .line 4113
    .local v6, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v6, :cond_1

    .line 4114
    const/4 v2, 0x2

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 4115
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 4114
    move-object v0, v6

    move v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISub;->setPhoneNumber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4121
    .end local v6    # "iSub":Lcom/android/internal/telephony/ISub;
    nop

    .line 4122
    return-void

    .line 4117
    .restart local v6    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "subscription service unavailable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/SubscriptionManager;
    .end local p1    # "subscriptionId":I
    .end local p2    # "number":Ljava/lang/String;
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4119
    .end local v6    # "iSub":Lcom/android/internal/telephony/ISub;
    .restart local p0    # "this":Landroid/telephony/SubscriptionManager;
    .restart local p1    # "subscriptionId":I
    .restart local p2    # "number":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 4120
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 4109
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid number null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r setDataRoaming(II)I
    .locals 2
    .param p1, "roaming"    # I
    .param p2, "subId"    # I

    .line 2157
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda1;-><init>(II)V

    const-string/jumbo v1, "setDataRoaming"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public whitelist setDefaultDataSubId(I)V
    .locals 1
    .param p1, "subscriptionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2387
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2388
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 2389
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2393
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 2391
    :catch_0
    move-exception v0

    .line 2394
    :goto_0
    return-void
.end method

.method public whitelist setDefaultSmsSubId(I)V
    .locals 1
    .param p1, "subscriptionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2335
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2336
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 2337
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSmsSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2341
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 2339
    :catch_0
    move-exception v0

    .line 2340
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2342
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public greylist-max-o setDefaultVoiceSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .line 2288
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubscriptionId(I)V

    .line 2289
    return-void
.end method

.method public whitelist setDefaultVoiceSubscriptionId(I)V
    .locals 1
    .param p1, "subscriptionId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2273
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 2274
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 2275
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultVoiceSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2279
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 2277
    :catch_0
    move-exception v0

    .line 2280
    :goto_0
    return-void
.end method

.method public whitelist setDeviceToDeviceStatusSharingContacts(ILjava/util/List;)V
    .locals 3
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 3756
    .local p2, "contacts":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->serializeUriLists(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 3761
    .local v0, "contactString":Ljava/lang/String;
    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p2, p1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda10;-><init>(Ljava/util/List;I)V

    const-string/jumbo v2, "setDeviceToDeviceSharingStatus"

    invoke-direct {p0, p1, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    .line 3764
    return-void
.end method

.method public whitelist setDeviceToDeviceStatusSharingPreference(II)V
    .locals 2
    .param p1, "subscriptionId"    # I
    .param p2, "sharing"    # I

    .line 3728
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda18;

    invoke-direct {v0, p2, p1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda18;-><init>(II)V

    const-string/jumbo v1, "setDeviceToDeviceSharingStatus"

    invoke-direct {p0, p1, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    .line 3730
    return-void
.end method

.method public blacklist setDisplayName(Ljava/lang/String;II)I
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "nameSource"    # I

    .line 2124
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p2, p3}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;II)V

    const-string/jumbo v1, "setDisplayName"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public greylist-max-r setDisplayNumber(Ljava/lang/String;I)I
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 2138
    if-nez p1, :cond_0

    .line 2139
    const-string v0, "[setDisplayNumber]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2140
    const/4 v0, -0x1

    return v0

    .line 2142
    :cond_0
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v1, "setDisplayNumber"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public blacklist setIconTint(II)I
    .locals 2
    .param p1, "tint"    # I
    .param p2, "subId"    # I

    .line 2104
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda13;-><init>(II)V

    const-string/jumbo v1, "setIconTint"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public whitelist setOpportunistic(ZI)Z
    .locals 2
    .param p1, "opportunistic"    # Z
    .param p2, "subId"    # I

    .line 3302
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/SubscriptionManager;ZI)V

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
    .locals 2
    .param p1, "subId"    # I
    .param p2, "needValidation"    # Z
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
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

    .line 3169
    .local p4, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 3170
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-nez v0, :cond_0

    return-void

    .line 3172
    :cond_0
    new-instance v1, Landroid/telephony/SubscriptionManager$1;

    invoke-direct {v1, p0, p3, p4}, Landroid/telephony/SubscriptionManager$1;-><init>(Landroid/telephony/SubscriptionManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3188
    .local v1, "callbackStub":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/ISub;->setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3191
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    .end local v1    # "callbackStub":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    goto :goto_0

    .line 3189
    :catch_0
    move-exception v0

    .line 3192
    :goto_0
    return-void
.end method

.method public whitelist setSubscriptionEnabled(IZ)Z
    .locals 2
    .param p1, "subscriptionId"    # I
    .param p2, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3611
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 3612
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 3613
    invoke-interface {v0, p2, p1}, Lcom/android/internal/telephony/ISub;->setSubscriptionEnabled(ZI)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 3617
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 3615
    :catch_0
    move-exception v0

    .line 3619
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setSubscriptionOverrideCongested(IZJ)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "overrideCongested"    # Z
    .param p3, "expirationDurationMillis"    # J

    .line 3048
    nop

    .line 3049
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v3

    .line 3048
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SubscriptionManager;->setSubscriptionOverrideCongested(IZ[IJ)V

    .line 3050
    return-void
.end method

.method public whitelist setSubscriptionOverrideCongested(IZ[IJ)V
    .locals 9
    .param p1, "subId"    # I
    .param p2, "overrideCongested"    # Z
    .param p3, "networkTypes"    # [I
    .param p4, "expirationDurationMillis"    # J

    .line 3082
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 3083
    .local v4, "overrideValue":I
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v1

    const/4 v3, 0x2

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 3084
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3083
    move v2, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkPolicyManager;->setSubscriptionOverride(III[IJLjava/lang/String;)V

    .line 3085
    return-void
.end method

.method public whitelist setSubscriptionOverrideUnmetered(IZJ)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "overrideUnmetered"    # Z
    .param p3, "expirationDurationMillis"    # J

    .line 2984
    nop

    .line 2985
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v3

    .line 2984
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SubscriptionManager;->setSubscriptionOverrideUnmetered(IZ[IJ)V

    .line 2986
    return-void
.end method

.method public whitelist setSubscriptionOverrideUnmetered(IZ[IJ)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "overrideUnmetered"    # Z
    .param p3, "networkTypes"    # [I
    .param p4, "expirationDurationMillis"    # J

    .line 3017
    move v3, p2

    .line 3018
    .local v3, "overrideValue":I
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 3019
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 3018
    move v1, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkPolicyManager;->setSubscriptionOverride(III[IJLjava/lang/String;)V

    .line 3020
    return-void
.end method

.method public whitelist setSubscriptionPlans(ILjava/util/List;)V
    .locals 2
    .param p1, "subId"    # I
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

    .line 2924
    .local p2, "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionPlans(ILjava/util/List;J)V

    .line 2925
    return-void
.end method

.method public whitelist setSubscriptionPlans(ILjava/util/List;J)V
    .locals 6
    .param p1, "subId"    # I
    .param p3, "expirationDurationMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;J)V"
        }
    .end annotation

    .line 2954
    .local p2, "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/telephony/SubscriptionPlan;

    .line 2955
    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Landroid/telephony/SubscriptionPlan;

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 2956
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2954
    move v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkPolicyManager;->setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V

    .line 2957
    return-void
.end method

.method public whitelist setUiccApplicationsEnabled(IZ)V
    .locals 1
    .param p1, "subscriptionId"    # I
    .param p2, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3646
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 3647
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 3648
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 3644
    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 3649
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 3650
    invoke-interface {v0, p2, p1}, Lcom/android/internal/telephony/ISub;->setUiccApplicationsEnabled(ZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3654
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 3652
    :catch_0
    move-exception v0

    .line 3655
    :goto_0
    return-void
.end method

.method blacklist setUsageSetting(II)V
    .locals 2
    .param p1, "subscriptionId"    # I
    .param p2, "usageSetting"    # I

    .line 4147
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/SubscriptionManager;II)V

    const-string/jumbo v1, "setUsageSetting"

    invoke-direct {p0, p1, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    .line 4150
    return-void
.end method

.method public whitelist switchToSubscription(ILandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 3272
    const-string v0, "callbackIntent cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3273
    new-instance v0, Landroid/telephony/euicc/EuiccManager;

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/telephony/euicc/EuiccManager;-><init>(Landroid/content/Context;)V

    .line 3274
    .local v0, "euiccManager":Landroid/telephony/euicc/EuiccManager;
    invoke-virtual {v0, p1, p2}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(ILandroid/app/PendingIntent;)V

    .line 3275
    return-void
.end method
