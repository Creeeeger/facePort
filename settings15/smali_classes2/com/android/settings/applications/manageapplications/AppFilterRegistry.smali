.class public final Lcom/android/settings/applications/manageapplications/AppFilterRegistry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;


# instance fields
.field public final mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x22

    new-array v0, v0, [Lcom/android/settings/applications/manageapplications/AppFilterItem;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$30;

    sget-object v2, Lcom/android/settings/applications/AppStatePowerBridge;->FILTER_POWER_ALLOWLISTED:Lcom/android/settingslib/applications/ApplicationsState$30;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$15;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$30;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    const/4 v2, 0x0

    const v4, 0x7f1411b8

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$30;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$9;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$30;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    const/4 v2, 0x1

    const v4, 0x7f140f64

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$9;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_INSTALLED_APP_BY_USER:Lcom/android/settingslib/applications/ApplicationsState$9;

    const/16 v2, 0x1f

    const v5, 0x7f14249c

    invoke-direct {p0, v1, v2, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    const/4 v1, 0x5

    const v2, 0x7f140f6d

    invoke-direct {p0, v3, v1, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v1

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$15;

    const/4 v2, 0x7

    const v3, 0x7f140f66

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$9;

    const/4 v2, 0x6

    const v3, 0x7f140f6f

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_RECENCY:Lcom/android/settings/applications/AppStateNotificationBridge$1;

    const/4 v2, 0x2

    const v3, 0x7f142ce4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_FREQUENCY:Lcom/android/settings/applications/AppStateNotificationBridge$1;

    const/4 v2, 0x3

    const v3, 0x7f142ce2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$7;

    const/16 v2, 0x8

    const v3, 0x7f1408f8

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$9;

    const/16 v2, 0x9

    const v3, 0x7f1408fc

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settings/applications/AppStateUsageBridge$1;

    const/16 v2, 0xa

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settings/applications/AppStateOverlayBridge$1;

    const/16 v2, 0xb

    const v3, 0x7f140f72

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/samsung/android/settings/applications/AppStateMediaRoutingAppsBridge;->FILTER_MEDIA_ROUTING:Lcom/samsung/android/settings/applications/AppStateMediaRoutingAppsBridge$1;

    const/16 v2, 0x21

    const v3, 0x7f14177c

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/samsung/android/settings/applications/AppStateManageFullScreenIntentsBridge;->FILTER_USE_FULL_SCREEN_INTENT:Lcom/samsung/android/settings/applications/AppStateManageFullScreenIntentsBridge$1;

    const/16 v2, 0x20

    const v3, 0x7f14243c

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/settings/applications/AppStateWriteSettingsBridge$1;

    const/16 v2, 0xc

    const v3, 0x7f140f76

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateInstallAppsBridge;->FILTER_APP_SOURCES:Lcom/android/settings/applications/AppStateInstallAppsBridge$1;

    const/16 v2, 0xd

    const v5, 0x7f140f6e

    invoke-direct {p0, v1, v2, v5}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->FILTER_CHANGE_WIFI_STATE:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$1;

    const/16 v2, 0xf

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settings/applications/AppStateNotificationBridge$1;

    const/16 v2, 0x10

    const v3, 0x7f140f71

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;->FILTER_MANAGE_EXTERNAL_STORAGE:Lcom/android/settings/applications/AppStateManageExternalStorageBridge$1;

    const/16 v2, 0x11

    const v3, 0x7f140f70

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge;->FILTER_CLOCK_APPS:Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge$1;

    const v2, 0x7f1402e4

    const/16 v3, 0x12

    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v3

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateMediaManagementAppsBridge;->FILTER_MEDIA_MANAGEMENT_APPS:Lcom/android/settings/applications/AppStateMediaManagementAppsBridge$1;

    const v2, 0x7f14176d

    const/16 v3, 0x13

    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v3

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateLocaleBridge;->FILTER_APPS_LOCALE:Lcom/android/settings/applications/AppStateLocaleBridge$1;

    const v2, 0x7f140386

    const/16 v3, 0x14

    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v3

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->FILTER_BATTERY_UNRESTRICTED_APPS:Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;

    const v2, 0x7f140f6b

    const/16 v3, 0x15

    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v3

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->FILTER_BATTERY_OPTIMIZED_APPS:Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;

    const v2, 0x7f140f69

    const/16 v3, 0x16

    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v3

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->FILTER_BATTERY_RESTRICTED_APPS:Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;

    const v2, 0x7f140f6a

    const/16 v3, 0x17

    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v3

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge;->FILTER_LONG_JOBS_APPS:Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$1;

    const v2, 0x7f14164f

    const/16 v3, 0x18

    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v3

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateClonedAppsBridge;->FILTER_APPS_CLONE:Lcom/android/settings/applications/AppStateClonedAppsBridge$1;

    const v2, 0x7f140961

    const/16 v3, 0x19

    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v3

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/nfc/AppStateNfcTagAppsBridge;->FILTER_APPS_NFC_TAG:Lcom/android/settings/nfc/AppStateNfcTagAppsBridge$1;

    const v2, 0x7f140921

    const/16 v3, 0x1a

    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v3

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateTurnScreenOnBridge;->FILTER_TURN_SCREEN_ON_APPS:Lcom/android/settings/applications/AppStateTurnScreenOnBridge$1;

    const v2, 0x7f142fda

    const/16 v3, 0x1b

    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v3

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTI_ALL:Lcom/android/settings/applications/AppStateNotificationBridge$1;

    const/16 v2, 0x1c

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_APP_SETTING:Lcom/android/settingslib/applications/ApplicationsState$9;

    const/16 v2, 0x1d

    invoke-direct {p0, v1, v2, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v2

    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_MANAGE_UNKNOWN_SOURCE_APPS:Lcom/android/settingslib/applications/ApplicationsState$30;

    const v2, 0x7f142560

    const/16 v3, 0x1e

    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v3

    return-void
.end method

.method public static getDefaultFilterType(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    const/4 p0, 0x4

    return p0

    :pswitch_0
    const/16 p0, 0x21

    return p0

    :pswitch_1
    const/16 p0, 0x20

    return p0

    :pswitch_2
    const/16 p0, 0x1e

    return p0

    :pswitch_3
    const/16 p0, 0x1b

    return p0

    :pswitch_4
    const/16 p0, 0x1a

    return p0

    :pswitch_5
    const/16 p0, 0x19

    return p0

    :pswitch_6
    const/16 p0, 0x18

    return p0

    :pswitch_7
    const/16 p0, 0x16

    return p0

    :pswitch_8
    const/16 p0, 0x14

    return p0

    :pswitch_9
    const/16 p0, 0x13

    return p0

    :pswitch_a
    const/16 p0, 0x12

    return p0

    :pswitch_b
    const/16 p0, 0x11

    return p0

    :pswitch_c
    const/16 p0, 0xf

    return p0

    :pswitch_d
    const/16 p0, 0xd

    return p0

    :pswitch_e
    const/16 p0, 0xc

    return p0

    :pswitch_f
    const/16 p0, 0xb

    return p0

    :pswitch_10
    const/4 p0, 0x0

    return p0

    :pswitch_11
    const/16 p0, 0xa

    return p0

    :cond_0
    const/16 p0, 0x1d

    return p0

    :cond_1
    const/16 p0, 0x1c

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;
    .locals 1

    sget-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    invoke-direct {v0}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;-><init>()V

    sput-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    :cond_0
    sget-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    return-object v0
.end method
