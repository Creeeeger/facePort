.class public final Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public a2dp:Landroid/bluetooth/BluetoothA2dp;

.field public final audioManager:Lcom/android/systemui/volume/util/AudioManagerWrapper;

.field public final bluetoothProfileServiceListener:Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;

.field public final context:Landroid/content/Context;

.field public hfp:Landroid/bluetooth/BluetoothHeadset;

.field public leAudio:Landroid/bluetooth/BluetoothLeAudio;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper$bluetoothProfileServiceListener$1;-><init>(Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    const/16 v2, 0x16

    invoke-virtual {v1, p1, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    const/16 v2, 0x15

    invoke-virtual {v1, p1, v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    new-instance v0, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-direct {v0, p1}, Lcom/android/systemui/volume/util/AudioManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->audioManager:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    return-void
.end method


# virtual methods
.method public final cachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->context:Landroid/content/Context;

    sget-object v1, Lcom/android/settingslib/bluetooth/BluetoothUtils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/BluetoothUtils$2;

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/BluetoothUtils$2;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->context:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/BluetoothUtils$2;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public final getActiveBTDeviceName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->audioManager:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    iget-object v0, v0, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v0

    const/16 v1, 0x17

    const-string v2, ""

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    sget-object v1, Lcom/android/systemui/volume/util/BluetoothA2dpUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothA2dpUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothCommonUtil;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedLeDevices()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->mapNames(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothCommonUtil;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getHearingAidDevices()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->mapNames(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v0

    :goto_1
    return-object v2
.end method

.method public final getBtCallDeviceName()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->hfp:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_5

    sget-object p0, Lcom/android/systemui/volume/util/BluetoothHeadsetUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothHeadsetUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothCommonUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->leAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz p0, :cond_8

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothLeAudioUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothLeAudioUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/volume/util/BluetoothCommonUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothCommonUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudio;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_6

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_6
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-nez v1, :cond_4

    :cond_8
    :goto_1
    return-object v2
.end method

.method public final getConnectedDevices(Z)Ljava/util/List;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedLeDevices()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->audioManager:Lcom/android/systemui/volume/util/AudioManagerWrapper;

    iget-object p1, p1, Lcom/android/systemui/volume/util/AudioManagerWrapper;->am:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result p1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz p0, :cond_1

    sget-object p1, Lcom/android/systemui/volume/util/BluetoothA2dpUtil;->INSTANCE:Lcom/android/systemui/volume/util/BluetoothA2dpUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/systemui/volume/util/BluetoothA2dpUtil;->getOrderConnectedDevices(Landroid/bluetooth/BluetoothA2dp;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_4

    :cond_1
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getConnectedLeDevices()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->getHearingAidDevices()Ljava/util/List;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0
.end method

.method public final getConnectedLeDevices()Ljava/util/List;
    .locals 5

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->cachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-object v2

    :goto_2
    sget v0, Lkotlin/Result;->$r8$clinit:I

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getConnectedLeHearingAidDevice()Ljava/util/List;
    .locals 5

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->cachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearingAidDevice()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->cachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsHearingAidDeviceByUUID:Z

    if-eqz v3, :cond_1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-object v1

    :goto_3
    sget v0, Lkotlin/Result;->$r8$clinit:I

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final getHearingAidDevices()Ljava/util/List;
    .locals 5

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;->cachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-object v2

    :goto_2
    sget v0, Lkotlin/Result;->$r8$clinit:I

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0
.end method
