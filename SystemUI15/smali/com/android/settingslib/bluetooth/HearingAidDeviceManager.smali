.class public final Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;)V"
        }
    .end annotation

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

.method public final initHearingAidDeviceIfNeeded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 9

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
    iget-object v1, v1, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v2

    :cond_3
    :goto_0
    invoke-static {v2, v3}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->isValidHiSyncId(J)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;-><init>()V

    iget-object v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v4, "Proxy not attached to HearingAidService"

    const-string v5, "HearingAidProfile"

    const/4 v6, -0x1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    const-string v7, "HearingAidDeviceManager"

    if-nez p0, :cond_4

    :goto_1
    move v1, v6

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-nez v8, :cond_5

    const-string v1, "HearingAidProfile is not supported and not ready to fetch device side"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v8, v8, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v8, :cond_6

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-virtual {v8, v1}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    :goto_2
    sget-object v8, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iput v1, v0, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mSide:I

    iget-object v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p0, :cond_7

    :goto_3
    move p0, v6

    goto :goto_4

    :cond_7
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-nez p0, :cond_8

    const-string p0, "HearingAidProfile is not supported and not ready to fetch device mode"

    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_9

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    :goto_4
    sget-object v1, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_MODE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    iput p0, v0, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mMode:I

    iput-wide v2, v0, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mHiSyncId:J

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->build()Lcom/android/settingslib/bluetooth/HearingAidInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setHearingAidInfo(Lcom/android/settingslib/bluetooth/HearingAidInfo;)V

    :cond_a
    return-void
.end method

.method public final onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 10

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mContext:Landroid/content/Context;

    const-string v1, "settings_audio_routing"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->CALL_ROUTING_ATTRIBUTES:[I

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V

    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->MEDIA_ROUTING_ATTRIBUTES:[I

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V

    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->RINGTONE_ROUTING_ATTRIBUTES:[I

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V

    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->NOTIFICATION_ROUTING_ATTRIBUTES:[I

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V

    goto/16 :goto_4

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mRoutingHelper:Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearingAidDevice()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    array-length v3, v0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_7

    aget-object v5, v0, v4

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/16 v7, 0x17

    if-eq v6, v7, :cond_3

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    const/16 v7, 0x1a

    if-ne v6, v7, :cond_5

    :cond_3
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v8, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    iget-object v9, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    if-eqz v7, :cond_4

    iget-object v7, v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_4
    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v8}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper$$ExternalSyntheticLambda0;

    invoke-direct {v8, v6}, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    new-instance v2, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v2, v5}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    :cond_7
    :goto_3
    if-nez v2, :cond_8

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

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "hearing_aid_call_routing"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "hearing_aid_media_routing"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "hearing_aid_ringtone_routing"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "hearing_aid_notification_routing"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget-object v4, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->CALL_ROUTING_ATTRIBUTES:[I

    invoke-virtual {p0, p1, v2, v4}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V

    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->MEDIA_ROUTING_ATTRIBUTES:[I

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V

    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->RINGTONE_ROUTING_ATTRIBUTES:[I

    invoke-virtual {p0, v3, v2, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V

    sget-object p1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->NOTIFICATION_ROUTING_ATTRIBUTES:[I

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V

    :cond_9
    :goto_4
    return-void
.end method

.method public onHiSyncIdChanged(J)V
    .locals 8

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

    const/4 v6, 0x0

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

.method public final onProfileConnectionStateChangedIfProcessed(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->onHiSyncIdChanged(J)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->findMainDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->switchDeviceContent(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :goto_0
    return v0

    :cond_2
    iget-boolean p2, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mUnpairing:Z

    if-eqz p2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->findMainDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_4

    return v0

    :cond_4
    iget-object p2, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mSubDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto :goto_1

    :cond_5
    iget-object p2, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    :goto_1
    if-eqz p2, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->switchDeviceContent(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return v0

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public final setPreferredDeviceRoutingStrategies(ILandroid/media/AudioDeviceAttributes;[I)V
    .locals 5

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mRoutingHelper:Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p3, v2

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v4, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;->getAudioProductStrategies()Ljava/util/List;

    move-result-object p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/AudioProductStrategy;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioAttributes;

    invoke-virtual {v2, v4}, Landroid/media/audiopolicy/AudioProductStrategy;->supportsAudioAttributes(Landroid/media/AudioAttributes;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;->removePreferredDeviceForStrategies(Ljava/util/List;)Z

    move-result p2

    sget-object v1, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingConstants;->DEVICE_SPEAKER_OUT:Landroid/media/AudioDeviceAttributes;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/AudioProductStrategy;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3, v1}, Landroid/media/AudioManager;->setPreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)Z

    move-result v3

    and-int/2addr v0, v3

    goto :goto_2

    :cond_4
    and-int p0, p2, v0

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected routingValue: "

    invoke-static {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;->removePreferredDeviceForStrategies(Ljava/util/List;)Z

    move-result v1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/AudioProductStrategy;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3, p2}, Landroid/media/AudioManager;->setPreferredDeviceForStrategy(Landroid/media/audiopolicy/AudioProductStrategy;Landroid/media/AudioDeviceAttributes;)Z

    move-result v3

    and-int/2addr v0, v3

    goto :goto_3

    :cond_7
    and-int p0, v1, v0

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p3}, Lcom/android/settingslib/bluetooth/HearingAidAudioRoutingHelper;->removePreferredDeviceForStrategies(Ljava/util/List;)Z

    move-result p0

    :goto_4
    if-nez p0, :cond_9

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "routingStrategies: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "routingValue: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " fail to configure AudioProductStrategy"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HearingAidDeviceManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
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

    const/4 v5, 0x1

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
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    if-eqz v0, :cond_4

    iget-object v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, v0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothHapClient;->supportsSynchronizedPresets(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->findMainDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, v0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    const-string v2, "Proxy not attached to service. Cannot get active preset index."

    const-string v4, "HapClientProfile"

    if-nez v1, :cond_1

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothHapClient;->getActivePresetIndex(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    :goto_1
    iget-object v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, v0, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    if-nez v5, :cond_2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v1}, Landroid/bluetooth/BluetoothHapClient;->getActivePresetIndex(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    :goto_2
    if-eqz p0, :cond_4

    if-eq p0, v3, :cond_4

    sget-boolean v1, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "syncing preset from "

    const-string v2, "->"

    const-string v4, ", device="

    invoke-static {v3, p0, v1, v2, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HearingAidDeviceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, p0}, Lcom/android/settingslib/bluetooth/HapClientProfile;->selectPreset(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_4
    return-void
.end method

.method public final updateHearingAidsDevices()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, v0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->isValidHiSyncId(J)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v5, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    const-string v7, ", info="

    const-string v8, "generateHearingAidInfo, "

    sget-boolean v9, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->DEBUG:Z

    const-string v10, "HearingAidDeviceManager"

    if-nez v5, :cond_2

    const-string v5, "HearingAidProfile is not supported on this device"

    invoke-static {v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v16, v2

    goto/16 :goto_5

    :cond_2
    iget-object v11, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v12, v5, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-eqz v12, :cond_4

    if-nez v11, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v12, v11}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v11

    goto :goto_2

    :cond_4
    :goto_1
    const-wide/16 v11, 0x0

    :goto_2
    invoke-static {v11, v12}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->isValidHiSyncId(J)Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v4, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;

    invoke-direct {v4}, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;-><init>()V

    iget-object v13, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v14, v5, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    const-string v15, "Proxy not attached to HearingAidService"

    const-string v6, "HearingAidProfile"

    if-nez v14, :cond_5

    invoke-static {v6, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, -0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v14, v13}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    :goto_3
    sget-object v14, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_SIDE_TO_INTERNAL_SIDE_MAPPING:Landroid/util/SparseIntArray;

    move-object/from16 v16, v2

    const/4 v2, -0x1

    invoke-virtual {v14, v13, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    iput v13, v4, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mSide:I

    iget-object v2, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v5, :cond_6

    invoke-static {v6, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v5, v2}, Landroid/bluetooth/BluetoothHearingAid;->getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    :goto_4
    sget-object v5, Lcom/android/settingslib/bluetooth/HearingAidInfo;->ASHA_DEVICE_MODE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v6, -0x1

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    iput v2, v4, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mMode:I

    iput-wide v11, v4, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mHiSyncId:J

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->build()Lcom/android/settingslib/bluetooth/HearingAidInfo;

    move-result-object v2

    if-eqz v9, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :goto_5
    iget-object v2, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHapClientProfile:Lcom/android/settingslib/bluetooth/HapClientProfile;

    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-eqz v2, :cond_b

    if-nez v4, :cond_7

    goto :goto_9

    :cond_7
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager$$ExternalSyntheticLambda0;

    const/4 v11, 0x2

    invoke-direct {v6, v11}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LeAudioProfile;->mService:Landroid/bluetooth/BluetoothLeAudio;

    if-eqz v4, :cond_9

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothLeAudio;->getAudioLocation(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v4, 0x0

    :goto_7
    iget-object v5, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/HapClientProfile;->mService:Landroid/bluetooth/BluetoothHapClient;

    if-nez v2, :cond_a

    const/4 v2, -0x1

    goto :goto_8

    :cond_a
    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothHapClient;->getHearingAidType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    :goto_8
    if-eqz v4, :cond_c

    const/4 v5, -0x1

    if-eq v2, v5, :cond_c

    new-instance v6, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;

    invoke-direct {v6}, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;-><init>()V

    invoke-virtual {v6, v4}, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->setLeAudioLocation(I)V

    sget-object v4, Lcom/android/settingslib/bluetooth/HearingAidInfo;->HAP_DEVICE_TYPE_TO_INTERNAL_MODE_MAPPING:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    iput v2, v6, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mMode:I

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->build()Lcom/android/settingslib/bluetooth/HearingAidInfo;

    move-result-object v2

    if-eqz v9, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_b
    :goto_9
    const-string v2, "HapClientProfile or LeAudioProfile is not supported on this device"

    invoke-static {v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v2, 0x0

    :cond_d
    :goto_a
    if-eqz v2, :cond_e

    invoke-virtual {v3, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setHearingAidInfo(Lcom/android/settingslib/bluetooth/HearingAidInfo;)V

    iget-wide v2, v2, Lcom/android/settingslib/bluetooth/HearingAidInfo;->mHiSyncId:J

    invoke-static {v2, v3}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->isValidHiSyncId(J)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    move-object/from16 v2, v16

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->onHiSyncIdChanged(J)V

    goto :goto_b

    :cond_10
    return-void
.end method
