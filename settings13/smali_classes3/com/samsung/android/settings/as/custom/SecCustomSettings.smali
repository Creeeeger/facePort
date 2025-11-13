.class public Lcom/samsung/android/settings/as/custom/SecCustomSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecCustomSettings.java"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field static final STOP_SAMPLE:I = 0x1


# instance fields
.field private mDialogFragment:Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

.field final mHandler:Landroid/os/Handler;

.field private mHfpOutputControllerKey:Ljava/lang/String;

.field private mRequestPreference:Lcom/android/settings/RingtonePreference;

.field private mVibrationPreferencesKey:Ljava/lang/String;

.field final mVolumeCallback:Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;


# direct methods
.method public static synthetic $r8$lambda$QBK6Ss4IY47sRP2JpNgoxZ8BM24(Lcom/samsung/android/settings/as/custom/SecCustomSettings;Landroidx/preference/ListPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->lambda$onAttach$0(Landroidx/preference/ListPreference;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 72
    new-instance v0, Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;-><init>(Lcom/samsung/android/settings/as/custom/SecCustomSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mVolumeCallback:Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;

    .line 74
    new-instance v0, Lcom/samsung/android/settings/as/custom/SecCustomSettings$1;

    .line 75
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/as/custom/SecCustomSettings$1;-><init>(Lcom/samsung/android/settings/as/custom/SecCustomSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mHandler:Landroid/os/Handler;

    const-string v0, "vibration_preference_screen"

    .line 89
    iput-object v0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mVibrationPreferencesKey:Ljava/lang/String;

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/custom/SecCustomSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/as/custom/SecCustomSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    new-instance v1, Lcom/android/settings/notification/PhoneRingtonePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/PhoneRingtonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v1, Lcom/android/settings/notification/AlarmRingtonePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/AlarmRingtonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v1, Lcom/android/settings/notification/NotificationRingtonePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationRingtonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v1, Lcom/android/settings/notification/VibrateIconPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/VibrateIconPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private synthetic lambda$onAttach$0(Landroidx/preference/ListPreference;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->onPreferenceDataChanged(Landroidx/preference/ListPreference;)V

    return-void
.end method

.method private onPreferenceDataChanged(Landroidx/preference/ListPreference;)V
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mDialogFragment:Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

    if-eqz p0, :cond_0

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;->onListPreferenceUpdated(Landroidx/preference/ListPreference;)V

    :cond_0
    return-void
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

    .line 173
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/custom/SecCustomSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 117
    sget p0, Lcom/android/settings/R$string;->help_url_sound:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecCustomSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 168
    sget p0, Lcom/android/settings/R$xml;->as_custom_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    const/4 p1, 0x0

    .line 180
    iput-object p1, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 194
    const-class v0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 195
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    const-class v1, Lcom/android/settings/notification/AlarmVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    const-class v1, Lcom/android/settings/notification/MediaVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    const-class v1, Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    const-class v1, Lcom/android/settings/notification/NotificationVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    const-class v1, Lcom/android/settings/notification/CallVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    new-instance v2, Lcom/samsung/android/settings/as/custom/SecCustomSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/as/custom/SecCustomSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/as/custom/SecCustomSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->setCallback(Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;)V

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mHfpOutputControllerKey:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    .line 208
    iget-object v1, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mVolumeCallback:Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-string v1, "selected_preference"

    .line 100
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/RingtonePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "SecCustomSettings"

    .line 107
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

    .line 108
    iput-object p1, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mDialogFragment:Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

    .line 110
    :cond_1
    sget p1, Lcom/android/settings/R$string;->sec_sound_work_settings:I

    const-string v0, "sound_work_settings"

    const-string v1, "Settings.WORK_PROFILE_SOUND_SETTINGS_SECTION_HEADER"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mVibrationPreferencesKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mHfpOutputControllerKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x588

    goto :goto_0

    :cond_1
    move v0, v1

    .line 156
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;->newInstance(Ljava/lang/String;I)Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mDialogFragment:Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

    .line 157
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 158
    iget-object p1, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mDialogFragment:Lcom/android/settingslib/widget/UpdatableListPreferenceDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "SecCustomSettings"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 122
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 123
    iget-object p0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mVolumeCallback:Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/custom/SecCustomSettings$VolumePreferenceCallback;->stopSample()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 128
    instance-of v0, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    .line 130
    check-cast p1, Lcom/android/settings/RingtonePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 131
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 133
    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/RingtonePreference;->getUserId()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 132
    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0

    .line 139
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 186
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 187
    iget-object p0, p0, Lcom/samsung/android/settings/as/custom/SecCustomSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz p0, :cond_0

    .line 188
    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "selected_preference"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
