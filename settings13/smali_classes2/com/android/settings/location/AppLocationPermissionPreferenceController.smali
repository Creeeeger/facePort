.class public Lcom/android/settings/location/AppLocationPermissionPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "AppLocationPermissionPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field final loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mLocationManager:Landroid/location/LocationManager;

.field mNumHasLocation:I

.field private mNumHasLocationLoading:I

.field mNumTotal:I

.field private mNumTotalLoading:I

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public static synthetic $r8$lambda$-zOn5YbMFgnHoMMT-vbYfSngw6c(Lcom/android/settings/location/AppLocationPermissionPreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->lambda$updateState$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fqIT4yfbydnrmnLNIBOF0jgFES8(Lcom/android/settings/location/AppLocationPermissionPreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->lambda$updateState$1(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 33
    iput p2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotal:I

    .line 36
    iput p2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocation:I

    .line 39
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    iput v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    .line 41
    iput v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    const-string p2, "location"

    .line 48
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private synthetic lambda$updateState$0(I)V
    .locals 1

    .line 118
    iget v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    .line 119
    iget-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 120
    iget p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    iget v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->setAppCounts(II)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateState$1(I)V
    .locals 1

    .line 127
    iget v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    .line 128
    iget-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 129
    iget p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    iget v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->setAppCounts(II)V

    :cond_0
    return-void
.end method

.method private setAppCounts(II)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotal:I

    .line 82
    iput p2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocation:I

    .line 83
    iget-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->isEmergencymode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    return v1

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "location_settings_link_to_permissions_enabled"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

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

    .line 153
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x83

    const v0, 0xdd22

    .line 154
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 156
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.MANAGE_PERMISSION_APPS"

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.PERMISSION_NAME"

    const-string v1, "android.permission-group.LOCATION"

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    .line 162
    :cond_0
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

.method public isEmergencymode(Landroid/content/Context;)Z
    .locals 0

    .line 144
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 145
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

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
    .locals 0

    .line 137
    iget-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
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

.method public updateState(Landroidx/preference/Preference;)V
    .locals 8

    .line 88
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 89
    iput-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 96
    iput p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    .line 97
    iput p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    .line 99
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 100
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 103
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 103
    invoke-static {v2, v1}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, p1

    :goto_1
    if-ge v1, v3, :cond_1

    .line 107
    iget-object v2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_2

    .line 108
    iget v2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    iget v4, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    invoke-direct {p0, v2, v4}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->setAppCounts(II)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    :cond_3
    const-class v2, Landroid/permission/PermissionControllerManager;

    .line 114
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionControllerManager;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 115
    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/android/settings/location/AppLocationPermissionPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/settings/location/AppLocationPermissionPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/location/AppLocationPermissionPreferenceController;)V

    const/4 v7, 0x0

    .line 115
    invoke-virtual {v1, v5, p1, v6, v7}, Landroid/permission/PermissionControllerManager;->countPermissionApps(Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;)V

    .line 123
    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Lcom/android/settings/location/AppLocationPermissionPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/settings/location/AppLocationPermissionPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/location/AppLocationPermissionPreferenceController;)V

    const/4 v5, 0x1

    .line 123
    invoke-virtual {v1, v2, v5, v4, v7}, Landroid/permission/PermissionControllerManager;->countPermissionApps(Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
