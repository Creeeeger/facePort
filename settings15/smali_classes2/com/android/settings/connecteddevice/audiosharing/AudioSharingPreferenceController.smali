.class public Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioSharingPreferenceController"


# instance fields
.field private final mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

.field final mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

.field private final mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public static synthetic $r8$lambda$jBvo_XamKJEcElem9HJ_JaYexFc(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->lambda$refreshSummary$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$kfmKrc6TU0HxuV2woYCbn5VZ5Io(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->lambda$refreshSummary$0(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrefreshSummary(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->refreshSummary()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController$1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    sget-object p2, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p2, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    :goto_1
    iput-object p2, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic lambda$refreshSummary$0(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$refreshSummary$1()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;Ljava/lang/CharSequence;)V

    invoke-static {v1, v2}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->postOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshSummary()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

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

    iput-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    const/4 p0, 0x3

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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-static {v0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingUtils;->isBroadcasting(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1404ae

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1404ad

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
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

.method public bridge synthetic onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAutoOnStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->refreshSummary()V

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

.method public bridge synthetic onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

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
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    const-string v0, "AudioSharingPreferenceController"

    if-nez p1, :cond_0

    const-string p0, "Skip register callbacks, feature not support"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-virtual {p1, v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Skip register callbacks, profile not ready"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    const-string v0, "AudioSharingPreferenceController"

    if-nez p1, :cond_0

    const-string p0, "Skip unregister callbacks, feature not support"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/audiosharing/AudioSharingPreferenceController;->mBroadcastCallback:Landroid/bluetooth/BluetoothLeBroadcast$Callback;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "Skip register callbacks, profile not ready"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
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
