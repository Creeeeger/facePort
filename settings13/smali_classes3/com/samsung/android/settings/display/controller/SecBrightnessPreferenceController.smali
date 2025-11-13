.class public Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;
.super Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.source "SecBrightnessPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "secbrightness"

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "secbrightness"

    .line 76
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "secbrightness"

    return-object p0
.end method

.method public getUriListRequiringObservation()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "display_outdoor_mode"

    .line 82
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->onPause()V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->unRegisterBrightnessObserver()V

    .line 70
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->endAnimation()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 51
    invoke-super {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->onResume()V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_brightness"

    .line 53
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setRestrictedBrightness(Z)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->registerBrightnessObserver()V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessChanged()V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessModeChanged()V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->brightnessNotifyChange()V

    .line 63
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->setInitFinish(Z)V

    return-void
.end method

.method public updatePreference(Landroid/net/Uri;)V
    .locals 3

    .line 88
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "display_outdoor_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    .line 93
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    if-nez v2, :cond_3

    if-nez p1, :cond_3

    move v1, v0

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
