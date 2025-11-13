.class public Lcom/android/settings/display/DeviceStateAutoRotateSettingController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private final mAutoRotateSettingsManager:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

.field private final mDeviceState:I

.field private final mDeviceStateDescription:Ljava/lang/String;

.field private final mDeviceStateRotationLockSettingsListener:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager$DeviceStateRotationLockSettingsListener;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mOrder:I

.field private mPreference:Landroidx/preference/TwoStatePreference;


# direct methods
.method public static synthetic $r8$lambda$wDjsA_tsCt8Ccp8LDvsDnt_6TYQ(Lcom/android/settings/display/DeviceStateAutoRotateSettingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 7

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;-><init>(Landroid/content/Context;ILjava/lang/String;ILcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ILcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1

    invoke-static {p2}, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->getPreferenceKeyForDeviceState(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/display/DeviceStateAutoRotateSettingController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/DeviceStateAutoRotateSettingController;)V

    iput-object v0, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mDeviceStateRotationLockSettingsListener:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager$DeviceStateRotationLockSettingsListener;

    iput-object p5, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iput p2, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mDeviceState:I

    iput-object p3, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mDeviceStateDescription:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mAutoRotateSettingsManager:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    iput p4, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mOrder:I

    return-void
.end method

.method private static getPreferenceKeyForDeviceState(I)Ljava/lang/String;
    .locals 1

    const-string v0, "auto_rotate_device_state_"

    invoke-static {p0, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private logSettingChanged(Z)V
    .locals 4

    xor-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v3, 0xcb

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    if-eqz p1, :cond_0

    const/16 p1, 0x6fe

    goto :goto_0

    :cond_0
    const/16 p1, 0x6ff

    :goto_0
    iget-object v0, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mDeviceState:I

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    new-instance v0, Landroidx/preference/SwitchPreferenceCompat;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mPreference:Landroidx/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mDeviceStateDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mPreference:Landroidx/preference/TwoStatePreference;

    iget v1, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mOrder:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v0, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/display/DeviceStateAutoRotationHelper;->isDeviceStateRotationEnabled(Landroid/content/Context;)Z

    move-result p0

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mDeviceState:I

    invoke-static {p0}, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->getPreferenceKeyForDeviceState(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417c0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public init(Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public isChecked()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mAutoRotateSettingsManager:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    iget p0, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mDeviceState:I

    iget-object v1, v0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPosturesHelper:Lcom/android/settingslib/devicestate/PosturesHelper;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/devicestate/PosturesHelper;->deviceStateToPosture(I)I

    move-result p0

    iget-object v1, v0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockSettings:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockFallbackSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-gez p0, :cond_0

    const-string p0, "DSRotLockSettingsMngr"

    const-string v0, "Setting is ignored, but no fallback was specified."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockFallbackSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    iget-object v0, v0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    move v1, p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    if-ne v1, p0, :cond_2

    move v2, p0

    :cond_2
    xor-int/2addr p0, v2

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSliceable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mAutoRotateSettingsManager:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    iget-object p0, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mDeviceStateRotationLockSettingsListener:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager$DeviceStateRotationLockSettingsListener;

    iget-object v0, v0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mListeners:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mAutoRotateSettingsManager:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    iget-object p0, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mDeviceStateRotationLockSettingsListener:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager$DeviceStateRotationLockSettingsListener;

    iget-object v0, v0, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mListeners:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "DSRotLockSettingsMngr"

    const-string v0, "Attempting to unregister a listener hadn\'t been registered"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 3

    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->logSettingChanged(Z)V

    iget-object p1, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mAutoRotateSettingsManager:Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;

    iget p0, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mDeviceState:I

    iget-object v1, p1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPosturesHelper:Lcom/android/settingslib/devicestate/PosturesHelper;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/devicestate/PosturesHelper;->deviceStateToPosture(I)I

    move-result p0

    iget-object v1, p1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockFallbackSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockFallbackSettings:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    :cond_0
    iget-object v1, p1, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->mPostureRotationLockSettings:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1, p0, v0}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p1}, Lcom/android/settingslib/devicestate/DeviceStateRotationLockSettingsManager;->persistSettings()V

    return v2
.end method

.method public updateRawDataToIndex(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/display/DeviceStateAutoRotateSettingController;->mDeviceStateDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f14002d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
