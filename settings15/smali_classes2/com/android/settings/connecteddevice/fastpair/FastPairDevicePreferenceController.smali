.class public Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;


# static fields
.field private static final DEBUG:Z

.field private static final KEY_SEE_ALL:Ljava/lang/String; = "fast_pair_devices_see_all"

.field private static final MAX_DEVICE_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FastPairDevicePrefCtr"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

.field mIntentFilter:Landroid/content/IntentFilter;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private final mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mSeeAllPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FastPairDevicePrefCtr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceList:Ljava/util/List;

    new-instance p1, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController$1;-><init>(Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->fastPairFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/fastpair/FastPairFeatureProviderImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/settings/connecteddevice/fastpair/FastPairFeatureProviderImpl$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
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

    iput-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const-string v0, "fast_pair_devices_see_all"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mSeeAllPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->updatePreferenceVisibility()V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

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

    iget-object p0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

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
    .locals 3

    const-string v0, "FastPairDevicePrefCtr"

    if-nez p1, :cond_1

    sget-boolean p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "onDeviceAdd receives null preference. Ignore."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    sget-boolean p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "onDeviceAdd receives duplicate preference. Ignore."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x3

    if-ge v1, v0, :cond_5

    iget-object v1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    iget-object v0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->updatePreferenceVisibility()V

    return-void
.end method

.method public bridge synthetic onDeviceClick(Landroidx/preference/Preference;)V
    .locals 0

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 2

    if-nez p1, :cond_1

    sget-boolean p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "FastPairDevicePrefCtr"

    const-string p1, "onDeviceRemoved receives null preference. Ignore."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->updatePreferenceVisibility()V

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

    iget-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "FastPairDevicePrefCtr"

    const-string v0, "Callback register: Fast Pair device updater is null. Ignore."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mFastPairDeviceUpdater:Lcom/android/settings/connecteddevice/fastpair/FastPairDeviceUpdater;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "FastPairDevicePrefCtr"

    const-string v0, "Callback unregister: Fast Pair device updater is null. Ignore."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

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

    iput-object p1, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updatePreferenceVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mSeeAllPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v3, 0x3

    if-le p0, v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/fastpair/FastPairDevicePreferenceController;->mSeeAllPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
