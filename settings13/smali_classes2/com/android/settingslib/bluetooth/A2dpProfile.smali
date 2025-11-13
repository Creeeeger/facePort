.class public Lcom/android/settingslib/bluetooth/A2dpProfile;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;
    }
.end annotation


# static fields
.field static final SINK_UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z = true


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method public static synthetic $r8$lambda$3HO68-Gu7OpMHl5UhheEb8YPZrI(Landroid/bluetooth/BluetoothCodecConfig;Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->lambda$getHighQualityAudioOptionLabel$0(Landroid/bluetooth/BluetoothCodecConfig;Landroid/bluetooth/BluetoothCodecConfig;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceManager(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProfileManager(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/settingslib/bluetooth/A2dpProfile;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsProfileReady(Lcom/android/settingslib/bluetooth/A2dpProfile;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mIsProfileReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 63
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->A2DP_SINK:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->ADV_AUDIO_DIST:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 142
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 143
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 144
    new-instance p3, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/settingslib/bluetooth/A2dpProfile;Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener-IA;)V

    const/4 p0, 0x2

    invoke-virtual {p2, p1, p3, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private getDevicesByStates([I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez p0, :cond_0

    .line 190
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 192
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getHighQualityAudioOptionLabel$0(Landroid/bluetooth/BluetoothCodecConfig;Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 0

    .line 378
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecPriority()I

    move-result p1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecPriority()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public accessProfileEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected finalize()V
    .locals 4

    const-string v0, "A2dpProfile"

    const-string v1, "finalize()"

    .line 459
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_0

    .line 462
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 464
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "Error cleaning up A2DP proxy"

    .line 466
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 219
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 221
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object p0

    .line 222
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :cond_1
    return-object v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 165
    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getDevicesByStates([I)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 196
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const-string v0, "A2dpProfile"

    if-nez p0, :cond_0

    const-string p0, "getConnectionStatus :: BluetoothProfile.STATE_DISCONNECTED"

    .line 198
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 203
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    .line 204
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionStatus :: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 455
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_sound_accessory_default:I

    return p0
.end method

.method public getHighQualityAudioOptionLabel(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 7

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 365
    :goto_0
    sget v1, Lcom/android/settingslib/R$string;->bluetooth_profile_a2dp_high_quality_unknown_codec:I

    if-eqz v0, :cond_d

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto/16 :goto_6

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()Ljava/util/List;

    move-result-object p1

    .line 376
    new-instance v0, Lcom/android/settingslib/bluetooth/A2dpProfile$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    :cond_2
    move-object p1, v3

    :goto_1
    const/4 v0, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    .line 382
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_3

    goto :goto_2

    .line 383
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/bluetooth/BluetoothCodecConfig;

    :cond_4
    :goto_2
    if-eqz v3, :cond_6

    .line 384
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 385
    :cond_5
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p1

    goto :goto_4

    :cond_6
    :goto_3
    const p1, 0xf4240

    :goto_4
    const/4 v3, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eqz p1, :cond_a

    if-eq p1, v4, :cond_b

    if-eq p1, v2, :cond_9

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_7

    move v2, v3

    goto :goto_5

    :cond_7
    const/4 v2, 0x5

    goto :goto_5

    :cond_8
    move v2, v5

    goto :goto_5

    :cond_9
    move v2, v6

    goto :goto_5

    :cond_a
    move v2, v4

    :cond_b
    :goto_5
    if-gez v2, :cond_c

    .line 407
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 409
    :cond_c
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settingslib/R$string;->bluetooth_profile_a2dp_high_quality:I

    new-array v1, v4, [Ljava/lang/Object;

    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settingslib/R$array;->bluetooth_a2dp_codec_titles:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v2

    aput-object v2, v1, v0

    .line 409
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 368
    :cond_d
    :goto_6
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLdacEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 519
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothA2dp;->getCodecEnabled(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 424
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_a2dp:I

    return p0
.end method

.method public getOrdinal()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getProfileId()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getScalableUhqEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 549
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothA2dp;->getCodecEnabled(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    .line 436
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_a2dp_profile_summary_use_for:I

    return p0

    .line 439
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    .line 448
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getConnectionStateSummary(I)I

    move-result p0

    return p0

    .line 445
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_a2dp_profile_summary_connected:I

    return p0

    .line 442
    :cond_2
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_a2dp_profile_summary_use_for:I

    return p0
.end method

.method isA2dpPlaying()Z
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 261
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public isDualPlayModeEnabled()Z
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 279
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->semIsDualPlayMode()Z

    move-result p0

    return p0
.end method

.method public isEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 227
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 230
    :cond_0
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    if-eqz p1, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothA2dp;->isOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    if-ne v1, v3, :cond_2

    move v0, v3

    :cond_2
    return v0

    .line 319
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v3

    :cond_4
    const/4 v1, 0x0

    .line 327
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 328
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_6

    .line 331
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_6
    return v0
.end method

.method public isNeedConnectionBlock(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const-string v0, "A2dpProfile"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 557
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "9C:8D:7C"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "CADILLAC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    const-string p1, "com.google.android.projection.gearhead"

    .line 558
    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "isNeedConnectionBlock :: device is null"

    .line 563
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isNeedConnectionBlock :: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isProfileReady()Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mIsProfileReady:Z

    return p0
.end method

.method public isSupportLdac(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 473
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 474
    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothA2dp;->getSupportCodec(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 476
    :goto_0
    sget-boolean p1, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSupportLdac "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "A2dpProfile"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public isSupportScalableUhq(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 525
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    .line 526
    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothA2dp;->getSupportCodec(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 528
    :goto_0
    sget-boolean p1, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSupportScalableUhq "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "A2dpProfile"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 210
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    .line 214
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->removeActiveDevice(I)Z

    move-result p0

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public setEnableLdacMode(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3

    .line 506
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const-string v1, "A2dpProfile"

    if-nez v0, :cond_1

    .line 507
    sget-boolean p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "setEnableLdacMode mService is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x4

    .line 510
    invoke-virtual {v0, p1, p2, v2}, Landroid/bluetooth/BluetoothA2dp;->setCodecEnabled(Landroid/bluetooth/BluetoothDevice;II)V

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    .line 512
    sget-boolean p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz p0, :cond_2

    const-string/jumbo p0, "setEnableLdacMode not connected"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 515
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setEnableLdacMode(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method public setEnableScalableUhqMode(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const-string v1, "A2dpProfile"

    if-nez v0, :cond_1

    .line 537
    sget-boolean p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "setEnableScalableUhqMode mService is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x7

    .line 540
    invoke-virtual {v0, p1, p2, v2}, Landroid/bluetooth/BluetoothA2dp;->setCodecEnabled(Landroid/bluetooth/BluetoothDevice;II)V

    .line 541
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    .line 542
    sget-boolean p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz p0, :cond_2

    const-string/jumbo p0, "setEnableScalableUhqMode not connected"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 545
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setEnableScalableUhqMode(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method public setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 1

    .line 244
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    const/16 p2, 0x64

    .line 250
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothA2dp;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public setHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    .line 346
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 350
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_1

    .line 352
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    :goto_1
    return-void
.end method

.method public supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 303
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->isOptionalCodecsSupported(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    move v0, p1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "A2DP"

    return-object p0
.end method
