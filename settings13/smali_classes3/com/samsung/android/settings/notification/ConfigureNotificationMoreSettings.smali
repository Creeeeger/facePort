.class public Lcom/samsung/android/settings/notification/ConfigureNotificationMoreSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConfigureNotificationMoreSettings.java"


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 186
    new-instance v0, Lcom/samsung/android/settings/notification/ConfigureNotificationMoreSettings$1;

    sget v1, Lcom/android/settings/R$xml;->sec_configure_notification_more_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/notification/ConfigureNotificationMoreSettings$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/notification/ConfigureNotificationMoreSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 221
    new-instance v0, Lcom/samsung/android/settings/notification/ConfigureNotificationMoreSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/ConfigureNotificationMoreSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/ConfigureNotificationMoreSettings;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Application;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance p2, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;

    const-string v0, "app_and_notif_cell_broadcast_settings"

    invoke-direct {p2, p0, v0}, Lcom/android/settings/notification/EmergencyBroadcastPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance p2, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;

    const-string v0, "key_notification_icons_on_status_bar"

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/notification/NotificationIconOnStatusBarController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance p2, Lcom/samsung/android/settings/notification/StatusBarNetworkSpeedController;

    const-string v0, "network_speed"

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/notification/StatusBarNetworkSpeedController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance p2, Lcom/samsung/android/settings/notification/StatusBarShowNetworkInfoController;

    const-string v0, "show_network_info"

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/notification/StatusBarShowNetworkInfoController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance p2, Lcom/samsung/android/settings/notification/LedIndicatorPreferenceController;

    const-string v0, "key_simple_led_indicator_settings"

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/notification/LedIndicatorPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance p2, Lcom/samsung/android/settings/notification/FloatingIconsNotificationPreferenceController;

    const-string v0, "floating_icons"

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/notification/FloatingIconsNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance p2, Lcom/samsung/android/settings/notification/NotificationHistoryPreferenceController;

    const-string v0, "notification_history"

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/notification/NotificationHistoryPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance p2, Lcom/samsung/android/settings/notification/StatusBarShowDateController;

    const-string v0, "show_date"

    invoke-direct {p2, p0, v0, p3}, Lcom/samsung/android/settings/notification/StatusBarShowDateController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance p2, Lcom/android/settings/notification/AssistantReminderPreferenceController;

    const-string p3, "asst_notification_reminder"

    invoke-direct {p2, p0, p3}, Lcom/android/settings/notification/AssistantReminderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public static resetReminderList(Landroid/content/Context;)V
    .locals 7

    .line 283
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    .line 284
    invoke-static {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getEnableReminderList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 285
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 286
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/settings/notification/NotificationBackend;->setReminderEnabled(IZLjava/util/List;)Z

    .line 288
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getCallAndMsgPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, ","

    .line 290
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 291
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 293
    :try_start_0
    invoke-static {p0, v4}, Lcom/samsung/android/settings/notification/reminder/NotificationUtils;->getUid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/settings/notification/NotificationBackend;->setReminderEnabledForPackage(Ljava/lang/String;IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "ConfigNotiSettings"

    const-string v6, "Error calling NoMan"

    .line 295
    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-static {p1, v0, p0, v1}, Lcom/samsung/android/settings/notification/ConfigureNotificationMoreSettings;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ConfigNotiSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x151

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 99
    sget p0, Lcom/android/settings/R$xml;->sec_configure_notification_more_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status_bar_settings"

    .line 108
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    const-string v2, "configure_notifications_more_advanced"

    .line 109
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    const-string v3, "emergency_alerts_category"

    .line 110
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    const-string v4, "manage_conversations"

    .line 111
    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    const-string v5, "notification_history"

    .line 112
    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    const-string v6, "floating_icons"

    .line 113
    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Landroidx/preference/SecPreference;

    const-string v7, "asst_capabilities_actions_replies"

    .line 114
    invoke-virtual {p1, v7}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Landroidx/preference/SwitchPreference;

    const-string v8, "asst_notification_reminder"

    .line 115
    invoke-virtual {p1, v8}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    check-cast v8, Landroidx/preference/SecSwitchPreferenceScreen;

    const-string v9, "key_simple_led_indicator_settings"

    .line 116
    invoke-virtual {p1, v9}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v9

    check-cast v9, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_7

    .line 117
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    if-eqz v3, :cond_1

    .line 122
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    if-eqz v2, :cond_7

    if-eqz v4, :cond_2

    .line 126
    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    if-eqz v5, :cond_3

    .line 129
    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    if-eqz v6, :cond_4

    .line 132
    invoke-virtual {v2, v6}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    if-eqz v7, :cond_5

    .line 135
    invoke-virtual {v2, v7}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    if-eqz v8, :cond_6

    .line 138
    invoke-virtual {v2, v8}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    if-eqz v9, :cond_7

    .line 141
    invoke-virtual {v2, v9}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 145
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/Utils;->isSmsCapable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_8

    if-eqz v3, :cond_8

    .line 147
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_8
    return-void
.end method
