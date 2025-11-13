.class public Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field private static final KEY:Ljava/lang/String; = "available_device_list"

.field private static final TAG:Ljava/lang/String; = "AvailableMediaDeviceGroupController"


# instance fields
.field private mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

.field private mAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

.field private mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

.field private mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

.field mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field mPreferenceGroup:Landroidx/preference/PreferenceGroup;


# direct methods
.method public static synthetic $r8$lambda$RK8pKj0g2VIuv95DM903tRXCSRU(Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->lambda$updateTitle$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$cBZaqUwYr-eMuOupuHjuQJ830v4(Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->lambda$updateTitle$0(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothDeviceUpdater(Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;)Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateTitle(Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->updateTitle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "available_device_list"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController$1;-><init>(Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    new-instance p1, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController$2;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController$2;-><init>(Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method private synthetic lambda$updateTitle$0(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_0
    return-void
.end method

.method private lambda$updateTitle$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isAudioModeOngoingCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f140a57

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    const v0, 0x7f140a5b

    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerAudioSharingCallbacks()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->registerCallbacks(Ljava/util/concurrent/Executor;)V

    :cond_2
    return-void
.end method

.method private unregisterAudioSharingCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    :cond_1
    iget-object p0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;->unregisterCallbacks()V

    :cond_2
    return-void
.end method

.method private updateTitle()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "available_device_list"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->mPrefContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

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

    const-string p0, "available_device_list"

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

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v0, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;I)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

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

.method public bridge synthetic onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x15

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result p0

    invoke-static {p2, p1, p0}, Lcom/android/settings/accessibility/HearingAidUtils;->launchHearingAidPairingDialog(Landroidx/fragment/app/FragmentManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    :cond_1
    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->updateTitle()V

    return-void
.end method

.method public bridge synthetic onAutoOnStateChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onBluetoothStateChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
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
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceClick(Landroidx/preference/Preference;)V
    .locals 0

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object p0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setActive()V

    return-void
.end method

.method public bridge synthetic onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->updateTitle()V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_1

    const-string p0, "AvailableMediaDeviceGroupController"

    const-string p1, "onStart() Bluetooth is not supported on this device"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    iget-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->registerCallback()V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_0

    const-string p0, "AvailableMediaDeviceGroupController"

    const-string p1, "onStop() Bluetooth is not supported on this device"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    iget-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->unregisterCallback()V

    :cond_1
    iget-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setBluetoothDeviceUpdater(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    return-void
.end method

.method public setDialogHandler(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mDialogHandler:Lcom/android/settings/connecteddevice/audiosharing/AudioSharingDialogHandler;

    return-void
.end method

.method public setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

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
