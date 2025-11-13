.class public Lcom/android/settings/location/LocationForWorkPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "LocationForWorkPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getAfwManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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
    .locals 0

    const/4 p0, 0x0

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

.method public onLocationModeChanged(IZ)V
    .locals 1

    .line 99
    iget-object p2, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p2}, Landroidx/preference/Preference;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    iget-object p2, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    iget-object v0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 104
    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 103
    invoke-virtual {p2, v0}, Lcom/android/settings/location/LocationEnabler;->getShareLocationEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 106
    iget-object p0, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    .line 108
    :cond_1
    iget-object p2, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p2, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result p1

    .line 109
    iget-object p2, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 114
    iget-object p2, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    .line 115
    invoke-virtual {p2}, Lcom/android/settings/location/LocationEnabler;->isManagedProfileRestrictedByBase()Z

    move-result p2

    if-nez p2, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    .line 123
    :cond_2
    iget-object p0, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 117
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settings/location/LocationForWorkPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 67
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 69
    iget-object p0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mUserManager:Landroid/os/UserManager;

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    .line 70
    invoke-static {p0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    const-string/jumbo v1, "no_share_location"

    .line 69
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    return p2

    :cond_0
    const/4 p0, 0x0

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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
