.class public Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/OnActivityResultListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mRequestPreference:Lcom/android/settings/RingtonePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettings$1;

    const v1, 0x7f17004b

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static final isSupportWorkProfileSound(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    const/16 v1, -0x2710

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {p0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result p0

    xor-int/2addr p0, v3

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    return v2
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettingsController;

    invoke-direct {v2, p1, p0, v0}, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettingsController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecSoundWorkSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x755

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17004b

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "selected_preference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/RingtonePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    :cond_0
    const-string p1, "Settings.WORK_PROFILE_SOUND_SETTINGS_SECTION_HEADER"

    const v0, 0x7f1427b1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterprisePreferenceScreenTitle(Ljava/lang/String;I)V

    const-string p1, "Settings.WORK_PROFILE_USE_PERSONAL_SOUNDS_TITLE"

    const v0, 0x7f1437e6

    const-string/jumbo v1, "work_use_personal_sounds"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const p1, 0x7f1428d2

    const v0, 0x7f1427b0

    const-string v2, "Settings.WORK_PROFILE_USE_PERSONAL_SOUNDS_SUMMARY"

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringSummary(Ljava/lang/String;Ljava/lang/String;II)V

    const-string p1, "Settings.WORK_PROFILE_RINGTONE_TITLE"

    const v0, 0x7f1428cd

    const-string/jumbo v1, "work_ringtone"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "Settings.WORK_PROFILE_ALARM_RINGTONE_TITLE"

    const v0, 0x7f1437ca

    const-string/jumbo v1, "work_alarm_ringtone"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "Settings.WORK_PROFILE_NOTIFICATION_RINGTONE_TITLE"

    const v0, 0x7f1428cb

    const-string/jumbo v1, "work_notification_ringtone"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->replaceEnterpriseStringTitle(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    check-cast p1, Lcom/android/settings/RingtonePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "neutral_button"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onPreferenceTreeClick("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")) "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecSoundWorkSettings"

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isMultiSimEnabled(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "android.samsung.intent.extra.ringtone.EXISTING_URI_2"

    const-class v1, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettingsController;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    iget p1, p1, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/16 p1, 0x100

    goto :goto_0

    :cond_0
    const/16 p1, 0x80

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettingsController;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettingsController;->getManagedProfileContext$1()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/asbase/utils/SimUtils;->isEnabledSIM2Only()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettingsController;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettingsController;->getManagedProfileContext$1()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    iget v1, v1, Lcom/android/settings/RingtonePreference;->mRingtoneType:I

    invoke-static {p1, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    iget p0, p0, Lcom/android/settings/RingtonePreference;->mUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/work/SecSoundWorkSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz p0, :cond_0

    const-string/jumbo v0, "selected_preference"

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
