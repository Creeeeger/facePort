.class public Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SecSoundWorkSettingsController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController$UnifyWorkDialogFragment;
    }
.end annotation


# instance fields
.field private final mHelper:Lcom/android/settings/notification/AudioHelper;

.field private mManagedProfileId:I

.field private final mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

.field private final mParent:Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mVoiceCapable:Z

.field private mWorkNotificationRingtonePreference:Landroidx/preference/Preference;

.field private mWorkPhoneRingtonePreference:Landroidx/preference/Preference;

.field private mWorkUsePersonalSounds:Landroidx/preference/TwoStatePreference;


# direct methods
.method public static synthetic $r8$lambda$1_gr1Xa-23VFg-cazXpAPr6xY5I(Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->lambda$updateWorkPreferences$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aAAPNDq7WPfSdZ17okrl6aJUvXs(Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->lambda$enableWorkSyncSettings$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 108
    new-instance v0, Lcom/android/settings/notification/AudioHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/AudioHelper;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/AudioHelper;)V
    .locals 1

    .line 115
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController$1;-><init>(Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mUserManager:Landroid/os/UserManager;

    .line 117
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mVoiceCapable:Z

    .line 118
    iput-object p2, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mParent:Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;

    .line 119
    iput-object p4, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    if-eqz p3, :cond_0

    .line 121
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private disableWorkSync()V
    .locals 4

    .line 287
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mManagedProfileId:I

    const-string v2, "sync_parent_sounds"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 289
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->disableWorkSyncSettings()V

    return-void
.end method

.method private disableWorkSyncSettings()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mWorkPhoneRingtonePreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mWorkNotificationRingtonePreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 299
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->updateWorkRingtoneSummaries()V

    return-void
.end method

.method private enableWorkSyncSettings()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mWorkUsePersonalSounds:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;)V

    const-string v2, "Settings.WORK_PROFILE_SYNC_WITH_PERSONAL_SOUNDS_ACTIVE_SUMMARY"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mWorkPhoneRingtonePreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mWorkNotificationRingtonePreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_1

    .line 282
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private getManagedProfileContext()Landroid/content/Context;
    .locals 2

    .line 203
    iget v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mManagedProfileId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 206
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AudioHelper;->createPackageContextAsUser(I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private initWorkPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Lcom/android/settings/DefaultRingtonePreference;
    .locals 0

    .line 210
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/DefaultRingtonePreference;

    .line 211
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 214
    iget p0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mManagedProfileId:I

    invoke-virtual {p1, p0}, Lcom/android/settings/RingtonePreference;->setUserId(I)V

    return-object p1
.end method

.method private synthetic lambda$enableWorkSyncSettings$1()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->work_sound_same_as_personal:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateWorkPreferences$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 226
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 227
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mParent:Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController$UnifyWorkDialogFragment;->show(Lcom/samsung/android/settings/as/work/SecSoundWorkSettings;)V

    const/4 p0, 0x0

    return p0

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->disableWorkSync()V

    const/4 p0, 0x1

    return p0
.end method

.method private shouldShowRingtoneSettings()Z
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/AudioHelper;->isSingleVolume()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 3

    if-eqz p1, :cond_2

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/AudioHelper;->isUserUnlocked(Landroid/os/UserManager;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    .line 192
    sget-boolean p2, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 193
    invoke-static {p1, p0, v1, v0}, Landroid/media/Ringtone;->getTitleWithSoundTheme(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 197
    :cond_1
    invoke-static {p1, p0, v1, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 189
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->managed_profile_not_available_label:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateWorkPreferences()V
    .locals 4

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mWorkUsePersonalSounds:Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "work_use_personal_sounds"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mWorkUsePersonalSounds:Landroidx/preference/TwoStatePreference;

    .line 225
    new-instance v1, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mWorkPhoneRingtonePreference:Landroidx/preference/Preference;

    if-nez v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "work_ringtone"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->initWorkPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mWorkPhoneRingtonePreference:Landroidx/preference/Preference;

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mWorkNotificationRingtonePreference:Landroidx/preference/Preference;

    if-nez v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "work_notification_ringtone"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->initWorkPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mWorkNotificationRingtonePreference:Landroidx/preference/Preference;

    .line 246
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mVoiceCapable:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/as/utils/SimUtils;->isMultiSimEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 247
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mWorkPhoneRingtonePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 248
    iput-object v1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mWorkPhoneRingtonePreference:Landroidx/preference/Preference;

    .line 251
    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/as/utils/SimUtils;->isMultiSimEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 252
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mWorkNotificationRingtonePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 253
    iput-object v1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mWorkNotificationRingtonePreference:Landroidx/preference/Preference;

    .line 256
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mManagedProfileId:I

    const-string v3, "sync_parent_sounds"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 258
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->enableWorkSyncSettings()V

    goto :goto_0

    .line 260
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->disableWorkSyncSettings()V

    :goto_0
    return-void
.end method

.method private updateWorkRingtoneSummaries()V
    .locals 3

    .line 303
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mWorkPhoneRingtonePreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 307
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 306
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mWorkNotificationRingtonePreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 311
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 310
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 128
    iput-object p1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method enableWorkSync()V
    .locals 4

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mManagedProfileId:I

    const-string v2, "sync_parent_sounds"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 267
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->enableWorkSyncSettings()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->shouldShowRingtoneSettings()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onManagedProfileAdded(I)V
    .locals 2

    .line 321
    iget v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mManagedProfileId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 322
    iput p1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mManagedProfileId:I

    .line 323
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->updateWorkPreferences()V

    :cond_0
    return-void
.end method

.method public onManagedProfileRemoved(I)V
    .locals 1

    .line 333
    iget v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mManagedProfileId:I

    if-ne v0, p1, :cond_0

    .line 334
    iget-object p1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mManagedProfileId:I

    .line 335
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->updateWorkPreferences()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 171
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v0, "work_ringtone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v1, "work_notification_ringtone"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    .line 179
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return v0
.end method

.method public onResume()V
    .locals 3

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v1, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->mManagedProfileId:I

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/settings/as/work/SecSoundWorkSettingsController;->updateWorkPreferences()V

    return-void
.end method
