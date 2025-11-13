.class public Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;
.super Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.source "SecSubBrightnessPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "secfrontbrightness"

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "secfrontbrightness"

    .line 56
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "secfrontbrightness"

    return-object p0
.end method

.method public getUriListRequiringObservation()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 76
    sget-boolean p0, Lcom/samsung/android/settings/Rune;->SUPPORT_COVER_SCREEN_BRIGHTNESS_MODE:Z

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->onPause()V

    .line 50
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->unRegisterSubBrightnessObserver()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 35
    invoke-super {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->onResume()V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_brightness"

    .line 38
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->setRestrictedBrightness(Z)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->registerSubBrightnessObserver()V

    .line 44
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;->onSubBrightnessChanged()V

    return-void
.end method

.method public updatePreference(Landroid/net/Uri;)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 71
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecSubBrightnessPreferenceController;->mPreference:Lcom/samsung/android/settings/display/SubBrightnessSeekBarPreference;

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
