.class public final Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;
.super Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "secbrightness"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "secbrightness"

    return-object p0
.end method

.method public final getUriListRequiringObservation()Ljava/util/ArrayList;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "display_outdoor_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iget-object v1, v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessModeObserver:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightnessDialogObserver:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-object v1, v0, Lcom/samsung/android/settings/display/BrightnessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/settings/display/BrightnessManager;->mBrightnessObserver:Lcom/samsung/android/settings/display/BrightnessManager$1;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/BrightnessManager;->mHBM_PMS_EnterObserver:Lcom/samsung/android/settings/display/BrightnessManager$1;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/samsung/android/settings/display/BrightnessManager;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/samsung/android/settings/display/BrightnessManager;->mMaxBrightnessChangedReceiver:Lcom/samsung/android/settings/display/BrightnessManager$2;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 6

    invoke-super {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "no_config_brightness"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iput-boolean v1, v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mIsRestricted:Z

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iget-object v2, v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessModeObserver:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v3, "auto_brightness_detail"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mAutoBrightnessDetailObserver:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v3, "shown_max_brightness_dialog"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mMaxBrightnessDialogObserver:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$1;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessManager:Lcom/samsung/android/settings/display/BrightnessManager;

    iget-object v2, v0, Lcom/samsung/android/settings/display/BrightnessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/display/BrightnessManager;->mBrightnessObserver:Lcom/samsung/android/settings/display/BrightnessManager$1;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v3, "high_brightness_mode_pms_enter"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/settings/display/BrightnessManager;->mHBM_PMS_EnterObserver:Lcom/samsung/android/settings/display/BrightnessManager$1;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.samsung.intent.action.MAX_BRIGHTNESS_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/settings/display/BrightnessManager;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/samsung/android/settings/display/BrightnessManager;->mMaxBrightnessChangedReceiver:Lcom/samsung/android/settings/display/BrightnessManager$2;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iget-object v2, v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mBrightnessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInternalChange:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getCurrentProgress()I

    move-result v2

    int-to-float v3, v2

    const/4 v4, 0x0

    const/high16 v5, 0x4d7f0000    # 2.6738688E8f

    invoke-static {v4, v5, v3}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->updateProgress(FI)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInternalChange:Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getCurrentProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->animateSliderTo(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessModeChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->mInitFinish:Z

    return-void
.end method

.method public final updatePreference$12()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "display_outdoor_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
