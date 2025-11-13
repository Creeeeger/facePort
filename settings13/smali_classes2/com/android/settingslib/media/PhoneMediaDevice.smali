.class public Lcom/android/settingslib/media/PhoneMediaDevice;
.super Lcom/android/settingslib/media/MediaDevice;
.source "PhoneMediaDevice.java"


# instance fields
.field private mCachedBluetoothCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

.field private final mDeviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

.field private mDisplayDeviceName:Ljava/lang/String;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mSummary:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/media/MediaDevice;-><init>(Landroid/content/Context;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;)V

    const-string p2, ""

    .line 61
    iput-object p2, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mSummary:Ljava/lang/String;

    const/4 p2, 0x0

    .line 226
    iput-object p2, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mCachedBluetoothCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    .line 228
    iput-object p2, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mDisplayDeviceName:Ljava/lang/String;

    .line 68
    new-instance p2, Lcom/android/settingslib/media/DeviceIconUtil;

    invoke-direct {p2}, Lcom/android/settingslib/media/DeviceIconUtil;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mDeviceIconUtil:Lcom/android/settingslib/media/DeviceIconUtil;

    .line 70
    invoke-direct {p0}, Lcom/android/settingslib/media/PhoneMediaDevice;->getCachedBluetoothCastDevice()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mCachedBluetoothCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    const-string p2, "display"

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/SemWifiDisplay;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/hardware/display/SemWifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mDisplayDeviceName:Ljava/lang/String;

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->initDeviceRecord()V

    return-void
.end method

.method private getCachedBluetoothCastDevice()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 275
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedCastDeviceManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->getCachedCastDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 278
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 279
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    .line 280
    iget-object v2, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isBtCastConnectedAsGuest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected getAddress()Ljava/lang/String;
    .locals 5

    .line 232
    invoke-virtual {p0}, Lcom/android/settingslib/media/PhoneMediaDevice;->getDevice()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    const-string p0, "0"

    return-object p0

    .line 236
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    .line 237
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 238
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 239
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method protected getDevice()I
    .locals 2

    .line 248
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x19

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const v1, 0x8000

    goto :goto_0

    :cond_1
    :pswitch_0
    const/high16 v1, 0x4000000

    goto :goto_0

    :cond_2
    :pswitch_1
    const/16 v1, 0x400

    :cond_3
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getDrawableResId()I
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 172
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_mobile:I

    goto :goto_0

    .line 163
    :cond_0
    sget v0, Lcom/android/settingslib/R$drawable;->list_ic_tv:I

    .line 164
    iget-object p0, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mDisplayDeviceName:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v1, "DeX"

    .line 165
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 166
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_laptop:I

    goto :goto_0

    :cond_1
    move p0, v0

    goto :goto_0

    .line 160
    :cond_2
    :pswitch_0
    sget p0, Lcom/android/settingslib/R$drawable;->list_ic_headset:I

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    const/16 v0, 0x19

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    const-string/jumbo p0, "phone_media_device_id"

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string/jumbo p0, "usb_headset_media_device_id"

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "wired_headset_media_device_id"

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "remote_submix_media_device_id"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    const/16 v1, 0x16

    if-eq v0, v1, :cond_5

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 114
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/R$string;->sec_media_output_device:I

    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/media/PhoneMediaDevice;->isMusicShare()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mCachedBluetoothCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mDisplayDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v0, "DeX"

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "PC"

    goto :goto_1

    .line 107
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mDisplayDeviceName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p0, v0

    goto :goto_1

    .line 95
    :cond_4
    :pswitch_0
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    .line 91
    :cond_5
    :pswitch_1
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/R$string;->media_transfer_wired_usb_device_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 119
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isConnected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isMusicShare()Z
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/android/settingslib/media/PhoneMediaDevice;->mCachedBluetoothCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
