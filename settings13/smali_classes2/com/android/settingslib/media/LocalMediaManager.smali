.class public Lcom/android/settingslib/media/LocalMediaManager;
.super Ljava/lang/Object;
.source "LocalMediaManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;,
        Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;,
        Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

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

.field private mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

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

.field private final mMediaDevicesLock:Ljava/lang/Object;

.field private mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

.field private mPackageName:Ljava/lang/String;

.field mPhoneDevice:Lcom/android/settingslib/media/MediaDevice;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settingslib/media/LocalMediaManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInfoMediaManager(Lcom/android/settingslib/media/LocalMediaManager;)Lcom/android/settingslib/media/InfoMediaManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalBluetoothManager(Lcom/android/settingslib/media/LocalMediaManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaDevicesLock(Lcom/android/settingslib/media/LocalMediaManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevicesLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnTransferBluetoothDevice(Lcom/android/settingslib/media/LocalMediaManager;)Lcom/android/settingslib/media/MediaDevice;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/settingslib/media/LocalMediaManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmOnTransferBluetoothDevice(Lcom/android/settingslib/media/LocalMediaManager;Lcom/android/settingslib/media/MediaDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$munRegisterDeviceAttributeChangeCallback(Lcom/android/settingslib/media/LocalMediaManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/media/LocalMediaManager;->unRegisterDeviceAttributeChangeCallback()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevicesLock:Ljava/lang/Object;

    .line 82
    new-instance v0, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    invoke-direct {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;-><init>(Lcom/android/settingslib/media/LocalMediaManager;)V

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDeviceCallback:Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    .line 92
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mDisconnectedMediaDevices:Ljava/util/List;

    .line 100
    new-instance v0, Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;

    invoke-direct {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;-><init>(Lcom/android/settingslib/media/LocalMediaManager;)V

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mDeviceAttributeChangeCallback:Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;

    .line 130
    iput-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mContext:Landroid/content/Context;

    .line 131
    iput-object p2, p0, Lcom/android/settingslib/media/LocalMediaManager;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 133
    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 134
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 135
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string p0, "LocalMediaManager"

    const-string p1, "Bluetooth is not supported on this device"

    .line 136
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_0
    new-instance v0, Lcom/android/settingslib/media/InfoMediaManager;

    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/settingslib/media/InfoMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    .line 143
    iget-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mContext:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private getCallbacks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;",
            ">;"
        }
    .end annotation

    .line 599
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private isActiveDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 4

    .line 574
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 579
    iget-object v2, p0, Lcom/android/settingslib/media/LocalMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    .line 580
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 583
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getActiveDevices()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    .line 588
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    .line 589
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioProfile()Lcom/android/settingslib/bluetooth/LeAudioProfile;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 591
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LeAudioProfile;->getActiveDevices()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    if-nez v0, :cond_3

    if-nez v2, :cond_3

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private isBleDeviceType(I)Z
    .locals 0

    const/16 p0, 0x1a

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1b

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1e

    if-ne p1, p0, :cond_0

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

.method private unRegisterDeviceAttributeChangeCallback()V
    .locals 3

    .line 760
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mDisconnectedMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaDevice;

    .line 761
    check-cast v1, Lcom/android/settingslib/media/BluetoothMediaDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/media/BluetoothMediaDevice;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/media/LocalMediaManager;->mDeviceAttributeChangeCallback:Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;

    .line 762
    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public adjustSessionVolume(Ljava/lang/String;I)V
    .locals 3

    .line 410
    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getActiveMediaSession()Ljava/util/List;

    move-result-object v0

    .line 411
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 412
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0, v1, p2}, Lcom/android/settingslib/media/InfoMediaManager;->adjustSessionVolume(Landroid/media/RoutingSessionInfo;I)V

    return-void

    .line 417
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "adjustSessionVolume: Unable to find session: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalMediaManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public connectDevice(Lcom/android/settingslib/media/MediaDevice;)Z
    .locals 5

    .line 171
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settingslib/media/LocalMediaManager;->getMediaDeviceById(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v1

    .line 173
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez v1, :cond_0

    const-string p0, "LocalMediaManager"

    const-string p1, "connectDevice() connectDevice not in the list!"

    .line 175
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 178
    :cond_0
    instance-of v2, v1, Lcom/android/settingslib/media/BluetoothMediaDevice;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 179
    move-object v2, v1

    check-cast v2, Lcom/android/settingslib/media/BluetoothMediaDevice;

    .line 180
    invoke-virtual {v2}, Lcom/android/settingslib/media/BluetoothMediaDevice;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 181
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v4

    if-nez v4, :cond_1

    .line 182
    iput-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mOnTransferBluetoothDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 183
    invoke-virtual {v1, v3}, Lcom/android/settingslib/media/MediaDevice;->setState(I)V

    .line 184
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect()V

    return v3

    .line 186
    :cond_1
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 187
    invoke-virtual {v1, v0}, Lcom/android/settingslib/media/MediaDevice;->setState(I)V

    .line 188
    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->routeToSelected()V

    .line 189
    iput-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 190
    invoke-virtual {p0, v1, v0}, Lcom/android/settingslib/media/LocalMediaManager;->dispatchSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V

    return v3

    .line 196
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/media/MediaDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "LocalMediaManager"

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectDevice() this device is already connected! : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 201
    :cond_3
    iget-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    if-eqz p1, :cond_4

    .line 202
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->disconnect()V

    .line 205
    :cond_4
    invoke-virtual {v1, v3}, Lcom/android/settingslib/media/MediaDevice;->setState(I)V

    .line 208
    instance-of p1, v1, Lcom/android/settingslib/media/PhoneMediaDevice;

    if-eqz p1, :cond_5

    .line 209
    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->routeToSelected()V

    .line 210
    invoke-virtual {v1, v0}, Lcom/android/settingslib/media/MediaDevice;->setState(I)V

    .line 211
    iput-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 212
    invoke-virtual {p0, v1, v0}, Lcom/android/settingslib/media/LocalMediaManager;->dispatchSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V

    return v3

    .line 218
    :cond_5
    iget-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 219
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/media/InfoMediaManager;->connectDeviceWithoutPackageName(Lcom/android/settingslib/media/MediaDevice;)Z

    goto :goto_0

    .line 221
    :cond_6
    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->connect()Z

    :goto_0
    return v3

    :catchall_0
    move-exception p0

    .line 173
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method dispatchDeviceAttributesChanged()V
    .locals 1

    .line 259
    invoke-direct {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getCallbacks()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    .line 260
    invoke-interface {v0}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onDeviceAttributesChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method dispatchDeviceListUpdate()V
    .locals 2

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 253
    invoke-direct {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getCallbacks()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    .line 254
    invoke-interface {v1, v0}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onDeviceListUpdate(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method dispatchOnRequestFailed(I)V
    .locals 1

    .line 265
    invoke-direct {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getCallbacks()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    .line 266
    invoke-interface {v0, p1}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onRequestFailed(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method dispatchSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 1

    .line 227
    invoke-direct {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getCallbacks()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;

    .line 228
    invoke-interface {v0, p1, p2}, Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;->onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getActiveMediaSession()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 462
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->getActiveMediaSession()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCurrentConnectedDevice:Lcom/android/settingslib/media/MediaDevice;

    return-object p0
.end method

.method public getMediaDeviceById(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/settingslib/media/MediaDevice;"
        }
    .end annotation

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/media/MediaDevice;

    .line 311
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const-string p0, "LocalMediaManager"

    const-string p1, "getMediaDeviceById() can\'t found device"

    .line 315
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public registerCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public shouldDisableMediaOutput(Ljava/lang/String;)Z
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/InfoMediaManager;->shouldDisableMediaOutput(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldEnableVolumeSeekBar(Landroid/media/RoutingSessionInfo;)Z
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/InfoMediaManager;->shouldEnableVolumeSeekBar(Landroid/media/RoutingSessionInfo;)Z

    move-result p0

    return p0
.end method

.method public startScan()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDeviceCallback:Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/media/MediaManager;->registerCallback(Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;)V

    .line 248
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaManager;->startScan()V

    return-void

    :catchall_0
    move-exception p0

    .line 246
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public stopScan()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDeviceCallback:Lcom/android/settingslib/media/LocalMediaManager$MediaDeviceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/media/MediaManager;->unregisterCallback(Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;)V

    .line 298
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mInfoMediaManager:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/InfoMediaManager;->stopScan()V

    .line 299
    invoke-direct {p0}, Lcom/android/settingslib/media/LocalMediaManager;->unRegisterDeviceAttributeChangeCallback()V

    return-void
.end method

.method public unregisterCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method updateCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v1

    const-string v2, "LocalMediaManager"

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCurrentConnectedDevice curDeviceType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v2, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/media/MediaDevice;

    .line 495
    instance-of v7, v5, Lcom/android/settingslib/media/BluetoothMediaDevice;

    if-eqz v7, :cond_2

    if-eq v1, v6, :cond_1

    const/16 v6, 0x17

    if-eq v1, v6, :cond_1

    .line 499
    invoke-direct {p0, v1}, Lcom/android/settingslib/media/LocalMediaManager;->isBleDeviceType(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 501
    :cond_1
    move-object v6, v5

    check-cast v6, Lcom/android/settingslib/media/BluetoothMediaDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/media/BluetoothMediaDevice;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settingslib/media/LocalMediaManager;->isActiveDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    if-eqz v6, :cond_0

    .line 503
    invoke-virtual {v6}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v6

    if-ne v6, v1, :cond_0

    const-string p0, "LocalMediaManager"

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCurrentConnectedDevice device name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " device type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    monitor-exit v0

    return-object v5

    .line 508
    :cond_2
    instance-of v6, v5, Lcom/android/settingslib/media/PhoneMediaDevice;

    if-eqz v6, :cond_0

    .line 510
    invoke-static {v1}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v6

    invoke-virtual {v5}, Lcom/android/settingslib/media/MediaDevice;->getDevice()I

    move-result v7

    if-ne v6, v7, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_3
    if-nez v4, :cond_9

    if-ne v1, v6, :cond_6

    .line 518
    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 521
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 523
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    :cond_4
    if-eqz v3, :cond_9

    .line 527
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaDevice;

    .line 528
    instance-of v2, v1, Lcom/android/settingslib/media/BluetoothMediaDevice;

    if-eqz v2, :cond_5

    .line 529
    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p0, "LocalMediaManager"

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCurrentConnectedDevice a2dp active devicename = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "device type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 530
    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    monitor-exit v0

    return-object v1

    .line 537
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/settingslib/media/LocalMediaManager;->isBleDeviceType(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 538
    iget-object v1, p0, Lcom/android/settingslib/media/LocalMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    .line 539
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioProfile()Lcom/android/settingslib/bluetooth/LeAudioProfile;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 541
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LeAudioProfile;->getActiveDevices()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v2, "LocalMediaManager"

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bleDeviceList size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_7

    .line 546
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v5, "LocalMediaManager"

    .line 547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "activeBleAddress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " bleDeviceName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_7

    .line 549
    iget-object v2, p0, Lcom/android/settingslib/media/LocalMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/media/MediaDevice;

    .line 550
    instance-of v6, v5, Lcom/android/settingslib/media/BluetoothMediaDevice;

    if-eqz v6, :cond_8

    .line 551
    invoke-virtual {v5}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Lcom/android/settingslib/media/MediaDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string p0, "LocalMediaManager"

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCurrentConnectedDevice ble active devicename = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v5}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "device type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    monitor-exit v0

    return-object v5

    .line 565
    :cond_9
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
