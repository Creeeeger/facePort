.class public Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "SyncXDevicesPrefCtr"


# instance fields
.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private mSyncAcrossDevicesFeatureUpdater:Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesFeatureUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SyncXDevicesPrefCtr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesPreferenceController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->syncAcrossDevicesFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesFeatureProviderImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesFeatureProviderImpl$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesPreferenceController;->mSyncAcrossDevicesFeatureUpdater:Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesFeatureUpdater;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updatePreferenceVisibility()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesPreferenceController;->mSyncAcrossDevicesFeatureUpdater:Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesFeatureUpdater;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesPreferenceController;->mSyncAcrossDevicesFeatureUpdater:Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesFeatureUpdater;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesPreferenceController;->mSyncAcrossDevicesFeatureUpdater:Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesFeatureUpdater;

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

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onFeatureAdded(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_1

    sget-boolean p0, Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesPreferenceController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "SyncXDevicesPrefCtr"

    const-string p1, "onFeatureAdded receives null preference. Ignore."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesPreferenceController;->updatePreferenceVisibility()V

    return-void
.end method

.method public onFeatureRemoved(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_1

    sget-boolean p0, Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesPreferenceController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "SyncXDevicesPrefCtr"

    const-string p1, "onFeatureRemoved receives null preference. Ignore."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-direct {p0}, Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesPreferenceController;->updatePreferenceVisibility()V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setPreferenceGroup(Landroidx/preference/PreferenceGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/syncacrossdevices/SyncAcrossDevicesPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
