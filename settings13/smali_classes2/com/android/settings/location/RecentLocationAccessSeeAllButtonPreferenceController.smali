.class public Lcom/android/settings/location/RecentLocationAccessSeeAllButtonPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "RecentLocationAccessSeeAllButtonPreferenceController.java"


# static fields
.field static final LOCATION_OPS:[I

.field private static final TAG:Ljava/lang/String; = "RecentLocationAccessSeeAllButtonPreferenceController"


# instance fields
.field private isEnabled:Z

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 37
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/location/RecentLocationAccessSeeAllButtonPreferenceController;->LOCATION_OPS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllButtonPreferenceController;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllButtonPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 59
    iget-object p0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->refreshLocationMode()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllButtonPreferenceController;->isEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

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
    .locals 4

    .line 71
    iget-object p2, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p2, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result p1

    .line 74
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 75
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p2

    const-string v0, "RecentLocationAccessSeeAllButtonPreferenceController"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string p1, "Emergency mode, remove all button"

    .line 76
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move p1, v1

    goto :goto_1

    .line 79
    :cond_0
    new-instance p2, Lcom/android/settingslib/applications/RecentAppOpsAccess;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/settings/location/RecentLocationAccessSeeAllButtonPreferenceController;->LOCATION_OPS:[I

    invoke-direct {p2, v2, v3}, Lcom/android/settingslib/applications/RecentAppOpsAccess;-><init>(Landroid/content/Context;[I)V

    .line 80
    invoke-virtual {p2, v1}, Lcom/android/settingslib/applications/RecentAppOpsAccess;->getAppListSorted(Z)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x3

    if-gt p2, v2, :cond_1

    const-string p1, "Size is less than MAX_APPS, remove all button"

    .line 82
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllButtonPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 89
    iget-object p2, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllButtonPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 90
    iput-boolean p1, p0, Lcom/android/settings/location/RecentLocationAccessSeeAllButtonPreferenceController;->isEnabled:Z

    return-void
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
