.class public Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PhysicalKeyboardPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field private final mIm:Landroid/hardware/input/InputManager;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method private updateSummary()V
    .locals 8

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->getHardKeyboards()Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mPreference:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->keyboard_disconnected:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SecPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 106
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    if-nez v1, :cond_2

    .line 108
    iget-object v1, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_2
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->join_two_unrelated_items:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v2

    iget-object v1, v3, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    aput-object v1, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SecPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "physical_keyboard_pref"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_show_physical_keyboard_pref:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->updateSummary()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->updateSummary()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->updateSummary()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardPreferenceController;->updateSummary()V

    return-void
.end method
