.class public abstract Lcom/android/settingslib/media/InfoMediaManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mCallbacks:Ljava/util/Collection;

.field public final mContext:Landroid/content/Context;

.field public mLastKnownPlaybackInfo:Landroid/media/session/MediaController$PlaybackInfo;

.field public mMediaController:Landroid/media/session/MediaController;

.field public final mMediaControllerCallback:Lcom/android/settingslib/media/InfoMediaManager$MediaControllerCallback;

.field public final mMediaDevices:Ljava/util/List;

.field public final mPackageName:Ljava/lang/String;

.field public final mPreferenceItemMap:Ljava/util/Map;

.field public final mRouterManager:Landroid/media/MediaRouter2Manager;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "InfoMediaManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/media/session/MediaController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaDevices:Ljava/util/List;

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mCallbacks:Ljava/util/Collection;

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPreferenceItemMap:Ljava/util/Map;

    new-instance p2, Lcom/android/settingslib/media/InfoMediaManager$MediaControllerCallback;

    invoke-direct {p2, p0}, Lcom/android/settingslib/media/InfoMediaManager$MediaControllerCallback;-><init>(Lcom/android/settingslib/media/InfoMediaManager;)V

    iput-object p2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaControllerCallback:Lcom/android/settingslib/media/InfoMediaManager$MediaControllerCallback;

    iput-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/settingslib/media/InfoMediaManager;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p5, p0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mLastKnownPlaybackInfo:Landroid/media/session/MediaController$PlaybackInfo;

    :cond_0
    invoke-static {p1}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    return-void
.end method


# virtual methods
.method public addMediaDevice(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getType()I

    move-result p2

    if-eqz p2, :cond_9

    const/16 v0, 0x1d

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/16 v0, 0x7d0

    if-eq p2, v0, :cond_9

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/16 v0, 0x16

    if-eq p2, v0, :cond_2

    const/16 v0, 0x17

    const-string v2, "InfoMediaManager"

    if-eq p2, v0, :cond_0

    const/16 v0, 0x19

    if-eq p2, v0, :cond_2

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    const-string p1, "addMediaDevice() unknown device type : "

    invoke-static {p2, p1, v2}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_0
    new-instance v1, Lcom/android/settingslib/media/ComplexMediaDevice;

    iget-object p2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPreferenceItemMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RouteListingPreference$Item;

    invoke-direct {v1, p2, p1}, Lcom/android/settingslib/media/MediaDevice;-><init>(Landroid/content/Context;Landroid/media/MediaRoute2Info;)V

    goto/16 :goto_2

    :cond_0
    :pswitch_1
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getAddress()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring bluetooth route with no set address: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_a

    new-instance v0, Lcom/android/settingslib/media/BluetoothMediaDevice;

    iget-object v2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPreferenceItemMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RouteListingPreference$Item;

    invoke-direct {v0, v2, p2, p1}, Lcom/android/settingslib/media/BluetoothMediaDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/media/MediaRoute2Info;)V

    move-object v1, v0

    goto/16 :goto_2

    :cond_2
    :pswitch_2
    new-instance p2, Lcom/android/settingslib/media/PhoneMediaDevice;

    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPreferenceItemMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RouteListingPreference$Item;

    invoke-direct {p2, v0, p1}, Lcom/android/settingslib/media/MediaDevice;-><init>(Landroid/content/Context;Landroid/media/MediaRoute2Info;)V

    new-instance p1, Lcom/android/settingslib/media/DeviceIconUtil;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v2, "android.software.leanback"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    const-string p1, "ro.build.characteristics"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v2, "tablet"

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/settingslib/media/MediaDevice;->initDeviceRecord()V

    sget-object p1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

    invoke-static {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->getCachedCastDevicesCopy()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    iget-object v3, v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->mCastDevice:Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;

    invoke-virtual {v3}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

    invoke-static {v0, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalCastProfileManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    iget-object v4, v4, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->mAudioCastProfile:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    iget-object v5, v4, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->mService:Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;

    if-nez v5, :cond_6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Lcom/samsung/android/bluetooth/SemBluetoothAudioCast;->getConnectedDevices()Ljava/util/List;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda1;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda3;

    const/4 v7, 0x1

    invoke-direct {v6, v4, v7}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v1, v2

    :cond_7
    sput-object v1, Lcom/android/settingslib/media/PhoneMediaDevice;->sCachedBluetoothCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    const-string p1, "display"

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settingslib/media/PhoneMediaDevice;->sDisplayDeviceName:Ljava/lang/String;

    :cond_8
    move-object v1, p2

    goto :goto_2

    :cond_9
    :pswitch_3
    new-instance v1, Lcom/android/settingslib/media/InfoMediaDevice;

    iget-object p2, p0, Lcom/android/settingslib/media/InfoMediaManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mPreferenceItemMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RouteListingPreference$Item;

    invoke-direct {v1, p2, p1}, Lcom/android/settingslib/media/MediaDevice;-><init>(Landroid/content/Context;Landroid/media/MediaRoute2Info;)V

    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->initDeviceRecord()V

    :cond_a
    :goto_2
    if-eqz v1, :cond_b

    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaDevices:Ljava/util/List;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final dispatchDeviceListAdded(Ljava/util/List;)V
    .locals 9

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v2, v2, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevicesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v3, v3, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v3, v3, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/media/MediaDevice;

    iget v3, v3, Lcom/android/settingslib/media/MediaDevice;->mType:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    :cond_2
    iget-object v1, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v1, v1, Lcom/android/settingslib/media/LocalMediaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.type.television"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.software.leanback"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->getMutingExpectedDevice()Lcom/android/settingslib/media/BluetoothMediaDevice;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v3, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v3, v3, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v1, v1, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->buildDisconnectedBluetoothDevice()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v1, v1, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v1}, Lcom/android/settingslib/media/LocalMediaManager;->updateCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    iget-object v1, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, v1, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-direct {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    invoke-interface {v3, v2}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onDeviceListUpdate(Ljava/util/List;)V

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v1, v1, Lcom/android/settingslib/media/LocalMediaManager;->mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v2, v1, Lcom/android/settingslib/media/LocalMediaManager;->mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settingslib/media/LocalMediaManager;->getMediaDeviceById(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v3

    const/4 v5, 0x0

    if-nez v3, :cond_7

    const-string v1, "LocalMediaManager"

    const-string v2, "connectDevice() connectDevice not in the list!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_7
    instance-of v6, v3, Lcom/android/settingslib/media/BluetoothMediaDevice;

    if-eqz v6, :cond_9

    move-object v6, v3

    check-cast v6, Lcom/android/settingslib/media/BluetoothMediaDevice;

    iget-object v6, v6, Lcom/android/settingslib/media/BluetoothMediaDevice;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v7

    if-nez v7, :cond_8

    iput-object v2, v1, Lcom/android/settingslib/media/LocalMediaManager;->mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

    iput v4, v3, Lcom/android/settingslib/media/MediaDevice;->mState:I

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect$1()V

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_9

    iput v5, v3, Lcom/android/settingslib/media/MediaDevice;->mState:I

    iget-object v2, v3, Lcom/android/settingslib/media/MediaDevice;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Lcom/android/settingslib/media/MediaDevice;->getDevice()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/settingslib/media/MediaDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6, v5}, Landroid/media/AudioManager;->setDeviceToForceByUser(ILjava/lang/String;Z)I

    iput-object v3, v1, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/media/LocalMediaManager;->dispatchSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;)V

    goto/16 :goto_4

    :cond_9
    iget-object v2, v1, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/media/MediaDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v1, "LocalMediaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "connectDevice() this device is already connected! : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    iput v4, v3, Lcom/android/settingslib/media/MediaDevice;->mState:I

    instance-of v2, v3, Lcom/android/settingslib/media/PhoneMediaDevice;

    if-eqz v2, :cond_b

    iget-object v2, v3, Lcom/android/settingslib/media/MediaDevice;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Lcom/android/settingslib/media/MediaDevice;->getDevice()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/settingslib/media/MediaDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6, v5}, Landroid/media/AudioManager;->setDeviceToForceByUser(ILjava/lang/String;Z)I

    iput v5, v3, Lcom/android/settingslib/media/MediaDevice;->mState:I

    iput-object v3, v1, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/media/LocalMediaManager;->dispatchSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;)V

    goto :goto_4

    :cond_b
    iget-object v1, v1, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v3, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    if-nez v2, :cond_c

    const-string v1, "InfoMediaManager"

    const-string v2, "Unable to connect. RouteInfo is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    iget v2, v3, Lcom/android/settingslib/media/MediaDevice;->mConnectedRecord:I

    add-int/2addr v2, v4

    iput v2, v3, Lcom/android/settingslib/media/MediaDevice;->mConnectedRecord:I

    invoke-static {}, Lcom/android/settingslib/media/ConnectionRecordManager;->getInstance()Lcom/android/settingslib/media/ConnectionRecordManager;

    move-result-object v2

    iget-object v4, v3, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v6

    iget v7, v3, Lcom/android/settingslib/media/MediaDevice;->mConnectedRecord:I

    monitor-enter v2

    :try_start_1
    const-string v8, "seamless_transfer_record"

    invoke-virtual {v4, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iput-object v6, v2, Lcom/android/settingslib/media/ConnectionRecordManager;->mLastSelectedDevice:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v6, "last_selected_device"

    iget-object v7, v2, Lcom/android/settingslib/media/ConnectionRecordManager;->mLastSelectedDevice:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    iget-object v2, v3, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/media/InfoMediaManager;->transferToRoute(Landroid/media/MediaRoute2Info;)V

    :goto_4
    iget-object v1, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v2, v1, Lcom/android/settingslib/media/LocalMediaManager;->mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

    iput v5, v2, Lcom/android/settingslib/media/MediaDevice;->mState:I

    invoke-virtual {v1, v2}, Lcom/android/settingslib/media/LocalMediaManager;->dispatchSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;)V

    iget-object v0, v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settingslib/media/LocalMediaManager;->mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v2

    throw p0

    :goto_5
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_d
    return-void
.end method

.method public abstract getRemoteSessions()Ljava/util/List;
.end method

.method public abstract getRouteListingPreference()Landroid/media/RouteListingPreference;
.end method

.method public abstract getRoutingSessionById(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
.end method

.method public final declared-synchronized refreshDevices()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mRouterManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settingslib/media/InfoMediaManager;->addMediaDevice(Landroid/media/MediaRoute2Info;Landroid/media/RoutingSessionInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/InfoMediaManager;->dispatchDeviceListAdded(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract registerRouter()V
.end method

.method public abstract setSessionVolume(Landroid/media/RoutingSessionInfo;I)V
.end method

.method public abstract startScanOnRouter()V
.end method

.method public abstract stopScanOnRouter()V
.end method

.method public abstract transferToRoute(Landroid/media/MediaRoute2Info;)V
.end method

.method public abstract unregisterRouter()V
.end method
