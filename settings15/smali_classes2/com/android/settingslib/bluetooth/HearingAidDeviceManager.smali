.class public final Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mCachedDevices:Ljava/util/List;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mFilteredCachedDevices:Ljava/util/List;

.field public final mRoutingHelper:Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    sput-boolean v0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Ljava/util/List;Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;",
            "Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p3, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    iput-object p4, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mRoutingHelper:Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;

    iget-object p1, p2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mFilteredCachedDevices:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mFilteredCachedDevices:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mFilteredCachedDevices:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    iput-object p4, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p3, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    new-instance p2, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;

    invoke-direct {p2, p1}, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mRoutingHelper:Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;

    return-void
.end method

.method public static isValidHiSyncId(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final findMainDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 4

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mGroupId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget-object v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_3
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->isValidHiSyncId(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_4
    return-object v0
.end method

.method public final generateHearingAidInfo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/HearingAidInfo;
    .locals 11

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    const/4 v2, -0x1

    const-string v3, ", info="

    const-string v4, "generateHearingAidInfo, "

    sget-boolean v5, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->DEBUG:Z

    const-string v6, "HearingAidDeviceManager"

    if-nez v1, :cond_0

    const-string v1, "HearingAidProfile is not supported on this device"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    iget-object v7, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v7}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->isValidHiSyncId(J)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object p0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v0, v1, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    const-string v9, "Proxy not attached to HearingAidService"

    const-string v10, "HearingAidProfile"

    if-nez v0, :cond_1

    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    :goto_0
    sget-object v0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    iget-object v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v1, :cond_2

    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    :goto_1
    sget-object v1, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_MODE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    new-instance v1, Lcom/android/settingslib/bluetooth/HearingAidInfo;

    invoke-direct {v1, p0, v0, v7, v8}, Lcom/android/settingslib/bluetooth/HearingAidInfo;-><init>(IIJ)V

    if-eqz v5, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v1

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-eqz v1, :cond_f

    if-nez p0, :cond_5

    goto/16 :goto_9

    :cond_5
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LeAudioProfile;->mService:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz p0, :cond_7

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v7}, Landroid/bluetooth/BluetoothLeAudio;->getAudioLocation(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    goto :goto_4

    :cond_7
    :goto_3
    move p0, v0

    :goto_4
    iget-object v7, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_5

    :cond_8
    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothHapClient;->getHearingAidType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    :goto_5
    if-eqz p0, :cond_10

    if-eq v1, v2, :cond_10

    sget-object v7, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING:Landroid/util/SparseIntArray;

    const v7, 0x5451451

    and-int/2addr v7, p0

    const/4 v8, 0x1

    if-eqz v7, :cond_9

    move v7, v8

    goto :goto_6

    :cond_9
    move v7, v0

    :goto_6
    const v9, 0xa8a28a2

    and-int/2addr p0, v9

    if-eqz p0, :cond_a

    move p0, v8

    goto :goto_7

    :cond_a
    move p0, v0

    :goto_7
    if-eqz v7, :cond_b

    if-eqz p0, :cond_b

    const/4 v0, 0x2

    goto :goto_8

    :cond_b
    if-eqz v7, :cond_c

    goto :goto_8

    :cond_c
    if-eqz p0, :cond_d

    move v0, v8

    goto :goto_8

    :cond_d
    move v0, v2

    :goto_8
    sget-object p0, Lcom/android/settingslib/bluetooth/HearingAidInfo;->HAP_DEVICE_TYPE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    new-instance v1, Lcom/android/settingslib/bluetooth/HearingAidInfo;

    const-wide/16 v7, 0x0

    invoke-direct {v1, v0, p0, v7, v8}, Lcom/android/settingslib/bluetooth/HearingAidInfo;-><init>(IIJ)V

    if-eqz v5, :cond_e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-object v1

    :cond_f
    :goto_9
    const-string p0, "HapClientProfile or LeAudioProfile is not supported on this device"

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public final initHearingAidDeviceIfNeeded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 8

    iget-object v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->isValidHiSyncId(J)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "Proxy not attached to HearingAidService"

    const-string v4, "HearingAidProfile"

    const/4 v5, -0x1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const-string v6, "HearingAidDeviceManager"

    if-nez p0, :cond_2

    :goto_1
    move v0, v5

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-nez v7, :cond_3

    const-string v0, "HearingAidProfile is not supported and not ready to fetch device side"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v7, v7, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v7, :cond_4

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {v7, v0}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    :goto_2
    sget-object v7, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget-object v7, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p0, :cond_5

    :goto_3
    move p0, v5

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-nez p0, :cond_6

    const-string p0, "HearingAidProfile is not supported and not ready to fetch device mode"

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_7

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v7}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    :goto_4
    sget-object v1, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_MODE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    new-instance v1, Lcom/android/settingslib/bluetooth/HearingAidInfo;

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/android/settingslib/bluetooth/HearingAidInfo;-><init>(IIJ)V

    invoke-virtual {p1, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setHearingAidInfo(Lcom/android/settingslib/bluetooth/HearingAidInfo;)V

    :cond_8
    return-void
.end method

.method public final onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mContext:Landroid/content/Context;

    const-string v1, "settings_audio_routing"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->CALL_ROUTING_ATTRIBUTES:[I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies([ILandroid/media/AudioDeviceAttributes;I)V

    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->MEDIA_ROUTING_ATTRIBUTES:[I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies([ILandroid/media/AudioDeviceAttributes;I)V

    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->RINGTONE_ROUTING_ATTRIBUTES:[I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies([ILandroid/media/AudioDeviceAttributes;I)V

    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->NOTIFICATION_ROUTING_ATTRIBUTES:[I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies([ILandroid/media/AudioDeviceAttributes;I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mRoutingHelper:Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;->getMatchedHearingDeviceAttributes(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Can not find expected AudioDeviceAttributes for hearing device: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HearingAidDeviceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "hearing_aid_call_routing"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "hearing_aid_media_routing"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "hearing_aid_ringtone_routing"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "hearing_aid_notification_routing"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget-object v4, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->CALL_ROUTING_ATTRIBUTES:[I

    invoke-virtual {p0, v4, v0, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies([ILandroid/media/AudioDeviceAttributes;I)V

    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->MEDIA_ROUTING_ATTRIBUTES:[I

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies([ILandroid/media/AudioDeviceAttributes;I)V

    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->RINGTONE_ROUTING_ATTRIBUTES:[I

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies([ILandroid/media/AudioDeviceAttributes;I)V

    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->NOTIFICATION_ROUTING_ATTRIBUTES:[I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies([ILandroid/media/AudioDeviceAttributes;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onHiSyncIdChanged(J)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v0, :cond_6

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager$$ExternalSyntheticLambda0;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    const-string v5, "HearingAidDeviceManager"

    if-eqz v4, :cond_1

    const-string v3, "Skip ASHA grouping since this device supports CSIP"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-ne v2, v1, :cond_2

    move v2, v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v1, v0

    move v0, v2

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSubDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mFilteredCachedDevices:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onHiSyncIdChanged: removed from UI device ="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", with hiSyncId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->DEBUG:Z

    if-eqz p2, :cond_5

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_6
    return-void
.end method

.method public final onProfileConnectionStateChangedIfProcessed(ILcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->onHiSyncIdChanged(J)V

    invoke-virtual {p0, p2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->findMainDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->switchDeviceContent(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :goto_0
    return v0

    :cond_2
    iget-boolean p1, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mUnpairing:Z

    if-eqz p1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->findMainDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    iget-object p1, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto :goto_1

    :cond_5
    iget-object p1, p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p0, p2, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->switchDeviceContent(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return v0

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public final setPreferredDeviceRoutingStrategies([ILandroid/media/AudioDeviceAttributes;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mRoutingHelper:Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;->getSupportedStrategies([I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;->setPreferredDeviceRoutingStrategies(Ljava/util/List;Landroid/media/AudioDeviceAttributes;I)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "routingStrategies: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "routingValue: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " fail to configure AudioProductStrategy"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HearingAidDeviceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final setSubDeviceIfNeeded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 8

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->isValidHiSyncId(J)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "HearingAidDeviceManager"

    const-string p1, "Skip ASHA grouping since this device supports CSIP"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_0
    if-ltz v2, :cond_2

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v5, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSubDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    return v4

    :cond_3
    return v3
.end method

.method public final switchDeviceContent(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 7

    iget-object v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    iget-object p2, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-short v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-boolean v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    iget-object v2, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    iget-object v3, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v6, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v6, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-short v6, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    iput-short v6, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-boolean v6, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    iput-boolean v6, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    iget-object v6, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    iput-object v6, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    iget-object v6, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iput-object v6, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v6, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    iput-object v6, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    iput-object p2, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput-short v0, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    iput-boolean v1, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    iput-object v3, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    iput-object v4, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iput-object v2, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHearingAidInfo:Lcom/android/settingslib/bluetooth/HearingAidInfo;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchActiveDevices()V

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public final syncDeviceIfNeeded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, v0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothHapClient;->supportsSynchronizedPresets(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->findMainDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/HapClientProfile;->getActivePresetIndex(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    iget-object v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/HapClientProfile;->getActivePresetIndex(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eqz p0, :cond_2

    if-eq p0, v1, :cond_2

    sget-boolean v2, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "syncing preset from "

    const-string v3, "->"

    const-string v4, ", device="

    invoke-static {v2, v3, v1, p0, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HearingAidDeviceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, p0}, Lcom/android/settingslib/bluetooth/HapClientProfile;->selectPreset(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_2
    return-void
.end method

.method public final updateHearingAidsDevices()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->isValidHiSyncId(J)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->generateHearingAidInfo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/HearingAidInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setHearingAidInfo(Lcom/android/settingslib/bluetooth/HearingAidInfo;)V

    iget-wide v2, v3, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mHiSyncId:J

    invoke-static {v2, v3}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->isValidHiSyncId(J)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->onHiSyncIdChanged(J)V

    goto :goto_1

    :cond_3
    return-void
.end method
