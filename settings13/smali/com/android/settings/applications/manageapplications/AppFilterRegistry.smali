.class public Lcom/android/settings/applications/manageapplications/AppFilterRegistry;
.super Ljava/lang/Object;
.source "AppFilterRegistry.java"


# static fields
.field private static sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;


# instance fields
.field private final mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 111
    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 117
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settings/applications/AppStatePowerBridge;->FILTER_POWER_ALLOWLISTED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    sget v2, Lcom/android/settings/R$string;->high_power_filter_on:I

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 125
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    sget v2, Lcom/android/settings/R$string;->filter_all_apps:I

    const/4 v4, 0x1

    invoke-direct {p0, v1, v4, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 133
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v4, 0x4

    invoke-direct {p0, v1, v4, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 139
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget v1, Lcom/android/settings/R$string;->filter_enabled_apps:I

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4, v1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 145
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget v3, Lcom/android/settings/R$string;->filter_apps_disabled:I

    const/4 v4, 0x7

    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 151
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget v3, Lcom/android/settings/R$string;->filter_instant_apps:I

    const/4 v4, 0x6

    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 157
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_RECENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget v3, Lcom/android/settings/R$string;->sort_order_recent_notification:I

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 163
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_FREQUENCY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget v3, Lcom/android/settings/R$string;->sort_order_frequent_notification:I

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 169
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget v3, Lcom/android/settings/R$string;->category_personal:I

    const/16 v4, 0x8

    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 175
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget v3, Lcom/android/settings/R$string;->category_work:I

    const/16 v4, 0x9

    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 181
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v3, 0xa

    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v3

    .line 187
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget v3, Lcom/android/settings/R$string;->filter_overlay_apps:I

    const/16 v4, 0xb

    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 193
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget v3, Lcom/android/settings/R$string;->filter_write_settings_apps:I

    const/16 v4, 0xc

    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 199
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateInstallAppsBridge;->FILTER_APP_SOURCES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget v4, Lcom/android/settings/R$string;->filter_install_sources_apps:I

    const/16 v5, 0xd

    invoke-direct {p0, v1, v5, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v5

    .line 204
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->FILTER_CHANGE_WIFI_STATE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v4, 0xf

    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 210
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget v3, Lcom/android/settings/R$string;->sort_order_notification_turned_off_notification:I

    const/16 v4, 0x10

    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 216
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTI_ALL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v3, 0x15

    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v3

    .line 223
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateManageExternalStorageBridge;->FILTER_MANAGE_EXTERNAL_STORAGE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget v3, Lcom/android/settings/R$string;->filter_manage_external_storage:I

    const/16 v4, 0x11

    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 229
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateAlarmsAndRemindersBridge;->FILTER_CLOCK_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget v3, Lcom/android/settings/R$string;->alarms_and_reminders_title:I

    const/16 v4, 0x12

    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 235
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateMediaManagementAppsBridge;->FILTER_MEDIA_MANAGEMENT_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget v3, Lcom/android/settings/R$string;->media_management_apps_title:I

    const/16 v4, 0x13

    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 241
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settings/applications/AppStateLocaleBridge;->FILTER_APPS_LOCALE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget v3, Lcom/android/settings/R$string;->app_locale_picker_title:I

    const/16 v4, 0x14

    invoke-direct {p0, v1, v4, v3}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v4

    .line 248
    new-instance p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_APP_SETTING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v3, 0x16

    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object p0, v0, v3

    .line 254
    sget-boolean p0, Lcom/samsung/android/settings/Rune;->FEATURE_MANAGE_UNKNOWN_APPS:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x17

    .line 255
    new-instance v1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_MANAGE_UNKNOWN_SOURCE_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v3, 0x17

    sget v4, Lcom/android/settings/R$string;->sec_manage_unknown_app:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/applications/manageapplications/AppFilterItem;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V

    aput-object v1, v0, p0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;
    .locals 1

    .line 266
    sget-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    invoke-direct {v0}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;-><init>()V

    sput-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    .line 269
    :cond_0
    sget-object v0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->sRegistry:Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->mFilters:[Lcom/android/settings/applications/manageapplications/AppFilterItem;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getDefaultFilterType(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/16 p0, 0x17

    return p0

    :pswitch_3
    const/16 p0, 0x16

    return p0

    :pswitch_4
    const/16 p0, 0x14

    return p0

    :pswitch_5
    const/16 p0, 0x13

    return p0

    :pswitch_6
    const/16 p0, 0x12

    return p0

    :pswitch_7
    const/16 p0, 0x11

    return p0

    :pswitch_8
    const/16 p0, 0xf

    return p0

    :pswitch_9
    const/16 p0, 0xd

    return p0

    :pswitch_a
    const/16 p0, 0xc

    return p0

    :pswitch_b
    const/16 p0, 0xb

    return p0

    :pswitch_c
    const/4 p0, 0x0

    return p0

    :pswitch_d
    const/16 p0, 0xa

    return p0

    :pswitch_e
    const/16 p0, 0x15

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
