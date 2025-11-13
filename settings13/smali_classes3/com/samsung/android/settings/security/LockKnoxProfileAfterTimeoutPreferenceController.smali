.class public Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "LockKnoxProfileAfterTimeoutPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_LOCK_KNOX_PROFILE_AFTER_TIMEOUT:Ljava/lang/String; = "lock_knox_profile_after_timeout"

.field private static final TAG:Ljava/lang/String; = "KKG::LockKnoxProfileAfterTimeoutPreferenceController"


# instance fields
.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mHost:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mPreference:Lcom/android/settingslib/RestrictedPreference;

.field private final mProfileChallengeUserId:I

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 1

    const-string v0, "lock_knox_profile_after_timeout"

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-direct {p0, p1, p3}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p3, "user"

    .line 51
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserManager;

    .line 52
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "device_policy"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 54
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mUserId:I

    .line 55
    invoke-static {p3, p1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mProfileChallengeUserId:I

    .line 56
    iput-object p2, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method

.method private getIndexFromValue([Ljava/lang/CharSequence;J)I
    .locals 2

    const/4 p0, 0x0

    .line 157
    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    .line 158
    aget-object v0, p1, p0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 162
    :cond_1
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private startTimeoutKnoxProfileActivity()Z
    .locals 3

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.security.LockKnoxProfileAfterTimeoutActivity"

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget v1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mProfileChallengeUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz p1, :cond_0

    .line 95
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->knox_security_timeout_custom:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
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

    const-string p0, "lock_knox_profile_after_timeout"

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

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mProfileChallengeUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isAvailableWithMultiWindowForKnox(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object p1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mHost:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->lock_screen_doesnt_support_multi_window_text:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v0

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->startTimeoutKnoxProfileActivity()Z

    move-result p0

    return p0

    .line 123
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 102
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->updateState(Landroidx/preference/Preference;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "KKG::LockKnoxProfileAfterTimeoutPreferenceController"

    const-string p2, "could not persist lockAfter timeout setting"

    .line 107
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 74
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->updateSummary(Landroidx/preference/Preference;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->knox_onelock_settings_lock_summary:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 85
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->basic_primary_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    goto :goto_1

    .line 87
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->basic_secondary_text_color_dimmed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 85
    :goto_1
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    return-void
.end method

.method protected updateSummary(Landroidx/preference/Preference;)V
    .locals 12

    .line 142
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mProfileChallengeUserId:I

    const-string v2, "knox_screen_off_timeout"

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    .line 144
    iget-object v2, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v3

    :cond_0
    move-wide v8, v3

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    move-wide v6, v0

    move-object v10, v2

    move-object v11, v3

    invoke-static/range {v5 .. v11}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutActivity;->setScreenTimeoutAdapter(Landroid/content/Context;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/CharSequence;

    .line 151
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    .line 150
    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->getIndexFromValue([Ljava/lang/CharSequence;J)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 151
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    iget-object p0, p0, Lcom/samsung/android/settings/security/LockKnoxProfileAfterTimeoutPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
