.class public final Lcom/android/settings/notification/SoundWorkSettingsController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field public final mHelper:Lcom/android/settings/notification/AudioHelper;

.field public mManagedProfileId:I

.field public final mManagedProfileReceiver:Lcom/android/settings/notification/SoundWorkSettingsController$1;

.field public final mParent:Lcom/android/settings/notification/SoundWorkSettings;

.field public mScreen:Landroidx/preference/PreferenceScreen;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mVoiceCapable:Z

.field public mWorkAlarmRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

.field public mWorkNotificationRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

.field public mWorkPhoneRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

.field public mWorkUsePersonalSounds:Landroidx/preference/TwoStatePreference;


# direct methods
.method public static synthetic $r8$lambda$nzL8_67MLyh6-Y-Dxx2meVwM7cQ(Lcom/android/settings/notification/SoundWorkSettingsController;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1437d9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/SoundWorkSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/AudioHelper;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/notification/SoundWorkSettingsController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundWorkSettingsController$1;-><init>(Lcom/android/settings/notification/SoundWorkSettingsController;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mManagedProfileReceiver:Lcom/android/settings/notification/SoundWorkSettingsController$1;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mUserManager:Landroid/os/UserManager;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mVoiceCapable:Z

    iput-object p2, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mParent:Lcom/android/settings/notification/SoundWorkSettings;

    iput-object p4, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final disableWorkSyncSettings()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkPhoneRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkNotificationRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkAlarmRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundWorkSettingsController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkPhoneRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/SoundWorkSettingsController;->updateRingtoneName$1(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkNotificationRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/notification/SoundWorkSettingsController;->updateRingtoneName$1(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkAlarmRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/notification/SoundWorkSettingsController;->updateRingtoneName$1(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public final enableWorkSyncSettings()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkUsePersonalSounds:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/SoundWorkSettingsController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/settings/notification/SoundWorkSettingsController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const-string v2, "Settings.WORK_PROFILE_SYNC_WITH_PERSONAL_SOUNDS_ACTIVE_SUMMARY"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkPhoneRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkNotificationRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkAlarmRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getManagedProfileContext()Landroid/content/Context;
    .locals 2

    iget v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mManagedProfileId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object p0, p0, Lcom/android/settings/notification/AudioHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mUserManager:Landroid/os/UserManager;

    iget-object p0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/AudioHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mManagedProfileReceiver:Lcom/android/settings/notification/SoundWorkSettingsController$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v0, "work_ringtone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const-string p2, "work_notification_ringtone"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const-string p2, "work_alarm_ringtone"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundWorkSettingsController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/settings/notification/SoundWorkSettingsController;->updateRingtoneName$1(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return v0
.end method

.method public final onResume()V
    .locals 3

    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-static {v0, v1}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mManagedProfileReceiver:Lcom/android/settings/notification/SoundWorkSettingsController$1;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mManagedProfileId:I

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundWorkSettingsController;->updateWorkPreferences()V

    return-void
.end method

.method public final updateRingtoneName$1(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p0, p2, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f1416e0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateWorkPreferences()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundWorkSettingsController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkUsePersonalSounds:Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "work_use_personal_sounds"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkUsePersonalSounds:Landroidx/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/SoundWorkSettingsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/SoundWorkSettingsController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/SoundWorkSettingsController;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkPhoneRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "work_ringtone"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget v1, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mManagedProfileId:I

    iput v1, v0, Lcom/android/settings/RingtonePreference;->mUserId:I

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Lcom/android/settings/RingtonePreference;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkPhoneRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkNotificationRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "work_notification_ringtone"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget v1, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mManagedProfileId:I

    iput v1, v0, Lcom/android/settings/RingtonePreference;->mUserId:I

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Lcom/android/settings/RingtonePreference;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkNotificationRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkAlarmRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "work_alarm_ringtone"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget v1, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mManagedProfileId:I

    iput v1, v0, Lcom/android/settings/RingtonePreference;->mUserId:I

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Lcom/android/settings/RingtonePreference;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/RingtonePreference;->mUserContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkAlarmRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mVoiceCapable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkPhoneRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mWorkPhoneRingtonePreference:Lcom/android/settings/DefaultRingtonePreference;

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundWorkSettingsController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sync_parent_sounds"

    iget v3, p0, Lcom/android/settings/notification/SoundWorkSettingsController;->mManagedProfileId:I

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundWorkSettingsController;->enableWorkSyncSettings()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundWorkSettingsController;->disableWorkSyncSettings()V

    :goto_0
    return-void
.end method
