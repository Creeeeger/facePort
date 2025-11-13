.class public Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecSoundWorkSettings.java"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mRequestPreference:Lcom/android/settings/RingtonePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 164
    new-instance v0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettings$1;

    sget v1, Lcom/android/settings/R$xml;->as_sound_work_settings:I

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettings$1;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-instance v1, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v1, Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSNotificationController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static final isSupportWorkProfileSound(Landroid/content/Context;)Z
    .locals 4

    .line 148
    new-instance v0, Lcom/android/settings/notification/AudioHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 149
    invoke-virtual {v0, p0}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, -0x2710

    if-eq p0, v3, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    .line 151
    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->isSingleVolume()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 125
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method enableWorkSync()V
    .locals 1

    .line 157
    const-class v0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;

    if-eqz p0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->enableWorkSync()V

    :cond_0
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecSoundWorkSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x755

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 135
    sget p0, Lcom/android/settings/R$xml;->as_sound_work_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "selected_preference"

    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/RingtonePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 74
    :cond_0
    sget p1, Lcom/android/settings/R$string;->sec_sound_work_settings:I

    const-string v0, "Settings.WORK_PROFILE_SOUND_SETTINGS_SECTION_HEADER"

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterprisePreferenceScreenTitle(Ljava/lang/String;I)V

    .line 76
    sget p1, Lcom/android/settings/R$string;->work_use_personal_sounds_title:I

    const-string v0, "work_use_personal_sounds"

    const-string v1, "Settings.WORK_PROFILE_USE_PERSONAL_SOUNDS_TITLE"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget p1, Lcom/android/settings/R$string;->sec_work_use_personal_sounds_summary:I

    sget v1, Lcom/android/settings/R$string;->sec_sound_work_personal_profile:I

    const-string v2, "Settings.WORK_PROFILE_USE_PERSONAL_SOUNDS_SUMMARY"

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringSummary(Ljava/lang/String;Ljava/lang/String;II)V

    .line 81
    sget p1, Lcom/android/settings/R$string;->sec_work_ringtone_title:I

    const-string v0, "work_ringtone"

    const-string v1, "Settings.WORK_PROFILE_RINGTONE_TITLE"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget p1, Lcom/android/settings/R$string;->work_alarm_ringtone_title:I

    const-string v0, "work_alarm_ringtone"

    const-string v1, "Settings.WORK_PROFILE_ALARM_RINGTONE_TITLE"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget p1, Lcom/android/settings/R$string;->sec_work_notification_title:I

    const-string v0, "work_notification_ringtone"

    const-string v1, "Settings.WORK_PROFILE_NOTIFICATION_RINGTONE_TITLE"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 92
    instance-of v0, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    .line 94
    check-cast p1, Lcom/android/settings/RingtonePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 95
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "neutral_button"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    iget-object p1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 98
    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getUserId()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 97
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "selected_preference"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
