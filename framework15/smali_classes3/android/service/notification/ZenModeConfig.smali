.class public Landroid/service/notification/ZenModeConfig;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$EventInfo;,
        Landroid/service/notification/ZenModeConfig$ZenRule;,
        Landroid/service/notification/ZenModeConfig$ScheduleInfo;,
        Landroid/service/notification/ZenModeConfig$ConfigChangeOrigin;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALLOW_ATT_ALARMS:Ljava/lang/String; = "alarms"

.field private static final blacklist ALLOW_ATT_APP_BYPASS_DND_LIST:Ljava/lang/String; = "appBypassDndList"

.field private static final greylist-max-o ALLOW_ATT_CALLS:Ljava/lang/String; = "calls"

.field private static final greylist-max-o ALLOW_ATT_CALLS_FROM:Ljava/lang/String; = "callsFrom"

.field private static final blacklist ALLOW_ATT_CHANNELS:Ljava/lang/String; = "priorityChannelsAllowed"

.field private static final blacklist ALLOW_ATT_CONV:Ljava/lang/String; = "convos"

.field private static final blacklist ALLOW_ATT_CONV_FROM:Ljava/lang/String; = "convosFrom"

.field private static final greylist-max-o ALLOW_ATT_EVENTS:Ljava/lang/String; = "events"

.field private static final blacklist ALLOW_ATT_EXCEPTION_CONTACTS:Ljava/lang/String; = "exceptionContacts"

.field private static final greylist-max-o ALLOW_ATT_FROM:Ljava/lang/String; = "from"

.field private static final greylist-max-o ALLOW_ATT_MEDIA:Ljava/lang/String; = "media"

.field private static final greylist-max-o ALLOW_ATT_MESSAGES:Ljava/lang/String; = "messages"

.field private static final greylist-max-o ALLOW_ATT_MESSAGES_FROM:Ljava/lang/String; = "messagesFrom"

.field private static final greylist-max-o ALLOW_ATT_REMINDERS:Ljava/lang/String; = "reminders"

.field private static final greylist-max-o ALLOW_ATT_REPEAT_CALLERS:Ljava/lang/String; = "repeatCallers"

.field private static final greylist-max-o ALLOW_ATT_SCREEN_OFF:Ljava/lang/String; = "visualScreenOff"

.field private static final greylist-max-o ALLOW_ATT_SCREEN_ON:Ljava/lang/String; = "visualScreenOn"

.field private static final greylist-max-o ALLOW_ATT_SYSTEM:Ljava/lang/String; = "system"

.field private static final greylist-max-o ALLOW_TAG:Ljava/lang/String; = "allow"

.field public static final greylist-max-o ALL_DAYS:[I

.field private static final blacklist ATT_SELECTED_APPS_ALLOWED:Ljava/lang/String; = "appBypassDndFlag"

.field private static final blacklist ATT_SELECTED_CONTACTS_ALLOWED:Ljava/lang/String; = "exceptionContactsFlag"

.field private static final blacklist AUTOMATIC_DELETED_TAG:Ljava/lang/String; = "deleted"

.field private static final greylist-max-o AUTOMATIC_TAG:Ljava/lang/String; = "automatic"

.field private static final greylist-max-o CONDITION_ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final greylist-max-o CONDITION_ATT_ICON:Ljava/lang/String; = "icon"

.field private static final greylist-max-o CONDITION_ATT_ID:Ljava/lang/String; = "id"

.field private static final greylist-max-o CONDITION_ATT_LINE1:Ljava/lang/String; = "line1"

.field private static final greylist-max-o CONDITION_ATT_LINE2:Ljava/lang/String; = "line2"

.field private static final blacklist CONDITION_ATT_SOURCE:Ljava/lang/String; = "source"

.field private static final greylist-max-o CONDITION_ATT_STATE:Ljava/lang/String; = "state"

.field private static final greylist-max-o CONDITION_ATT_SUMMARY:Ljava/lang/String; = "summary"

.field public static final greylist-max-o COUNTDOWN_PATH:Ljava/lang/String; = "countdown"

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DAY_MINUTES:I = 0x5a0

.field private static final greylist-max-o DEFAULT_ALLOW_ALARMS:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_CALLS:Z = true

.field private static final blacklist DEFAULT_ALLOW_CONV:Z = true

.field private static final blacklist DEFAULT_ALLOW_CONV_FROM:I = 0x2

.field private static final greylist-max-o DEFAULT_ALLOW_EVENTS:Z = false

.field private static final greylist-max-o DEFAULT_ALLOW_MEDIA:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_MESSAGES:Z = true

.field private static final blacklist DEFAULT_ALLOW_PRIORITY_CHANNELS:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_REMINDERS:Z = false

.field private static final greylist-max-o DEFAULT_ALLOW_REPEAT_CALLERS:Z = true

.field private static final greylist-max-o DEFAULT_ALLOW_SYSTEM:Z = false

.field private static final greylist-max-o DEFAULT_CALLS_SOURCE:I = 0x2

.field private static final greylist-max-o DEFAULT_CHANNELS_BYPASSING_DND:Z = false

.field public static final greylist-max-o DEFAULT_RULE_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_SELECTED_APPS_ALLOWED:I = 0x0

.field private static final blacklist DEFAULT_SELECTED_CONTACTS_ALLOWED:I = 0x0

.field private static final greylist-max-o DEFAULT_SOURCE:I = 0x2

.field private static final greylist-max-o DEFAULT_SUPPRESSED_VISUAL_EFFECTS:I = 0x9d

.field private static final blacklist DEVICE_EFFECT_DIM_WALLPAPER:Ljava/lang/String; = "zdeDimWallpaper"

.field private static final blacklist DEVICE_EFFECT_DISABLE_AUTO_BRIGHTNESS:Ljava/lang/String; = "zdeDisableAutoBrightness"

.field private static final blacklist DEVICE_EFFECT_DISABLE_TAP_TO_WAKE:Ljava/lang/String; = "zdeDisableTapToWake"

.field private static final blacklist DEVICE_EFFECT_DISABLE_TILT_TO_WAKE:Ljava/lang/String; = "zdeDisableTiltToWake"

.field private static final blacklist DEVICE_EFFECT_DISABLE_TOUCH:Ljava/lang/String; = "zdeDisableTouch"

.field private static final blacklist DEVICE_EFFECT_DISPLAY_GRAYSCALE:Ljava/lang/String; = "zdeDisplayGrayscale"

.field private static final blacklist DEVICE_EFFECT_EXTRAS:Ljava/lang/String; = "zdeExtraEffects"

.field private static final blacklist DEVICE_EFFECT_MAXIMIZE_DOZE:Ljava/lang/String; = "zdeMaximizeDoze"

.field private static final blacklist DEVICE_EFFECT_MINIMIZE_RADIO_USAGE:Ljava/lang/String; = "zdeMinimizeRadioUsage"

.field private static final blacklist DEVICE_EFFECT_SUPPRESS_AMBIENT_DISPLAY:Ljava/lang/String; = "zdeSuppressAmbientDisplay"

.field private static final blacklist DEVICE_EFFECT_USER_MODIFIED_FIELDS:Ljava/lang/String; = "zdeUserModifiedFields"

.field private static final blacklist DEVICE_EFFECT_USE_NIGHT_MODE:Ljava/lang/String; = "zdeUseNightMode"

.field private static final greylist-max-o DISALLOW_ATT_VISUAL_EFFECTS:Ljava/lang/String; = "visualEffects"

.field private static final greylist-max-o DISALLOW_TAG:Ljava/lang/String; = "disallow"

.field public static final greylist-max-o EVENTS_DEFAULT_RULE_ID:Ljava/lang/String; = "EVENTS_DEFAULT_RULE"

.field public static final greylist-max-o EVENT_PATH:Ljava/lang/String; = "event"

.field public static final greylist-max-o EVERY_NIGHT_DEFAULT_RULE_ID:Ljava/lang/String; = "EVERY_NIGHT_DEFAULT_RULE"

.field public static final greylist-max-o IS_ALARM_PATH:Ljava/lang/String; = "alarm"

.field private static final blacklist ITEM_SEPARATOR:Ljava/lang/String; = ","

.field private static final blacklist ITEM_SEPARATOR_ESCAPE:Ljava/lang/String; = "\\"

.field private static final blacklist ITEM_SPLITTER_REGEX:Ljava/util/regex/Pattern;

.field public static final blacklist MANUAL_RULE_ID:Ljava/lang/String; = "MANUAL_RULE"

.field private static final greylist-max-o MANUAL_TAG:Ljava/lang/String; = "manual"

.field public static final greylist-max-o MAX_SOURCE:I = 0x2

.field private static final greylist-max-o MINUTES_MS:I = 0xea60

.field public static final greylist-max-o MINUTE_BUCKETS:[I

.field private static final blacklist POLICY_USER_MODIFIED_FIELDS:Ljava/lang/String; = "policyUserModifiedFields"

.field private static final blacklist RULE_ATT_ALLOW_MANUAL:Ljava/lang/String; = "userInvokable"

.field private static final greylist-max-o RULE_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final greylist-max-o RULE_ATT_CONDITION_ID:Ljava/lang/String; = "conditionId"

.field private static final blacklist RULE_ATT_CONFIG_ACTIVITY:Ljava/lang/String; = "configActivity"

.field private static final greylist-max-o RULE_ATT_CREATION_TIME:Ljava/lang/String; = "creationTime"

.field private static final blacklist RULE_ATT_DELETION_INSTANT:Ljava/lang/String; = "deletionInstant"

.field private static final greylist-max-o RULE_ATT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final greylist-max-o RULE_ATT_ENABLER:Ljava/lang/String; = "enabler"

.field private static final blacklist RULE_ATT_ICON:Ljava/lang/String; = "rule_icon"

.field private static final greylist-max-o RULE_ATT_ID:Ljava/lang/String; = "ruleId"

.field private static final blacklist RULE_ATT_MODIFIED:Ljava/lang/String; = "modified"

.field private static final greylist-max-o RULE_ATT_NAME:Ljava/lang/String; = "name"

.field private static final blacklist RULE_ATT_PKG:Ljava/lang/String; = "pkg"

.field private static final greylist-max-o RULE_ATT_SNOOZING:Ljava/lang/String; = "snoozing"

.field private static final blacklist RULE_ATT_TRIGGER_DESC:Ljava/lang/String; = "triggerDesc"

.field private static final blacklist RULE_ATT_TYPE:Ljava/lang/String; = "type"

.field private static final blacklist RULE_ATT_USER_MODIFIED_FIELDS:Ljava/lang/String; = "userModifiedFields"

.field private static final greylist-max-o RULE_ATT_ZEN:Ljava/lang/String; = "zen"

.field public static final greylist-max-o SCHEDULE_PATH:Ljava/lang/String; = "schedule"

.field private static final greylist-max-o SECONDS_MS:I = 0x3e8

.field private static final blacklist SHOW_ATT_AMBIENT:Ljava/lang/String; = "showAmbient"

.field private static final blacklist SHOW_ATT_BADGES:Ljava/lang/String; = "showBadges"

.field private static final blacklist SHOW_ATT_FULL_SCREEN_INTENT:Ljava/lang/String; = "showFullScreenIntent"

.field private static final blacklist SHOW_ATT_LIGHTS:Ljava/lang/String; = "showLights"

.field private static final blacklist SHOW_ATT_NOTIFICATION_LIST:Ljava/lang/String; = "showNotificationList"

.field private static final blacklist SHOW_ATT_PEEK:Ljava/lang/String; = "shoePeek"

.field private static final blacklist SHOW_ATT_STATUS_BAR_ICONS:Ljava/lang/String; = "showStatusBarIcons"

.field public static final greylist-max-o SOURCE_ANYONE:I = 0x0

.field public static final greylist-max-o SOURCE_CONTACT:I = 0x1

.field public static final greylist-max-o SOURCE_STAR:I = 0x2

.field private static final greylist-max-o STATE_ATT_CHANNELS_BYPASSING_DND:Ljava/lang/String; = "areChannelsBypassingDnd"

.field private static final greylist-max-o STATE_TAG:Ljava/lang/String; = "state"

.field public static final greylist-max-o SYSTEM_AUTHORITY:Ljava/lang/String; = "android"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ZenModeConfig"

.field public static final blacklist TW_SCHEDULED_DEFAULT_RULE_ID:Ljava/lang/String; = "SCHEDULED_DEFAULT_RULE"

.field public static final blacklist UPDATE_ORIGIN_APP:I = 0x4

.field public static final blacklist UPDATE_ORIGIN_INIT:I = 0x1

.field public static final blacklist UPDATE_ORIGIN_INIT_USER:I = 0x2

.field public static final blacklist UPDATE_ORIGIN_RESTORE_BACKUP:I = 0x6

.field public static final blacklist UPDATE_ORIGIN_SYSTEM_OR_SYSTEMUI:I = 0x5

.field public static final blacklist UPDATE_ORIGIN_UNKNOWN:I = 0x0

.field public static final blacklist UPDATE_ORIGIN_USER:I = 0x3

.field private static final greylist-max-o XML_VERSION:I = 0xa

.field public static final blacklist XML_VERSION_MODES_API:I = 0xb

.field public static final blacklist XML_VERSION_ZEN_UPGRADE:I = 0x8

.field private static final greylist-max-o ZEN_ATT_USER:Ljava/lang/String; = "user"

.field private static final greylist-max-o ZEN_ATT_VERSION:Ljava/lang/String; = "version"

.field private static final blacklist ZEN_POLICY_TAG:Ljava/lang/String; = "zen_policy"

.field public static final greylist-max-o ZEN_TAG:Ljava/lang/String; = "zen"

.field private static final greylist-max-o ZERO_VALUE_MS:I = 0x2710

.field public static final blacklist ZenConfigLock:Ljava/lang/Object;


# instance fields
.field public greylist allowAlarms:Z

.field public blacklist allowAppBypassDndList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o allowCalls:Z

.field public greylist-max-o allowCallsFrom:I

.field public blacklist allowConversations:Z

.field public blacklist allowConversationsFrom:I

.field public greylist-max-o allowEvents:Z

.field public blacklist allowExceptionContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-o allowMedia:Z

.field public greylist-max-o allowMessages:Z

.field public greylist-max-o allowMessagesFrom:I

.field public blacklist allowPriorityChannels:Z

.field public greylist-max-o allowReminders:Z

.field public greylist-max-o allowRepeatCallers:Z

.field public greylist-max-o allowSystem:Z

.field public blacklist appBypassDndFlag:I

.field public greylist-max-o areChannelsBypassingDnd:Z

.field public greylist automaticRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist deletedRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist exceptionContactsFlag:I

.field public greylist-max-o manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

.field public greylist-max-o suppressedVisualEffects:I

.field public greylist-max-o user:I

.field public greylist-max-o version:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smtoDayList([I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "EVERY_NIGHT_DEFAULT_RULE"

    const-string v1, "EVENTS_DEFAULT_RULE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->generateMinuteBuckets()[I

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/service/notification/ZenModeConfig;->ZenConfigLock:Ljava/lang/Object;

    const-string v0, "(?<!\\\\),"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeConfig;->ITEM_SPLITTER_REGEX:Ljava/util/regex/Pattern;

    new-instance v0, Landroid/service/notification/ZenModeConfig$1;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$1;-><init>()V

    sput-object v0, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor greylist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    const/4 v2, 0x2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->exceptionContactsFlag:I

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->appBypassDndFlag:I

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    const/16 v2, 0x9d

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->ensureManualZenRule()V

    :cond_0
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    const/4 v2, 0x2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->exceptionContactsFlag:I

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->appBypassDndFlag:I

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    const/16 v2, 0x9d

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->user:I

    const/4 v2, 0x0

    const-class v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v2, p1}, Landroid/service/notification/ZenModeConfig;->readRulesFromParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;)V

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-static {v2, p1}, Landroid/service/notification/ZenModeConfig;->readRulesFromParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;)V

    :cond_6
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_7

    move v2, v0

    goto :goto_5

    :cond_7
    move v2, v1

    :goto_5
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_8

    move v2, v0

    goto :goto_6

    :cond_8
    move v2, v1

    :goto_6
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_9

    move v2, v0

    goto :goto_7

    :cond_9
    move v2, v1

    :goto_7
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_b

    goto :goto_8

    :cond_b
    move v0, v1

    :goto_8
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->exceptionContactsFlag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->appBypassDndFlag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->allowAppBypassDndList:Ljava/util/List;

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    :cond_c
    return-void
.end method

.method public static blacklist areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z
    .locals 12

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iget v5, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    iget v6, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_4

    move v6, v1

    goto :goto_4

    :cond_4
    move v6, v2

    :goto_4
    iget v7, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_5

    move v7, v1

    goto :goto_5

    :cond_5
    move v7, v2

    :goto_5
    iget v8, p0, Landroid/app/NotificationManager$Policy;->state:I

    and-int/2addr v8, v1

    if-eqz v8, :cond_6

    move v8, v1

    goto :goto_6

    :cond_6
    move v8, v2

    :goto_6
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->hasPriorityChannels()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v1

    goto :goto_7

    :cond_7
    move v9, v2

    :goto_7
    move v8, v9

    :cond_8
    if-nez v8, :cond_a

    iget v9, p0, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    if-ne v9, v1, :cond_9

    goto :goto_8

    :cond_9
    move v9, v2

    goto :goto_9

    :cond_a
    :goto_8
    move v9, v1

    :goto_9
    move v8, v9

    iget v9, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_b

    move v9, v1

    goto :goto_a

    :cond_b
    move v9, v2

    :goto_a
    iget v10, p0, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_c

    iget v10, p0, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    if-nez v10, :cond_d

    :cond_c
    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_d
    iget v10, p0, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    if-ne v10, v1, :cond_f

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_f

    :cond_e
    move v10, v1

    goto :goto_b

    :cond_f
    move v10, v2

    :goto_b
    if-nez v0, :cond_10

    if-nez v3, :cond_10

    if-nez v4, :cond_10

    if-nez v5, :cond_10

    if-nez v6, :cond_10

    if-nez v8, :cond_10

    if-nez v9, :cond_10

    if-nez v7, :cond_10

    if-nez v10, :cond_10

    goto :goto_c

    :cond_10
    move v1, v2

    :goto_c
    return v1
.end method

.method public static blacklist areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z
    .locals 4

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v0, v2, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v3

    if-eq v3, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowPriorityChannels()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    move v0, v3

    :cond_4
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowReminders()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowCalls()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowMessages()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowEvents()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowRepeatCallers()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowSystem()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1
.end method

.method public static blacklist areAllZenBehaviorSoundsMuted(Landroid/app/NotificationManager$Policy;)Z
    .locals 5

    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public static greylist-max-o areAllZenBehaviorSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z
    .locals 4

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowAlarms()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->isAllowMedia()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public static blacklist deletedRuleKey(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o generateMinuteBuckets()[I
    .locals 5

    const/16 v0, 0xc

    const/16 v1, 0xf

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    const/16 v3, 0x1e

    aput v3, v2, v1

    const/4 v1, 0x2

    const/16 v3, 0x2d

    aput v3, v2, v1

    const/4 v1, 0x1

    :goto_0
    const/16 v3, 0xc

    if-gt v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x3c

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static blacklist getCurrentXmlVersion()I
    .locals 1

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    return v0
.end method

.method public static blacklist getDefaultConfig()Landroid/service/notification/ZenModeConfig;
    .locals 10

    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    new-instance v1, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    new-instance v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    const-string v4, "EVENTS_DEFAULT_RULE"

    iput-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const-string v5, "android/com.android.server.notification.EventConditionProvider"

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iput v2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const-string v6, "android"

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v4}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    const/4 v7, 0x7

    new-array v8, v7, [I

    fill-array-data v8, :array_0

    iput-object v8, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    const/16 v8, 0x16

    iput v8, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iput v7, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iput-boolean v2, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    new-instance v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v7}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    const-string v8, "EVERY_NIGHT_DEFAULT_RULE"

    iput-object v8, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const-string v9, "android/com.android.server.notification.ScheduleConditionProvider"

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iput-boolean v5, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iput v2, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    iput-object v6, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public static blacklist getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;
    .locals 4

    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/service/notification/ZenPolicy$Builder;->showVisualEffect(IZ)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, ""

    const-wide/16 v2, -0x1

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v4, :cond_5

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v5, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-static {p0, v5}, Landroid/service/notification/ZenModeConfig;->getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v1, v5

    :cond_1
    goto :goto_0

    :cond_2
    if-nez v4, :cond_4

    if-eqz p3, :cond_3

    const v0, 0x10410e3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v0

    :cond_4
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_5

    nop

    invoke-static {v2, v3}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v5

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-static {p0, v2, v3, v5, v6}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v5

    const v6, 0x10410ec

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_0
    iget-object v4, p2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    return-object v0

    :cond_7
    :goto_2
    iget-object v6, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {p0, v6}, Landroid/service/notification/ZenModeConfig;->parseAutomaticRuleEndTime(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-lez v8, :cond_8

    move-wide v2, v6

    iget-object v1, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    :cond_8
    nop

    :cond_9
    goto :goto_1

    :cond_a
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object v0, v1

    :cond_b
    return-object v0

    :cond_c
    :goto_3
    return-object v0
.end method

.method public static greylist-max-o getEventConditionProvider()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "EventConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static greylist-max-o getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_0

    const-string v1, "EEE "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Hm"

    goto :goto_1

    :cond_1
    const-string v1, "hma"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o getNextAlarm(Landroid/content/Context;)J
    .locals 4

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2
.end method

.method public static greylist-max-o getOwnerCaption(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_0

    return-object v3

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "ZenModeConfig"

    const-string v3, "Error loading owner caption"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method public static greylist-max-o getScheduleConditionProvider()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "ScheduleConditionProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z
    .locals 1

    iget v0, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isToday(J)Z
    .locals 5

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static greylist-max-o isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isValidCountdownConditionId(Landroid/net/Uri;)Z
    .locals 4

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z
    .locals 4

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing countdown alarm condition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZenModeConfig"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v1
.end method

.method public static greylist-max-o isValidEventConditionId(Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isValidHour(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x18

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static greylist-max-o isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1

    if-eqz p0, :cond_1

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

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

.method public static greylist-max-o isValidMinute(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x3c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static greylist-max-o isValidScheduleConditionId(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v2, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public static blacklist isValidScheduleConditionId(Landroid/net/Uri;Z)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v2, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private static greylist-max-o isValidSource(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isVisualEffectAllowed(II)Z
    .locals 1

    and-int v0, p1, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z
    .locals 1

    iget v0, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isZenOverridingRinger(ILandroid/app/NotificationManager$Policy;)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return v1
.end method

.method public static blacklist joinStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Landroid/service/notification/ZenModeConfig;->ZenConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o newRuleId()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist normalizeConversationSenders(ZII)I
    .locals 2

    const/4 v0, 0x3

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method private static blacklist normalizePrioritySenders(II)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    return p0
.end method

.method private static greylist-max-o parseAutomaticRuleEndTime(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 7

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ScheduleCalendar;->getNextChangeTime(J)J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/service/notification/ScheduleCalendar;->exitAtAlarm()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->getNextAlarm(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/service/notification/ScheduleCalendar;->maybeSetNextAlarm(JJ)V

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ScheduleCalendar;->shouldExitForAlarm(J)Z

    move-result v5

    if-eqz v5, :cond_1

    return-wide v3

    :cond_1
    return-wide v1

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static blacklist readConditionXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/Condition;
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "id"

    invoke-static {v1, v0}, Landroid/service/notification/ZenModeConfig;->safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    if-nez v11, :cond_0

    return-object v12

    :cond_0
    const-string/jumbo v0, "summary"

    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v0, "line1"

    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v0, "line2"

    invoke-interface {v1, v12, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v0, "icon"

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v16

    const-string/jumbo v0, "state"

    invoke-static {v1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v17

    const-string v0, "flags"

    invoke-static {v1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v18

    :try_start_0
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "source"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v9

    new-instance v0, Landroid/service/notification/Condition;

    move-object v2, v0

    move-object v3, v11

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v10, v18

    invoke-direct/range {v2 .. v10}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/service/notification/Condition;

    move-object v2, v0

    move-object v3, v11

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-direct/range {v2 .. v9}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "ZenModeConfig"

    const-string v3, "Unable to read condition xml"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v12
.end method

.method public static blacklist readRuleXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 9

    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    const-string/jumbo v1, "name"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const-string/jumbo v1, "zen"

    invoke-interface {p0, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-static {v1, v4}, Landroid/service/notification/ZenModeConfig;->tryParseZenMode(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    iget v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const-string v6, "ZenModeConfig"

    if-ne v5, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad zen mode in rule xml:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    const-string v5, "conditionId"

    invoke-static {p0, v5}, Landroid/service/notification/ZenModeConfig;->safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const-string v5, "component"

    invoke-static {p0, v5}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const-string v5, "configActivity"

    invoke-static {p0, v5}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    const-string/jumbo v5, "pkg"

    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    if-nez v5, :cond_2

    iget-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v3

    :goto_0
    iput-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    :cond_2
    const-string v5, "creationTime"

    const-wide/16 v7, 0x0

    invoke-static {p0, v5, v7, v8}, Landroid/service/notification/ZenModeConfig;->safeLong(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    const-string v5, "enabler"

    invoke-interface {p0, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readConditionXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/Condition;

    move-result-object v5

    iput-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v5

    if-nez v5, :cond_3

    iget v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eq v5, v2, :cond_3

    iget-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const-string v7, "android"

    invoke-static {v5, v7}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating zenMode of automatic rule "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    :cond_3
    const-string/jumbo v2, "modified"

    const/4 v5, 0x0

    invoke-static {p0, v2, v5}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readZenPolicyXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenPolicy;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->readZenDeviceEffectsXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenDeviceEffects;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    const-string/jumbo v2, "userInvokable"

    invoke-static {p0, v2, v5}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    const-string/jumbo v2, "rule_icon"

    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    const-string/jumbo v2, "triggerDesc"

    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    const-string/jumbo v2, "type"

    invoke-static {p0, v2, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    const-string/jumbo v2, "userModifiedFields"

    invoke-static {p0, v2, v5}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    const-string/jumbo v2, "policyUserModifiedFields"

    invoke-static {p0, v2, v5}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    const-string/jumbo v2, "zdeUserModifiedFields"

    invoke-static {p0, v2, v5}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    nop

    const-string v2, "deletionInstant"

    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    iput-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    :cond_4
    return-object v0
.end method

.method private static blacklist readRulesFromParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readString8Array([Ljava/lang/String;)V

    const-class v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ParceledListSlice;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v0, :cond_1

    nop

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Unexpected parceled rules count (%s != %s), throwing them out"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ZenModeConfig"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_2

    aget-object v5, v1, v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static blacklist readXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return-object v2

    :cond_0
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "zen"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    return-object v2

    :cond_1
    new-instance v5, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v5}, Landroid/service/notification/ZenModeConfig;-><init>()V

    const-string/jumbo v6, "version"

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getCurrentXmlVersion()I

    move-result v7

    invoke-static {v1, v6, v7}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Landroid/service/notification/ZenModeConfig;->version:I

    const-string/jumbo v6, "user"

    iget v7, v5, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v1, v6, v7}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Landroid/service/notification/ZenModeConfig;->user:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    move v9, v8

    const/4 v0, 0x1

    if-eq v8, v0, :cond_19

    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    if-ne v9, v8, :cond_3

    const-string/jumbo v8, "zen"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v7, :cond_2

    iget-object v0, v5, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig;->toZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    :cond_2
    return-object v5

    :cond_3
    if-ne v9, v3, :cond_18

    const-string v8, "allow"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, 0x0

    if-eqz v8, :cond_e

    const-string v8, "calls"

    invoke-static {v1, v8, v0}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v5, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    const-string/jumbo v8, "repeatCallers"

    invoke-static {v1, v8, v0}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v5, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    const-string/jumbo v8, "messages"

    invoke-static {v1, v8, v0}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v5, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    const-string/jumbo v8, "reminders"

    invoke-static {v1, v8, v10}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v5, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    const-string v8, "convos"

    invoke-static {v1, v8, v0}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v5, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    const-string v8, "events"

    invoke-static {v1, v8, v10}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v5, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    const-string v8, "from"

    const/4 v11, -0x1

    invoke-static {v1, v8, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    const-string v12, "callsFrom"

    invoke-static {v1, v12, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v13, "messagesFrom"

    invoke-static {v1, v13, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v13

    const-string v14, "convosFrom"

    invoke-static {v1, v14, v3}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v14

    iput v14, v5, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    const-string v14, "exceptionContactsFlag"

    invoke-static {v1, v14, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v14

    iput v14, v5, Landroid/service/notification/ZenModeConfig;->exceptionContactsFlag:I

    const-string v14, "exceptionContacts"

    invoke-interface {v1, v2, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    iput-object v15, v5, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    :cond_4
    const-string v15, "appBypassDndFlag"

    invoke-static {v1, v15, v11}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v11

    iput v11, v5, Landroid/service/notification/ZenModeConfig;->appBypassDndFlag:I

    const-string v11, "appBypassDndList"

    invoke-interface {v1, v2, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v15, Landroid/service/notification/ZenModeConfig;->ZenConfigLock:Ljava/lang/Object;

    monitor-enter v15

    if-eqz v11, :cond_5

    :try_start_0
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_5

    const-string v2, ","

    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v5, Landroid/service/notification/ZenModeConfig;->allowAppBypassDndList:Ljava/util/List;

    :cond_5
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v12}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v13}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iput v12, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iput v13, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_1

    :cond_6
    invoke-static {v8}, Landroid/service/notification/ZenModeConfig;->isValidSource(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "ZenModeConfig"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Migrating existing shared \'from\': "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iput v8, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    goto :goto_1

    :cond_7
    iput v3, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iput v3, v5, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    :goto_1
    const-string v2, "alarms"

    invoke-static {v1, v2, v0}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v5, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    const-string/jumbo v2, "media"

    invoke-static {v1, v2, v0}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v5, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    const-string/jumbo v2, "system"

    const/4 v10, 0x0

    invoke-static {v1, v2, v10}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v5, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string/jumbo v2, "priorityChannelsAllowed"

    invoke-static {v1, v2, v0}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v5, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    :cond_8
    const-string/jumbo v0, "visualScreenOff"

    invoke-static {v1, v0}, Landroid/service/notification/ZenModeConfig;->unsafeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v2, "visualScreenOn"

    invoke-static {v1, v2}, Landroid/service/notification/ZenModeConfig;->unsafeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v0, :cond_9

    if-eqz v2, :cond_a

    :cond_9
    const/4 v6, 0x1

    const/4 v10, 0x0

    iput v10, v5, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_b

    iget v10, v5, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    or-int/lit16 v10, v10, 0x8c

    iput v10, v5, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    :cond_b
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_c

    iget v10, v5, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v5, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    :cond_c
    if-eqz v6, :cond_d

    const-string v10, "ZenModeConfig"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migrated visual effects to "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v15, v5, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move v0, v9

    const/4 v2, 0x0

    const/4 v3, 0x2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_e
    const-string v0, "disallow"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez v6, :cond_f

    const-string/jumbo v0, "visualEffects"

    const/16 v2, 0x9d

    invoke-static {v1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_f
    const-string/jumbo v0, "manual"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v0

    iput-object v0, v5, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v5, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_10

    const/4 v7, 0x1

    move v0, v9

    const/4 v2, 0x0

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x0

    goto :goto_5

    :cond_11
    const-string v0, "automatic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "deleted"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_2

    :cond_12
    const-string/jumbo v0, "state"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "areChannelsBypassingDnd"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v5, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    const/4 v2, 0x0

    goto :goto_5

    :cond_13
    const/4 v2, 0x0

    goto :goto_5

    :cond_14
    :goto_2
    const-string/jumbo v0, "ruleId"

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->readRuleXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v3

    if-eqz v0, :cond_17

    if-eqz v3, :cond_17

    iput-object v0, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v8, "deleted"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->deletedRuleKey(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_16

    iget-object v10, v5, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_15
    const-string v8, "automatic"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, v5, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_16
    :goto_3
    nop

    :cond_17
    :goto_4
    nop

    :cond_18
    :goto_5
    move v0, v9

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to reach END_DOCUMENT"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist readZenDeviceEffectsXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenDeviceEffects;
    .locals 3

    new-instance v0, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    const-string/jumbo v1, "zdeDisplayGrayscale"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisplayGrayscale(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    const-string/jumbo v1, "zdeSuppressAmbientDisplay"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldSuppressAmbientDisplay(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    const-string/jumbo v1, "zdeDimWallpaper"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDimWallpaper(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    const-string/jumbo v1, "zdeUseNightMode"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldUseNightMode(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    const-string/jumbo v1, "zdeDisableAutoBrightness"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableAutoBrightness(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    const-string/jumbo v1, "zdeDisableTapToWake"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTapToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    const-string/jumbo v1, "zdeDisableTiltToWake"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTiltToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    const-string/jumbo v1, "zdeDisableTouch"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTouch(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    const-string/jumbo v1, "zdeMinimizeRadioUsage"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMinimizeRadioUsage(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    const-string/jumbo v1, "zdeMaximizeDoze"

    invoke-static {p0, v1, v2}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMaximizeDoze(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    const-string/jumbo v1, "zdeExtraEffects"

    invoke-static {p0, v1}, Landroid/service/notification/ZenModeConfig;->safeStringSet(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->setExtraEffects(Ljava/util/Set;)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenDeviceEffects;->hasEffects()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static blacklist readZenPolicyXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/service/notification/ZenPolicy;
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    new-instance v2, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v2}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    const-string v3, "callsFrom"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v5, "messagesFrom"

    invoke-static {v0, v5, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "repeatCallers"

    invoke-static {v0, v6, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    const-string v7, "convosFrom"

    invoke-static {v0, v7, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "alarms"

    invoke-static {v0, v8, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v9, "media"

    invoke-static {v0, v9, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v10, "system"

    invoke-static {v0, v10, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v10

    const-string v11, "events"

    invoke-static {v0, v11, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v12, "reminders"

    invoke-static {v0, v12, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v12

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_1

    const-string/jumbo v13, "priorityChannelsAllowed"

    invoke-static {v0, v13, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_1

    if-ne v13, v14, :cond_0

    move v15, v14

    goto :goto_0

    :cond_0
    move v15, v4

    :goto_0
    invoke-virtual {v2, v15}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    const/4 v1, 0x1

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    const/4 v1, 0x1

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v2, v5}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    const/4 v1, 0x1

    :cond_3
    if-eqz v6, :cond_5

    if-ne v6, v14, :cond_4

    move v13, v14

    goto :goto_1

    :cond_4
    move v13, v4

    :goto_1
    invoke-virtual {v2, v13}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    const/4 v1, 0x1

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v2, v7}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    const/4 v1, 0x1

    :cond_6
    if-eqz v8, :cond_8

    if-ne v8, v14, :cond_7

    move v13, v14

    goto :goto_2

    :cond_7
    move v13, v4

    :goto_2
    invoke-virtual {v2, v13}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    const/4 v1, 0x1

    :cond_8
    if-eqz v9, :cond_a

    if-ne v9, v14, :cond_9

    move v13, v14

    goto :goto_3

    :cond_9
    move v13, v4

    :goto_3
    invoke-virtual {v2, v13}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    const/4 v1, 0x1

    :cond_a
    if-eqz v10, :cond_c

    if-ne v10, v14, :cond_b

    move v13, v14

    goto :goto_4

    :cond_b
    move v13, v4

    :goto_4
    invoke-virtual {v2, v13}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    const/4 v1, 0x1

    :cond_c
    if-eqz v11, :cond_e

    if-ne v11, v14, :cond_d

    move v13, v14

    goto :goto_5

    :cond_d
    move v13, v4

    :goto_5
    invoke-virtual {v2, v13}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    const/4 v1, 0x1

    :cond_e
    if-eqz v12, :cond_10

    if-ne v12, v14, :cond_f

    move v13, v14

    goto :goto_6

    :cond_f
    move v13, v4

    :goto_6
    invoke-virtual {v2, v13}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    const/4 v1, 0x1

    :cond_10
    const-string/jumbo v13, "showFullScreenIntent"

    invoke-static {v0, v13, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v13

    const-string/jumbo v15, "showLights"

    invoke-static {v0, v15, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v15

    const-string/jumbo v14, "shoePeek"

    invoke-static {v0, v14, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v14

    move/from16 v16, v1

    const-string/jumbo v1, "showStatusBarIcons"

    invoke-static {v0, v1, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v1

    move/from16 v17, v3

    const-string/jumbo v3, "showBadges"

    invoke-static {v0, v3, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move/from16 v18, v5

    const-string/jumbo v5, "showAmbient"

    invoke-static {v0, v5, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v5

    move/from16 v19, v6

    const-string/jumbo v6, "showNotificationList"

    invoke-static {v0, v6, v4}, Landroid/service/notification/ZenModeConfig;->safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v6

    if-eqz v13, :cond_12

    const/4 v4, 0x1

    if-ne v13, v4, :cond_11

    const/4 v4, 0x1

    goto :goto_7

    :cond_11
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    const/4 v4, 0x1

    move/from16 v16, v4

    :cond_12
    if-eqz v15, :cond_14

    const/4 v4, 0x1

    if-ne v15, v4, :cond_13

    const/4 v4, 0x1

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    const/16 v16, 0x1

    :cond_14
    if-eqz v14, :cond_16

    const/4 v4, 0x1

    if-ne v14, v4, :cond_15

    const/4 v4, 0x1

    goto :goto_9

    :cond_15
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    const/16 v16, 0x1

    :cond_16
    if-eqz v1, :cond_18

    const/4 v4, 0x1

    if-ne v1, v4, :cond_17

    const/4 v4, 0x1

    goto :goto_a

    :cond_17
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    const/16 v16, 0x1

    :cond_18
    if-eqz v3, :cond_1a

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    const/4 v4, 0x1

    goto :goto_b

    :cond_19
    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    const/16 v16, 0x1

    :cond_1a
    if-eqz v5, :cond_1c

    const/4 v4, 0x1

    if-ne v5, v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_c

    :cond_1b
    const/4 v4, 0x0

    :goto_c
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    const/16 v16, 0x1

    :cond_1c
    if-eqz v6, :cond_1e

    const/4 v4, 0x1

    if-ne v6, v4, :cond_1d

    goto :goto_d

    :cond_1d
    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    const/16 v16, 0x1

    :cond_1e
    if-eqz v16, :cond_1f

    invoke-virtual {v2}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v4

    return-object v4

    :cond_1f
    const/4 v4, 0x0

    return-object v4
.end method

.method private static blacklist rulesToString(Landroid/util/ArrayMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "{}"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist safeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o safeBoolean(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist safeComponentName(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist safeInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static blacklist safeLong(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;J)J
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private static blacklist safeStringSet(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/service/notification/ZenModeConfig;->ITEM_SPLITTER_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    nop

    const-string v6, "\\\\"

    const-string v7, "\\"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\,"

    const-string v8, ","

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static blacklist safeUri(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez v1, :cond_1

    move v0, v2

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v3, v3, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    return v0
.end method

.method private static greylist-max-o sourceToPrioritySenders(II)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    return p1

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o sourceToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "stars"

    return-object v0

    :pswitch_1
    const-string v0, "contacts"

    return-object v0

    :pswitch_2
    const-string v0, "anyone"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o toCountdownConditionId(JZ)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "countdown"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o toDayList([I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public static greylist-max-o toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;
    .locals 4

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "calendar"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    nop

    :goto_1
    const-string v1, "calendarId"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reply"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o toNextAlarmCondition(Landroid/content/Context;JI)Landroid/service/notification/Condition;
    .locals 18

    move-wide/from16 v0, p1

    invoke-static/range {p1 .. p2}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v2

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-static {v3, v0, v1, v2, v4}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10410ec

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v0, v1, v8}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object v8

    new-instance v17, Landroid/service/notification/Condition;

    const/4 v15, 0x1

    const/16 v16, 0x1

    const-string v11, ""

    const-string v13, ""

    const/4 v14, 0x0

    move-object/from16 v9, v17

    move-object v10, v8

    move-object v12, v7

    invoke-direct/range {v9 .. v16}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v17
.end method

.method public static greylist-max-o toScheduleCalendar(Landroid/net/Uri;)Landroid/service/notification/ScheduleCalendar;
    .locals 3

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/service/notification/ScheduleCalendar;

    invoke-direct {v1}, Landroid/service/notification/ScheduleCalendar;-><init>()V

    invoke-virtual {v1, v0}, Landroid/service/notification/ScheduleCalendar;->setSchedule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ScheduleCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static greylist-max-o toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;
    .locals 4

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "schedule"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "days"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "start"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "end"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "exitAtAlarm"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p1, :cond_0

    const-wide/16 v2, 0x2710

    goto :goto_0

    :cond_0
    const v2, 0xea60

    mul-int/2addr v2, p1

    int-to-long v2, v2

    :goto_0
    add-long v5, v0, v2

    move-object v4, p0

    move v7, p1

    move v8, p2

    move v9, p3

    invoke-static/range {v4 .. v9}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v4

    return-object v4
.end method

.method public static greylist-max-o toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;
    .locals 22

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-static/range {p1 .. p2}, Landroid/service/notification/ZenModeConfig;->isToday(J)Z

    move-result v3

    move-object/from16 v4, p0

    move/from16 v5, p4

    invoke-static {v4, v0, v1, v3, v5}, Landroid/service/notification/ZenModeConfig;->getFormattedTime(Landroid/content/Context;JZI)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/16 v8, 0x3c

    const v9, 0x10410ec

    const-string v10, "formattedTime"

    const-string v11, "count"

    if-ge v2, v8, :cond_2

    move/from16 v8, p3

    if-eqz p5, :cond_0

    const v12, 0x10410e1

    goto :goto_0

    :cond_0
    const v12, 0x10410e0

    :goto_0
    nop

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v7, v12}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x10410df

    if-eqz p5, :cond_1

    invoke-static {v6, v7, v11}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const v14, 0x1150012

    invoke-virtual {v6, v14, v8, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :goto_1
    nop

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v6, v9, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_2
    const/16 v8, 0x5a0

    if-ge v2, v8, :cond_5

    int-to-float v8, v2

    const/high16 v12, 0x42700000    # 60.0f

    div-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    if-eqz p5, :cond_3

    const v12, 0x10410dd

    goto :goto_2

    :cond_3
    const v12, 0x10410dc

    :goto_2
    nop

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v7, v12}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x10410db

    if-eqz p5, :cond_4

    invoke-static {v6, v7, v11}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const v14, 0x1150011

    invoke-virtual {v6, v14, v8, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :goto_3
    nop

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v6, v9, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_5
    const v8, 0x10410ed

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    move-object v13, v8

    move-object v10, v8

    :goto_4
    const/4 v8, 0x0

    invoke-static {v0, v1, v8}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(JZ)Landroid/net/Uri;

    move-result-object v8

    new-instance v11, Landroid/service/notification/Condition;

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v19, 0x0

    move-object v14, v11

    move-object v15, v8

    move-object/from16 v16, v10

    move-object/from16 v17, v13

    move-object/from16 v18, v9

    invoke-direct/range {v14 .. v21}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v11
.end method

.method public static greylist-max-o tryParseCountdownConditionId(Landroid/net/Uri;)J
    .locals 5

    const-string v0, "android"

    invoke-static {p0, v0}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "countdown"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing countdown condition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZenModeConfig"

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v1

    :cond_2
    :goto_0
    return-wide v1
.end method

.method private static greylist-max-o tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    array-length v2, v1

    new-array v2, v2, [I

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    aget-object v4, v1, v3

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_2

    return-object v0

    :cond_2
    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public static greylist-max-o tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "condition"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    move v1, v2

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    new-instance v3, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    const-string/jumbo v4, "userId"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x2710

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    const-string v4, "calendar"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v2, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    :cond_2
    const-string v4, "calendarId"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/service/notification/ZenModeConfig;->tryParseLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    const-string/jumbo v2, "reply"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    return-object v3
.end method

.method private static greylist-max-o tryParseHourAndMinute(Ljava/lang/String;)[I
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v4, v1, v3

    aput v5, v1, v2

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method private static greylist-max-o tryParseInt(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return p1
.end method

.method private static greylist-max-o tryParseLong(Ljava/lang/String;J)J
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    return-wide p1
.end method

.method private static blacklist tryParseLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object p1
.end method

.method public static greylist tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "condition"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "schedule"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    return-object v3

    :cond_1
    const-string/jumbo v4, "start"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v4

    const-string v5, "end"

    invoke-virtual {p0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v5

    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    const-string v6, "days"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\."

    invoke-static {v6, v7}, Landroid/service/notification/ZenModeConfig;->tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    aget v6, v4, v1

    iput v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    aget v6, v4, v0

    iput v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    aget v6, v5, v1

    iput v6, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    aget v0, v5, v0

    iput v0, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    const-string v0, "exitAtAlarm"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    return-object v3

    :cond_3
    :goto_1
    return-object v3
.end method

.method private static greylist-max-o tryParseZenMode(Ljava/lang/String;I)I
    .locals 2

    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method private static blacklist unsafeBoolean(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, v0, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    return-object v0
.end method

.method private static blacklist writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    return-void
.end method

.method public static blacklist writeConditionXml(Landroid/service/notification/Condition;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "id"

    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "summary"

    iget-object v2, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "line1"

    iget-object v2, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "line2"

    iget-object v2, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "icon"

    iget v2, p0, Landroid/service/notification/Condition;->icon:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "state"

    iget v2, p0, Landroid/service/notification/Condition;->state:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "source"

    iget v2, p0, Landroid/service/notification/Condition;->source:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string v0, "flags"

    iget v2, p0, Landroid/service/notification/Condition;->flags:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static blacklist writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "enabled"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "name"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string/jumbo v0, "zen"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "pkg"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "component"

    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "configActivity"

    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conditionId"

    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    const-string v0, "creationTime"

    iget-wide v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-interface {p1, v2, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "enabler"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeConditionXml(Landroid/service/notification/Condition;Lcom/android/modules/utils/TypedXmlSerializer;)V

    :cond_6
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyXml(Landroid/service/notification/ZenPolicy;Lcom/android/modules/utils/TypedXmlSerializer;)V

    :cond_7
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-static {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeZenDeviceEffectsXml(Landroid/service/notification/ZenDeviceEffects;Lcom/android/modules/utils/TypedXmlSerializer;)V

    :cond_8
    const-string/jumbo v0, "modified"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->modified:Z

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "userInvokable"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string/jumbo v0, "rule_icon"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string/jumbo v0, "triggerDesc"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    const-string/jumbo v0, "type"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "userModifiedFields"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "policyUserModifiedFields"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "zdeUserModifiedFields"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    const-string v3, "deletionInstant"

    invoke-interface {p1, v2, v3, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    return-void
.end method

.method private static blacklist writeRulesToParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method

.method private static blacklist writeStringSet(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    nop

    const-string v4, "\\"

    const-string v5, "\\\\"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\,"

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v3, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v2, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static blacklist writeZenDeviceEffectsXml(Landroid/service/notification/ZenDeviceEffects;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    nop

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v0

    const-string/jumbo v1, "zdeDisplayGrayscale"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    nop

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v0

    const-string/jumbo v1, "zdeSuppressAmbientDisplay"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v0, "zdeDimWallpaper"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v0, "zdeUseNightMode"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    nop

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v0

    const-string/jumbo v1, "zdeDisableAutoBrightness"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    nop

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v0

    const-string/jumbo v1, "zdeDisableTapToWake"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    nop

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v0

    const-string/jumbo v1, "zdeDisableTiltToWake"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v0, "zdeDisableTouch"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    nop

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v0

    const-string/jumbo v1, "zdeMinimizeRadioUsage"

    invoke-static {p1, v1, v0}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v0, "zdeMaximizeDoze"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeBooleanIfTrue(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v0, "zdeExtraEffects"

    invoke-virtual {p0}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeStringSet(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method private static blacklist writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "callsFrom"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string/jumbo v0, "messagesFrom"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "convosFrom"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_4

    invoke-interface {p2, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "priorityChannelsAllowed"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_4

    invoke-interface {p2, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    invoke-interface {p2, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    invoke-interface {p2, v1, p0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    :goto_1
    return-void
.end method

.method public static blacklist writeZenPolicyXml(Landroid/service/notification/ZenPolicy;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "callsFrom"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo v0, "messagesFrom"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo v0, "repeatCallers"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    const-string v0, "convosFrom"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    const-string v0, "alarms"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo v0, "media"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo v0, "system"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo v0, "reminders"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    const-string v0, "events"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo v0, "showFullScreenIntent"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo v0, "showLights"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo v0, "shoePeek"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo v0, "showStatusBarIcons"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo v0, "showBadges"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo v0, "showAmbient"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    const-string/jumbo v0, "showNotificationList"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "priorityChannelsAllowed"

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/service/notification/ZenModeConfig;->writeZenPolicyState(Ljava/lang/String;ILcom/android/modules/utils/TypedXmlSerializer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {p1}, Landroid/service/notification/ZenAdapters;->notificationPolicyToZenPolicy(Landroid/app/NotificationManager$Policy;)Landroid/service/notification/ZenPolicy;

    move-result-object v4

    iput-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto/16 :goto_9

    :cond_1
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/service/notification/ZenModeConfig;->setAllowAlarms(Z)V

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    move v0, v3

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_5

    :cond_7
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    move v0, v3

    goto :goto_6

    :cond_8
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_9

    move v0, v3

    goto :goto_7

    :cond_9
    move v0, v2

    :goto_7
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v0, v4}, Landroid/service/notification/ZenModeConfig;->normalizePrioritySenders(II)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v0, v4}, Landroid/service/notification/ZenModeConfig;->normalizePrioritySenders(II)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-eq v0, v1, :cond_a

    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    :cond_a
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_b

    move v0, v3

    goto :goto_8

    :cond_b
    move v0, v2

    :goto_8
    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    iget v4, p1, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-static {v0, v4, v5}, Landroid/service/notification/ZenModeConfig;->normalizeConversationSenders(ZII)I

    move-result v0

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    iget v0, p1, Landroid/app/NotificationManager$Policy;->state:I

    if-eq v0, v1, :cond_c

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/notification/ZenModeConfig;->setAllowPriorityChannels(Z)V

    :cond_c
    :goto_9
    iget v0, p1, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->exceptionContactsFlag:I

    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    :cond_d
    iget v0, p1, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    iput v0, p0, Landroid/service/notification/ZenModeConfig;->appBypassDndFlag:I

    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->getAppBypassDndList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    sget-object v0, Landroid/service/notification/ZenModeConfig;->ZenConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->getAppBypassDndList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Landroid/service/notification/ZenModeConfig;->allowAppBypassDndList:Ljava/util/List;

    monitor-exit v0

    goto :goto_a

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_e
    :goto_a
    iget v0, p1, Landroid/app/NotificationManager$Policy;->state:I

    if-eq v0, v1, :cond_10

    iget v0, p1, Landroid/app/NotificationManager$Policy;->state:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_f

    move v2, v3

    :cond_f
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    :cond_10
    return-void
.end method

.method public greylist-max-o copy()Landroid/service/notification/ZenModeConfig;
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1, v0}, Landroid/service/notification/ZenModeConfig;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method blacklist ensureManualZenRule()V
    .locals 3

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v0, :cond_0

    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const-string v1, "android"

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iput-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    :cond_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Landroid/service/notification/ZenModeConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/notification/ZenModeConfig;

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->user:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->user:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    if-ne v3, v4, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->exceptionContactsFlag:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->exceptionContactsFlag:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/service/notification/ZenModeConfig;->appBypassDndFlag:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->appBypassDndFlag:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->allowAppBypassDndList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig;->allowAppBypassDndList:Ljava/util/List;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->allowAppBypassDndList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    iget-object v5, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, v2, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    if-ne v4, v5, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    nop

    :goto_1
    return v1

    :cond_4
    return v3
.end method

.method public blacklist getAllowCallsFrom()I
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    return v0
.end method

.method public blacklist getAllowConversationsFrom()I
    .locals 1

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    return v0
.end method

.method public blacklist getAllowMessagesFrom()I
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getSuppressedVisualEffects()I
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getZenPolicy()Landroid/service/notification/ZenPolicy;
    .locals 1

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->toZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 43

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    const-string v2, ","

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    invoke-static {v2, v1}, Landroid/service/notification/ZenModeConfig;->joinStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    :goto_0
    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->allowAppBypassDndList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->allowAppBypassDndList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->allowAppBypassDndList:Ljava/util/List;

    invoke-static {v2, v1}, Landroid/service/notification/ZenModeConfig;->joinStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    :goto_1
    move-object/from16 v21, v1

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v15, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    filled-new-array/range {v3 .. v22}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1

    :cond_2
    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    move-object/from16 v33, v1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    move-object/from16 v34, v1

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v36

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v37

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->exceptionContactsFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    iget v1, v0, Landroid/service/notification/ZenModeConfig;->appBypassDndFlag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v40, v20

    move-object/from16 v42, v21

    filled-new-array/range {v22 .. v42}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public blacklist isAllowAlarms()Z
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowCalls()Z
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowConversations()Z
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowEvents()Z
    .locals 3

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    return v0
.end method

.method public blacklist isAllowMedia()Z
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowMessages()Z
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowPriorityChannels()Z
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowReminders()Z
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowRepeatCallers()Z
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAllowSystem()Z
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isManualActive()Z
    .locals 3

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public greylist-max-o isValid()Z
    .locals 4

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist setAllowAlarms(Z)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowCalls(Z)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowCallsFrom(I)V
    .locals 3

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    new-instance v1, Landroid/service/notification/ZenPolicy$Builder;

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-direct {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    invoke-static {p1}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    :goto_0
    return-void
.end method

.method public blacklist setAllowConversations(Z)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowConversationsFrom(I)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowEvents(Z)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowMedia(Z)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowMessages(Z)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowMessagesFrom(I)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowPriorityChannels(Z)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowReminders(Z)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowRepeatCallers(Z)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAllowSystem(Z)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean p1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSuppressedVisualEffects(I)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t be used with modesUI flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o toNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_0

    or-int/lit8 v1, v1, 0x2

    :cond_0
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v7, v9, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_1

    or-int/lit8 v1, v1, 0x1

    :cond_1
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v10, 0x4

    invoke-virtual {v7, v10, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_2

    or-int/lit8 v1, v1, 0x10

    :cond_2
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v11, 0x5

    invoke-virtual {v7, v11, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    or-int/lit8 v1, v1, 0x20

    :cond_3
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v12, 0x6

    invoke-virtual {v7, v12, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    or-int/lit8 v1, v1, 0x40

    :cond_4
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v13, 0x7

    invoke-virtual {v7, v13, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    or-int/lit16 v1, v1, 0x80

    :cond_5
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v7

    if-ne v7, v8, :cond_6

    or-int/lit16 v1, v1, 0x100

    :cond_6
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v7

    const/4 v13, 0x3

    invoke-static {v7, v13}, Landroid/service/notification/ZenAdapters;->zenPolicyConversationSendersToNotificationPolicy(II)I

    move-result v4

    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v7

    if-ne v7, v8, :cond_7

    or-int/lit8 v1, v1, 0x8

    :cond_7
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v7

    const/4 v14, 0x2

    invoke-static {v7, v14}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v2

    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v7

    if-ne v7, v8, :cond_8

    or-int/lit8 v1, v1, 0x4

    :cond_8
    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v7}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v7

    invoke-static {v7, v14}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v3

    iget-boolean v7, v0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    iget-object v15, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v15, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {v15}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v15

    if-eq v15, v14, :cond_9

    move v15, v8

    goto :goto_0

    :cond_9
    move v15, v9

    :goto_0
    invoke-static {v7, v15}, Landroid/app/NotificationManager$Policy;->policyState(ZZ)I

    move-result v5

    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/16 v15, 0x9d

    invoke-direct {v0, v15, v9}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v12

    invoke-virtual {v7, v9, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v7

    xor-int/2addr v7, v8

    iget-object v9, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v9, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-direct {v0, v15, v8}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v12

    invoke-virtual {v9, v8, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v9

    xor-int/2addr v9, v8

    iget-object v12, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v12, v12, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-direct {v0, v15, v11}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v10

    invoke-virtual {v12, v11, v10}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v10

    xor-int/2addr v8, v10

    if-eqz v7, :cond_a

    if-eqz v9, :cond_a

    if-eqz v8, :cond_a

    or-int/lit8 v6, v6, 0x1

    :cond_a
    if-eqz v7, :cond_b

    or-int/lit8 v6, v6, 0x4

    :cond_b
    if-eqz v9, :cond_c

    or-int/lit8 v6, v6, 0x8

    :cond_c
    iget-object v10, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v10, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-direct {v0, v15, v14}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v11

    invoke-virtual {v10, v14, v11}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v10

    if-nez v10, :cond_d

    or-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v14

    :cond_d
    iget-object v10, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v10, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-direct {v0, v15, v13}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v11

    invoke-virtual {v10, v13, v11}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v10

    if-nez v10, :cond_e

    or-int/lit8 v6, v6, 0x20

    :cond_e
    iget-object v10, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v10, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v11, 0x4

    invoke-direct {v0, v15, v11}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v10

    if-nez v10, :cond_f

    or-int/lit8 v6, v6, 0x40

    :cond_f
    if-eqz v8, :cond_10

    or-int/lit16 v6, v6, 0x80

    :cond_10
    iget-object v10, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v10, v10, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    const/4 v11, 0x6

    invoke-direct {v0, v15, v11}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(II)Z

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v10

    if-nez v10, :cond_11

    or-int/lit16 v6, v6, 0x100

    :cond_11
    goto/16 :goto_1

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->isAllowConversations()Z

    move-result v7

    if-eqz v7, :cond_13

    or-int/lit16 v1, v1, 0x100

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->isAllowCalls()Z

    move-result v7

    if-eqz v7, :cond_14

    or-int/lit8 v1, v1, 0x8

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->isAllowMessages()Z

    move-result v7

    if-eqz v7, :cond_15

    or-int/lit8 v1, v1, 0x4

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->isAllowEvents()Z

    move-result v7

    if-eqz v7, :cond_16

    or-int/lit8 v1, v1, 0x2

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->isAllowReminders()Z

    move-result v7

    if-eqz v7, :cond_17

    or-int/lit8 v1, v1, 0x1

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->isAllowRepeatCallers()Z

    move-result v7

    if-eqz v7, :cond_18

    or-int/lit8 v1, v1, 0x10

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->isAllowAlarms()Z

    move-result v7

    if-eqz v7, :cond_19

    or-int/lit8 v1, v1, 0x20

    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->isAllowMedia()Z

    move-result v7

    if-eqz v7, :cond_1a

    or-int/lit8 v1, v1, 0x40

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->isAllowSystem()Z

    move-result v7

    if-eqz v7, :cond_1b

    or-int/lit16 v1, v1, 0x80

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->getAllowCallsFrom()I

    move-result v7

    invoke-static {v7, v2}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    move-result v2

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->getAllowMessagesFrom()I

    move-result v7

    invoke-static {v7, v3}, Landroid/service/notification/ZenModeConfig;->sourceToPrioritySenders(II)I

    move-result v3

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->getAllowConversationsFrom()I

    move-result v7

    invoke-static {v7, v4}, Landroid/service/notification/ZenAdapters;->zenPolicyConversationSendersToNotificationPolicy(II)I

    move-result v4

    iget-boolean v7, v0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    move v5, v7

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v7

    if-eqz v7, :cond_1c

    iget-boolean v7, v0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    iget-boolean v8, v0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-static {v7, v8}, Landroid/app/NotificationManager$Policy;->policyState(ZZ)I

    move-result v5

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->getSuppressedVisualEffects()I

    move-result v6

    :goto_1
    new-instance v18, Landroid/app/NotificationManager$Policy;

    iget v14, v0, Landroid/service/notification/ZenModeConfig;->exceptionContactsFlag:I

    iget-object v15, v0, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    iget v13, v0, Landroid/service/notification/ZenModeConfig;->appBypassDndFlag:I

    iget-object v12, v0, Landroid/service/notification/ZenModeConfig;->allowAppBypassDndList:Ljava/util/List;

    move-object/from16 v7, v18

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v6

    move-object/from16 v17, v12

    move v12, v5

    move/from16 v16, v13

    move v13, v4

    invoke-direct/range {v7 .. v17}, Landroid/app/NotificationManager$Policy;-><init>(IIIIIIILjava/util/List;ILjava/util/List;)V

    return-object v18
.end method

.method public blacklist toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v6, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v7, v2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    nop

    const/4 v8, 0x1

    invoke-direct {v0, v8, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v9

    if-eqz v9, :cond_0

    or-int/lit8 v3, v3, 0x1

    :cond_0
    nop

    const/4 v9, 0x2

    invoke-direct {v0, v9, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v11

    invoke-virtual {v1, v8, v11}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v11

    if-eqz v11, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    nop

    const/4 v11, 0x4

    invoke-direct {v0, v11, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v12

    invoke-virtual {v1, v9, v12}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v12

    if-eqz v12, :cond_2

    or-int/lit8 v3, v3, 0x4

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v12

    invoke-static {v12, v6}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v6

    :cond_2
    nop

    const/16 v12, 0x100

    invoke-direct {v0, v12, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v13

    const/16 v14, 0x8

    invoke-virtual {v1, v14, v13}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v13

    if-eqz v13, :cond_3

    or-int/lit16 v3, v3, 0x100

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v13

    invoke-static {v13, v7}, Landroid/service/notification/ZenAdapters;->zenPolicyConversationSendersToNotificationPolicy(II)I

    move-result v7

    goto :goto_0

    :cond_3
    const/4 v7, 0x3

    :goto_0
    nop

    invoke-direct {v0, v14, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v13

    const/4 v15, 0x3

    invoke-virtual {v1, v15, v13}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v13

    if-eqz v13, :cond_4

    or-int/lit8 v3, v3, 0x8

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v13

    invoke-static {v13, v5}, Landroid/service/notification/ZenAdapters;->peopleTypeToPrioritySenders(II)I

    move-result v5

    :cond_4
    nop

    const/16 v13, 0x10

    invoke-direct {v0, v13, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v12

    invoke-virtual {v1, v11, v12}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v12

    if-eqz v12, :cond_5

    or-int/lit8 v3, v3, 0x10

    :cond_5
    nop

    const/16 v12, 0x20

    invoke-direct {v0, v12, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v15

    const/4 v12, 0x5

    invoke-virtual {v1, v12, v15}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v15

    if-eqz v15, :cond_6

    or-int/lit8 v3, v3, 0x20

    :cond_6
    nop

    const/16 v15, 0x40

    invoke-direct {v0, v15, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v9

    const/4 v15, 0x6

    invoke-virtual {v1, v15, v9}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v9

    if-eqz v9, :cond_7

    or-int/lit8 v3, v3, 0x40

    :cond_7
    nop

    const/16 v9, 0x80

    invoke-direct {v0, v9, v2}, Landroid/service/notification/ZenModeConfig;->isPriorityCategoryEnabled(ILandroid/app/NotificationManager$Policy;)Z

    move-result v15

    const/4 v13, 0x7

    invoke-virtual {v1, v13, v15}, Landroid/service/notification/ZenPolicy;->isCategoryAllowed(IZ)Z

    move-result v13

    if-eqz v13, :cond_8

    or-int/lit16 v3, v3, 0x80

    :cond_8
    nop

    invoke-direct {v0, v11, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v13

    invoke-virtual {v1, v10, v13}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v10

    xor-int/2addr v10, v8

    nop

    invoke-direct {v0, v14, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v13

    invoke-virtual {v1, v8, v13}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v13

    xor-int/2addr v13, v8

    move/from16 v23, v13

    nop

    invoke-direct {v0, v9, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v9

    invoke-virtual {v1, v12, v9}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v9

    xor-int/2addr v9, v8

    if-eqz v10, :cond_9

    if-eqz v23, :cond_9

    if-eqz v9, :cond_9

    or-int/lit8 v4, v4, 0x1

    :cond_9
    if-eqz v10, :cond_a

    or-int/lit8 v4, v4, 0x4

    :cond_a
    if-eqz v23, :cond_b

    or-int/lit8 v4, v4, 0x8

    :cond_b
    nop

    const/16 v12, 0x10

    invoke-direct {v0, v12, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v12

    const/4 v13, 0x2

    invoke-virtual {v1, v13, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v12

    if-nez v12, :cond_c

    or-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v13

    :cond_c
    nop

    const/16 v12, 0x20

    invoke-direct {v0, v12, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v12

    const/4 v13, 0x3

    invoke-virtual {v1, v13, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v12

    if-nez v12, :cond_d

    or-int/lit8 v4, v4, 0x20

    :cond_d
    nop

    const/16 v12, 0x40

    invoke-direct {v0, v12, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v12

    invoke-virtual {v1, v11, v12}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v11

    if-nez v11, :cond_e

    or-int/lit8 v4, v4, 0x40

    :cond_e
    if-eqz v9, :cond_f

    or-int/lit16 v4, v4, 0x80

    :cond_f
    nop

    const/16 v11, 0x100

    invoke-direct {v0, v11, v2}, Landroid/service/notification/ZenModeConfig;->isVisualEffectAllowed(ILandroid/app/NotificationManager$Policy;)Z

    move-result v11

    const/4 v12, 0x6

    invoke-virtual {v1, v12, v11}, Landroid/service/notification/ZenPolicy;->isVisualEffectAllowed(IZ)Z

    move-result v11

    if-nez v11, :cond_10

    or-int/lit16 v4, v4, 0x100

    :cond_10
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->isContactsOverridden()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getExceptionContacts()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v11, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    goto :goto_1

    :cond_12
    goto :goto_2

    :cond_13
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v12

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->isAppBypassDndOverridden()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getAppsToBypassDnd()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v15, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    goto :goto_3

    :cond_15
    goto :goto_4

    :cond_16
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->getAppBypassDndList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v15, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getExceptionContactsFlag()I

    move-result v14

    const/4 v12, -0x1

    if-ne v14, v12, :cond_17

    iget v13, v2, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    move/from16 v19, v13

    goto :goto_5

    :cond_17
    move/from16 v19, v14

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getAppBypassDndFlag()I

    move-result v13

    if-ne v13, v12, :cond_18

    iget v12, v2, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    move/from16 v21, v12

    goto :goto_6

    :cond_18
    move/from16 v21, v13

    :goto_6
    iget v12, v2, Landroid/app/NotificationManager$Policy;->state:I

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v16

    if-eqz v16, :cond_19

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->hasPriorityChannels()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/service/notification/ZenPolicy;->stateToBoolean(IZ)Z

    move-result v0

    invoke-static {v8, v0}, Landroid/app/NotificationManager$Policy;->policyState(ZZ)I

    move-result v12

    move v0, v12

    goto :goto_7

    :cond_19
    move v0, v12

    :goto_7
    new-instance v1, Landroid/app/NotificationManager$Policy;

    move-object v12, v1

    move v8, v13

    move v13, v3

    move/from16 v24, v14

    move v14, v5

    move-object/from16 v25, v15

    move v15, v6

    move/from16 v16, v4

    move/from16 v17, v0

    move/from16 v18, v7

    move-object/from16 v20, v11

    move-object/from16 v22, v25

    invoke-direct/range {v12 .. v22}, Landroid/app/NotificationManager$Policy;-><init>(IIIIIIILjava/util/List;ILjava/util/List;)V

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ",allowAlarms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allowMedia="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allowSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allowReminders="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allowEvents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allowCalls="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allowRepeatCallers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allowMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allowConversations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allowCallsFrom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allowMessagesFrom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allowConvFrom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-static {v2}, Landroid/service/notification/ZenPolicy;->conversationTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",exceptionContactsFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->exceptionContactsFlag:I

    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->exceptionContactsFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allowExceptionContacts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",appBypassDndFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->appBypassDndFlag:I

    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->appBypassDndFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",allowAppBypassDndList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->allowAppBypassDndList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nsuppressedVisualEffects="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\nhasPriorityChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",allowPriorityChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "\nareChannelsBypassingDnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ",\nautomaticRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->rulesToString(Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\nmanualRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ",\ndeletedRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->rulesToString(Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method blacklist toZenPolicy()Landroid/service/notification/ZenPolicy;
    .locals 4

    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowRepeatCallers(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMessages(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowReminders(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowEvents(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowSystem(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowConversations(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;

    goto/16 :goto_a

    :cond_3
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showFullScreenIntent(Z)Landroid/service/notification/ZenPolicy$Builder;

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showLights(Z)Landroid/service/notification/ZenPolicy$Builder;

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showPeeking(Z)Landroid/service/notification/ZenPolicy$Builder;

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_6

    :cond_7
    move v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showStatusBarIcons(Z)Landroid/service/notification/ZenPolicy$Builder;

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_7

    :cond_8
    move v1, v3

    :goto_7
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showBadges(Z)Landroid/service/notification/ZenPolicy$Builder;

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_8

    :cond_9
    move v1, v3

    :goto_8
    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->showInAmbientDisplay(Z)Landroid/service/notification/ZenPolicy$Builder;

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_a

    goto :goto_9

    :cond_a
    move v2, v3

    :goto_9
    invoke-virtual {v0, v2}, Landroid/service/notification/ZenPolicy$Builder;->showInNotificationList(Z)Landroid/service/notification/ZenPolicy$Builder;

    :goto_a
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->appBypassDndFlag:I

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->setAppBypassDndFlag(I)Landroid/service/notification/ZenPolicy$Builder;

    iget v1, p0, Landroid/service/notification/ZenModeConfig;->exceptionContactsFlag:I

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->setExceptionContactsFlag(I)Landroid/service/notification/ZenPolicy$Builder;

    const-string v1, ","

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    invoke-static {v1, v2}, Landroid/service/notification/ZenModeConfig;->joinStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowExceptionContacts(Ljava/lang/String;)Landroid/service/notification/ZenPolicy$Builder;

    const-string v1, ";"

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->allowAppBypassDndList:Ljava/util/List;

    invoke-static {v1, v2}, Landroid/service/notification/ZenModeConfig;->joinStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAppsToBypassDnd(Ljava/lang/String;)Landroid/service/notification/ZenPolicy$Builder;

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    :cond_b
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v0, p1, p2}, Landroid/service/notification/ZenModeConfig;->writeRulesToParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;I)V

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-static {v0, p1, p2}, Landroid/service/notification/ZenModeConfig;->writeRulesToParcel(Landroid/util/ArrayMap;Landroid/os/Parcel;I)V

    :cond_1
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->exceptionContactsFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->appBypassDndFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Landroid/service/notification/ZenModeConfig;->ZenConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->allowAppBypassDndList:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Integer;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getCurrentXmlVersion()I

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "zen"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-nez p2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string/jumbo v4, "version"

    invoke-interface {p1, v1, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "user"

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "allow"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "calls"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "repeatCallers"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "messages"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "reminders"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "events"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "callsFrom"

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "messagesFrom"

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "alarms"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "media"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "system"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "convos"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "convosFrom"

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "exceptionContactsFlag"

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->exceptionContactsFlag:I

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    const-string v5, ","

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->allowExceptionContacts:Ljava/util/List;

    invoke-static {v5, v4}, Landroid/service/notification/ZenModeConfig;->joinStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "exceptionContacts"

    invoke-interface {p1, v1, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    const-string v4, "appBypassDndFlag"

    iget v6, p0, Landroid/service/notification/ZenModeConfig;->appBypassDndFlag:I

    invoke-interface {p1, v1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->allowAppBypassDndList:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->allowAppBypassDndList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->allowAppBypassDndList:Ljava/util/List;

    invoke-static {v5, v4}, Landroid/service/notification/ZenModeConfig;->joinStrings(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "appBypassDndList"

    invoke-interface {p1, v1, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "priorityChannelsAllowed"

    iget-boolean v5, p0, Landroid/service/notification/ZenModeConfig;->allowPriorityChannels:Z

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "disallow"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "visualEffects"

    iget v5, p0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-interface {p1, v1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_4

    const-string/jumbo v3, "manual"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v4, p1}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    const-string/jumbo v5, "ruleId"

    if-ge v4, v3, :cond_5

    iget-object v6, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    const-string v8, "automatic"

    invoke-interface {p1, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v7, p1}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/app/Flags;->modesApi()Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez p3, :cond_6

    const/4 v4, 0x0

    :goto_2
    iget-object v6, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    iget-object v6, p0, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    const-string v7, "deleted"

    invoke-interface {p1, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-interface {p1, v1, v5, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v6, p1}, Landroid/service/notification/ZenModeConfig;->writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {p1, v1, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const-string/jumbo v4, "state"

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "areChannelsBypassingDnd"

    iget-boolean v6, p0, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-interface {p1, v1, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
