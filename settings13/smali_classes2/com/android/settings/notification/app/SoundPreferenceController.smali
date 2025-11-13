.class public Lcom/android/settings/notification/app/SoundPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "SoundPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/PreferenceManager$OnActivityResultListener;


# instance fields
.field private final mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

.field private mPreference:Lcom/android/settings/notification/app/NotificationSoundPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p4}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 53
    iput-object p2, p0, Lcom/android/settings/notification/app/SoundPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 54
    iput-object p3, p0, Lcom/android/settings/notification/app/SoundPreferenceController;->mListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/notification/app/SoundPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/app/NotificationSoundPreference;

    iput-object p1, p0, Lcom/android/settings/notification/app/SoundPreferenceController;->mPreference:Lcom/android/settings/notification/app/NotificationSoundPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "ringtone"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 117
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ringtone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/app/SoundPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 118
    move-object v0, p1

    check-cast v0, Lcom/android/settings/notification/app/NotificationSoundPreference;

    .line 131
    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 132
    iget-object p0, p0, Lcom/android/settings/notification/app/SoundPreferenceController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xc8

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 4

    .line 64
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    return v1

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v3, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v2, v2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/notification/NotificationBackend;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x3

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->checkCanBeVisible(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isDefaultChannel()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method isIncludedInFilter()Z
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mPreferenceFilter:Ljava/util/List;

    const-string/jumbo v0, "sound"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    const/16 v0, 0xc8

    if-ne v0, p1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/settings/notification/app/SoundPreferenceController;->mPreference:Lcom/android/settings/notification/app/NotificationSoundPreference;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/notification/app/NotificationSoundPreference;->onActivityResult(IILandroid/content/Intent;)Z

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/app/SoundPreferenceController;->mListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->onFieldValueChanged()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 108
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_0

    .line 109
    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->saveChannel()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_2

    .line 90
    check-cast p1, Lcom/android/settings/notification/app/NotificationSoundPreference;

    .line 91
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelConfigurable()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/app/NotificationSoundPreference;->setRingtone(Landroid/net/Uri;)V

    .line 94
    invoke-virtual {p1, v1}, Lcom/android/settings/RingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const/4 v0, 0x2

    .line 97
    invoke-virtual {p1, v0}, Lcom/android/settings/RingtonePreference;->setRingtoneType(I)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/notification/NotiUtils;->isSIM2NotiChannel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x100

    .line 99
    invoke-virtual {p1, p0}, Lcom/android/settings/RingtonePreference;->setRingtoneType(I)V

    .line 101
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/settings/RingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    return-void
.end method
