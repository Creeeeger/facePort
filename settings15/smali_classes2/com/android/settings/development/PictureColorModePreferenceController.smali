.class public final Lcom/android/settings/development/PictureColorModePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public mPreference:Lcom/android/settings/development/ColorModePreference;


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "picture_color_mode"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/ColorModePreference;

    iput-object p1, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    :cond_0
    return-void
.end method

.method public getColorModeDescriptionsSize()I
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/development/ColorModePreference;->getColorModeDescriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "picture_color_mode"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/development/PictureColorModePreferenceController;->getColorModeDescriptionsSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/PictureColorModePreferenceController;->isWideColorGamut()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWideColorGamut()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public final onResume()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    return-void
.end method
