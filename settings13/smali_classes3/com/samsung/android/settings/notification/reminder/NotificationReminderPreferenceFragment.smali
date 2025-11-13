.class public Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NotificationReminderPreferenceFragment.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mNotificationReminderApps:Landroidx/preference/SecPreferenceScreen;

.field mNotificationTimeInterval:Landroidx/preference/SecDropDownPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field mVibrateReminderSwitch:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    new-instance v0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0
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

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance p2, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;

    const-string p3, "notification_time_interval"

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderTimeIntervalController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance p2, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderAppPickerPreferenceController;

    const-string p3, "notification_reminder_app_picker"

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderAppPickerPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private initUI()V
    .locals 1

    const-string v0, "notification_reminder_vibrate"

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->mVibrateReminderSwitch:Landroidx/preference/SwitchPreference;

    const-string v0, "notification_time_interval"

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->mNotificationTimeInterval:Landroidx/preference/SecDropDownPreference;

    const-string v0, "notification_reminder_app_picker"

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->mNotificationReminderApps:Landroidx/preference/SecPreferenceScreen;

    return-void
.end method

.method public static isEnableReminder(Landroid/content/Context;)Z
    .locals 2

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "notification_reminder_selectable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static setEnableReminder(Landroid/content/Context;Z)V
    .locals 1

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "notification_reminder_selectable"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setEnabledBadgePrefs(Z)V
    .locals 1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->mVibrateReminderSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->mNotificationTimeInterval:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 176
    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->mNotificationReminderApps:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationReminderPreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateUI()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->isEnableReminder(Landroid/content/Context;)Z

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 169
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->setEnabledBadgePrefs(Z)V

    return-void
.end method

.method private updateVisible()V
    .locals 3

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 143
    instance-of v2, v1, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderAppPickerPreferenceController;

    if-eqz v2, :cond_1

    .line 144
    check-cast v1, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderAppPickerPreferenceController;

    .line 145
    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/reminder/controller/NotificationReminderAppPickerPreferenceController;->updateVisible()V

    goto :goto_0

    :cond_2
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

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-static {p1, v0, p0, v1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NotificationReminderPreferenceFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, 0x8cce

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 100
    sget p0, Lcom/android/settings/R$xml;->notification_reminder:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 161
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 162
    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    .line 163
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->initUI()V

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->updateUI()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "NotificationReminderPreferenceFragment"

    const-string v0, "onCreate()"

    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->mContext:Landroid/content/Context;

    .line 61
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->initUI()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 129
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 130
    iget-object p0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 123
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->updateVisible()V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->updateUI()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 153
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 154
    iget-object p2, p0, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->setEnableReminder(Landroid/content/Context;Z)V

    .line 155
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/reminder/NotificationReminderPreferenceFragment;->setEnabledBadgePrefs(Z)V

    return-void
.end method
