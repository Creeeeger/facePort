.class public final Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# instance fields
.field public mAudioProfileOnly:Z

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBluetoothRepository:Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepository;

.field public final mConnectedDevices:Ljava/util/List;

.field public mConnectionState:I

.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public final mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

.field public mIsActive:Z

.field public final mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

.field public mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/bluetooth/BluetoothLogger;Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepository;Ljava/util/concurrent/Executor;Landroid/os/Looper;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p9, Ljava/util/ArrayList;

    invoke-direct {p9}, Ljava/util/ArrayList;-><init>()V

    iput-object p9, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    const/4 p9, 0x0

    iput p9, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBluetoothRepository:Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepository;

    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    new-instance p4, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    invoke-direct {p4, p0, p7}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    if-eqz p8, :cond_1

    iget-object p4, p8, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p4, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    iget-object p4, p8, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p4, p4, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    check-cast p4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p4, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p4, p8, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    monitor-enter p4

    :try_start_0
    iget-object p5, p4, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p5

    iget p6, p4, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I

    if-eq p5, p6, :cond_0

    iget-object p5, p4, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p5}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p5

    invoke-virtual {p4, p5}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    :cond_0
    iget p5, p4, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p4

    invoke-virtual {p0, p5}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->onBluetoothStateChanged(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p4

    throw p0

    :cond_1
    :goto_0
    const-string/jumbo p4, "user"

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    const-string p1, "BluetoothController"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public static connectionStateToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string v0, "UNKNOWN("

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "DISCONNECTING"

    return-object p0

    :cond_1
    const-string p0, "CONNECTED"

    return-object p0

    :cond_2
    const-string p0, "CONNECTING"

    return-object p0

    :cond_3
    const-string p0, "DISCONNECTED"

    return-object p0
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string p2, "BluetoothController state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  mLocalBluetoothManager="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p2, "  mEnabled="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mConnectionState="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connectionStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  mAudioProfileOnly="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mAudioProfileOnly:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mIsActive="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mIsActive:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mConnectedDevices="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p2, "  mCallbacks.size="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "  Bluetooth Devices:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getDevices()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " profiles="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-static {v4, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " active[A2DP]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " active[HEADSET]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " active[HEARING_AID]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x15

    invoke-virtual {p2, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " active[LE_AUDIO]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x16

    invoke-virtual {p2, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto/16 :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getBluetoothState()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mState:I

    return p0
.end method

.method public final getDevices()Ljava/util/Collection;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/android/settingslib/flags/Flags;->enableHideExclusivelyManagedBluetoothDevice()V

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isBluetoothEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    return p0
.end method

.method public final onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connectionStateToString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logAclConnectionStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    invoke-virtual {v0, p2, p1}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logActiveDeviceChanged(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getDevices()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move v3, p2

    :cond_2
    :goto_2
    or-int/2addr v0, v3

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mIsActive:Z

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    if-eq p1, v0, :cond_4

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mIsActive:Z

    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onBluetoothStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logStateChange(Ljava/lang/String;)V

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    iput p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mState:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connectionStateToString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logDeviceConnectionStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    iget-object v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    invoke-virtual {v1, v0}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logDeviceAdded(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onDeviceAttributesChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    invoke-virtual {v0}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logDeviceAttributesChanged()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 1

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    invoke-virtual {v0, p2, p1}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logBondStateChange(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    invoke-virtual {v0, p1}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logDeviceDeleted(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 1

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connectionStateToString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLogger:Lcom/android/systemui/bluetooth/BluetoothLogger;

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/systemui/bluetooth/BluetoothLogger;->logProfileConnectionStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onServiceConnected()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->updateConnected()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setBluetoothEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final updateConnected()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getDevices()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBluetoothRepository:Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepository;

    check-cast p0, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/bluetooth/BluetoothRepositoryImpl;->fetchConnectionStatusInBackground(Ljava/util/Collection;Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$$ExternalSyntheticLambda1;)V

    return-void
.end method
