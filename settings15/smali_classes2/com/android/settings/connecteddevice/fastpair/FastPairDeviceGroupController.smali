.class public Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;


# static fields
.field private static final DEBUG:Z

.field private static final KEY:Ljava/lang/String; = "fast_pair_device_list"

.field private static final TAG:Ljava/lang/String; = "FastPairDeviceGroupCtr"


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

.field mIntentFilter:Landroid/content/IntentFilter;

.field mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$mupdatePreferenceVisibility(Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->updatePreferenceVisibility()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FastPairDeviceGroupCtr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "fast_pair_device_list"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController$1;-><init>(Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->fastPairFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/fastpair/FastPairFeatureProviderImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/settings/connecteddevice/fastpair/FastPairFeatureProviderImpl$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mIntentFilter:Landroid/content/IntentFilter;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updatePreferenceVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "fast_pair_device_list"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "fast_pair_device_list"

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

.method public bridge synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onDeviceAdded(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_1

    sget-boolean p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "FastPairDeviceGroupCtr"

    const-string p1, "onDeviceAdded receives null preference. Ignore."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->updatePreferenceVisibility()V

    return-void
.end method

.method public bridge synthetic onDeviceClick(Landroidx/preference/Preference;)V
    .locals 0

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_1

    sget-boolean p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "FastPairDeviceGroupCtr"

    const-string p1, "onDeviceRemoved receives null preference. Ignore."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->updatePreferenceVisibility()V

    return-void
.end method

.method public bridge synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "FastPairDeviceGroupCtr"

    const-string v0, "Callback register: Fast Pair device updater is null. Ignore."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "FastPairDeviceGroupCtr"

    const-string v0, "Callback unregister: Fast Pair device updater is null. Ignore."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setPreferenceGroup(Landroidx/preference/PreferenceGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

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
