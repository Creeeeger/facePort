.class public final Lcom/android/settingslib/media/LocalMediaManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# instance fields
.field mAudioManager:Landroid/media/AudioManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mCallbacks:Ljava/util/Collection;

.field public final mContext:Landroid/content/Context;

.field mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mDeviceAttributeChangeCallback:Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mDisconnectedMediaDevices:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation
.end field

.field public final mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

.field public final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field final mMediaDeviceCallback:Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mMediaDevices:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation
.end field

.field public final mMediaDevicesLock:Ljava/lang/Object;

.field public mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

.field public final mPackageName:Ljava/lang/String;

.field public final mReceiver:Lcom/android/settingslib/media/LocalMediaManager$Receiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevicesLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    invoke-direct {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;-><init>(Lcom/android/settingslib/media/LocalMediaManager;)V

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDeviceCallback:Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mDisconnectedMediaDevices:Ljava/util/List;

    new-instance v0, Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;

    invoke-direct {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;-><init>(Lcom/android/settingslib/media/LocalMediaManager;)V

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mDeviceAttributeChangeCallback:Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;

    new-instance v0, Lcom/android/settingslib/media/LocalMediaManager$Receiver;

    invoke-direct {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager$Receiver;-><init>(Lcom/android/settingslib/media/LocalMediaManager;)V

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mReceiver:Lcom/android/settingslib/media/LocalMediaManager$Receiver;

    iput-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/media/LocalMediaManager;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string p0, "LocalMediaManager"

    const-string p1, "Bluetooth is not supported on this device"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget v1, Lcom/android/settingslib/media/InfoMediaManager;->$r8$clinit:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Lcom/android/settingslib/media/RouterInfoMediaManager;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v0

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/media/RouterInfoMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/media/session/MediaController;)V
    :try_end_0
    .catch Lcom/android/settingslib/media/InfoMediaManager$PackageNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Returning a no-op InfoMediaManager for package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InfoMediaManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/settingslib/media/NoOpInfoMediaManager;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, v0

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/media/InfoMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/media/session/MediaController;)V

    :goto_0
    iput-object v9, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    return-void
.end method


# virtual methods
.method public final adjustSessionVolume(ILjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0, p2}, Lcom/android/settingslib/media/InfoMediaManager;->getRoutingSessionById(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/media/InfoMediaManager;->setSessionVolume(Landroid/media/RoutingSessionInfo;I)V

    goto :goto_0

    :cond_0
    const-string p0, "adjustSessionVolume: Unable to find session: "

    const-string p1, "LocalMediaManager"

    invoke-static {p0, p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final dispatchSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    return-object p0
.end method

.method public final getMediaDeviceById(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "LocalMediaManager"

    const-string v0, "getMediaDeviceById() failed to find device with id: "

    invoke-static {v0, p1, p0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final isActiveDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v0

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_0

    iget-object v4, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz v4, :cond_1

    const/16 v5, 0x17

    if-ne v0, v5, :cond_1

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getActiveDevices()Ljava/util/List;

    move-result-object v4

    iget-object v5, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-eqz p0, :cond_3

    const/16 v5, 0x1a

    if-eq v0, v5, :cond_2

    const/16 v5, 0x1b

    if-eq v0, v5, :cond_2

    const/16 v5, 0x1e

    if-ne v0, v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LeAudioProfile;->getActiveDevices()Ljava/util/List;

    move-result-object p0

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_2

    :cond_3
    move p0, v3

    :goto_2
    if-nez v1, :cond_5

    if-nez v4, :cond_5

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :cond_5
    :goto_3
    return v2
.end method

.method public final registerCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDeviceCallback:Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    iget-object v1, v0, Lcom/android/settingslib/media/InfoMediaManager;->mCallbacks:Ljava/util/Collection;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    iget-object v2, v0, Lcom/android/settingslib/media/InfoMediaManager;->mCallbacks:Ljava/util/Collection;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/settingslib/media/InfoMediaManager;->mCallbacks:Ljava/util/Collection;

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    iget-object p1, v0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaDevices:Ljava/util/List;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {v0}, Lcom/android/settingslib/media/InfoMediaManager;->registerRouter()V

    iget-object p1, v0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaControllerCallback:Lcom/android/settingslib/media/InfoMediaManager$MediaControllerCallback;

    invoke-virtual {p1, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/media/InfoMediaManager;->getRouteListingPreference()Landroid/media/RouteListingPreference;

    move-result-object p1

    iget-object v1, v0, Lcom/android/settingslib/media/InfoMediaManager;->mPreferenceItemMap:Ljava/util/Map;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/RouteListingPreference;->getItems()Ljava/util/List;

    move-result-object p1

    new-instance v2, Lcom/android/settingslib/media/InfoMediaManager$Api34Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/settingslib/media/InfoMediaManager$Api34Impl$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/settingslib/media/InfoMediaManager;->refreshDevices()V

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mReceiver:Lcom/android/settingslib/media/LocalMediaManager$Receiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager$Receiver;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v0, v0, Lcom/android/settingslib/media/LocalMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method public final shouldEnableVolumeSeekBar(Landroid/media/RoutingSessionInfo;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getVolumeHandling()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final unregisterCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDeviceCallback:Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    iget-object v1, v0, Lcom/android/settingslib/media/InfoMediaManager;->mCallbacks:Ljava/util/Collection;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/android/settingslib/media/InfoMediaManager;->mCallbacks:Ljava/util/Collection;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaControllerCallback:Lcom/android/settingslib/media/InfoMediaManager$MediaControllerCallback;

    invoke-virtual {p1, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/media/InfoMediaManager;->unregisterRouter()V

    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mDisconnectedMediaDevices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/media/MediaDevice;

    check-cast v0, Lcom/android/settingslib/media/BluetoothMediaDevice;

    iget-object v0, v0, Lcom/android/settingslib/media/BluetoothMediaDevice;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mDeviceAttributeChangeCallback:Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mReceiver:Lcom/android/settingslib/media/LocalMediaManager$Receiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager$Receiver;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object p1, p1, Lcom/android/settingslib/media/LocalMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public updateCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "updateCurrentConnectedDevice curDeviceType = "

    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/media/LocalMediaManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v2

    const-string v3, "LocalMediaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/media/MediaDevice;

    instance-of v5, v4, Lcom/android/settingslib/media/BluetoothMediaDevice;

    if-eqz v5, :cond_2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_1

    const/16 v5, 0x17

    if-eq v2, v5, :cond_1

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_1

    const/16 v5, 0x1b

    if-eq v2, v5, :cond_1

    const/16 v5, 0x1e

    if-ne v2, v5, :cond_2

    :cond_1
    move-object v5, v4

    check-cast v5, Lcom/android/settingslib/media/BluetoothMediaDevice;

    iget-object v5, v5, Lcom/android/settingslib/media/BluetoothMediaDevice;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v5}, Lcom/android/settingslib/media/LocalMediaManager;->isActiveDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v5

    if-ne v5, v2, :cond_0

    const-string p0, "LocalMediaManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentConnectedDevice device name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v4

    check-cast v2, Lcom/android/settingslib/media/BluetoothMediaDevice;

    iget-object v2, v2, Lcom/android/settingslib/media/BluetoothMediaDevice;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " device type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/android/settingslib/media/MediaDevice;->mType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v4

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    instance-of v5, v4, Lcom/android/settingslib/media/PhoneMediaDevice;

    if-eqz v5, :cond_0

    invoke-static {v2}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v5

    invoke-virtual {v4}, Lcom/android/settingslib/media/MediaDevice;->getDevice()I

    move-result v6

    if-ne v5, v6, :cond_0

    const-string v3, "LocalMediaManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCurrentConnectedDevice device name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " device type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/settingslib/media/MediaDevice;->mType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    goto/16 :goto_0

    :cond_3
    monitor-exit v1

    return-object v3

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
