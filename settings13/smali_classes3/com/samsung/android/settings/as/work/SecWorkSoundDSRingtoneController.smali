.class public Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;
.super Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;
.source "SecWorkSoundDSRingtoneController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController$ManagedProfileSoundSyncObserver;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "work_ds_ring_tone"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mHelper:Lcom/android/settings/notification/AudioHelper;

.field private mManagedProfileId:I

.field private mManagedProfileSoundSyncObserver:Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController$ManagedProfileSoundSyncObserver;

.field private mPreference:Landroidx/preference/SecPreferenceScreen;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$mupdateRingtoneSummary(Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->updateRingtoneSummary()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "work_ds_ring_tone"

    .line 47
    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 49
    new-instance p2, Lcom/android/settings/notification/AudioHelper;

    invoke-direct {p2, p1}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    .line 50
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mUserManager:Landroid/os/UserManager;

    .line 51
    iget-object p2, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p2, p1}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mManagedProfileId:I

    .line 52
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mAudioManager:Landroid/media/AudioManager;

    .line 53
    new-instance p1, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController$ManagedProfileSoundSyncObserver;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController$ManagedProfileSoundSyncObserver;-><init>(Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mManagedProfileSoundSyncObserver:Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController$ManagedProfileSoundSyncObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getManagedProfileContext()Landroid/content/Context;
    .locals 2

    .line 133
    iget v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mManagedProfileId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AudioHelper;->createPackageContextAsUser(I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private updateRingtoneSummary()V
    .locals 5

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/as/utils/WorkUtils;->isWorkSoundSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 120
    invoke-static {v3, v2}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->work_sound_same_as_personal_for_samsung:I

    .line 126
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/as/utils/WorkUtils;->getPersonalProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 125
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSoftphone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 64
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/SimUtils;->isMultiSimEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "work_ds_ring_tone"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 105
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/samsung/android/settings/as/work/SecWorkSoundDualRingtoneSettings;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 108
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    .line 107
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_work_ringtone_title:I

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 89
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mManagedProfileSoundSyncObserver:Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController$ManagedProfileSoundSyncObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController$ManagedProfileSoundSyncObserver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->updateRingtoneSummary()V

    .line 83
    invoke-super {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->onResume()V

    .line 84
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mManagedProfileSoundSyncObserver:Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController$ManagedProfileSoundSyncObserver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController$ManagedProfileSoundSyncObserver;->register(Z)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 94
    invoke-super {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->updateState(Landroidx/preference/Preference;)V

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/as/utils/WorkUtils;->isWorkSoundSyncEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 100
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecWorkSoundDSRingtoneController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v1}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
