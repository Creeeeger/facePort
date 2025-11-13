.class public final Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;
.super Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mPreference:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "secfrontbrightness"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "secfrontbrightness"

    return-object p0
.end method

.method public final getUriListRequiringObservation()Ljava/util/ArrayList;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const/4 p0, 0x0

    return p0
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->onPause()V

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSubBrightnessObserver:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "no_config_brightness"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    iput-boolean v1, v0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mIsRestricted:Z

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    iget-object v2, v0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "sub_screen_brightness"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, v0, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->mSubBrightnessObserver:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference$1;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->onSubBrightnessChanged()V

    return-void
.end method

.method public final updatePreference$12()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
