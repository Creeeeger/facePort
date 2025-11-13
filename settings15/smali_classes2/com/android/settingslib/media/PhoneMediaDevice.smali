.class public final Lcom/android/settingslib/media/PhoneMediaDevice;
.super Lcom/android/settingslib/media/MediaDevice;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sCachedBluetoothCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

.field public static sDisplayDeviceName:Ljava/lang/String;


# direct methods
.method public static getMediaTransferThisDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "tablet"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1427e4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f142658

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAddress()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settingslib/media/PhoneMediaDevice;->getDevice()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getDeviceId()I

    move-result v4

    if-ne v4, v0, :cond_1

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

.method public final getDevice()I
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-eq p0, v0, :cond_4

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

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    :cond_4
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDrawableResId()I
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x16

    if-eq p0, v0, :cond_2

    const/16 v0, 0x19

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const p0, 0x7f0806ef

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/settingslib/media/PhoneMediaDevice;->sDisplayDeviceName:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v0, "DeX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0806ed

    goto :goto_0

    :cond_1
    const p0, 0x7f080708

    goto :goto_0

    :cond_2
    :pswitch_0
    const p0, 0x7f0806e7

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/media/flags/Flags;->enableAudioPoliciesDeviceAndBluetoothController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x19

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_1

    packed-switch p0, :pswitch_data_0

    const-string p0, "phone_media_device_id"

    goto :goto_0

    :cond_1
    :pswitch_0
    const-string p0, "usb_headset_media_device_id"

    goto :goto_0

    :cond_2
    const-string p0, "wired_headset_media_device_id"

    goto :goto_0

    :cond_3
    const-string p0, "remote_submix_media_device_id"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    const/16 v2, 0x16

    if-eq v1, v2, :cond_4

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    invoke-static {v0}, Lcom/android/settingslib/media/PhoneMediaDevice;->getMediaTransferThisDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    :pswitch_2
    const p0, 0x7f14177f

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    sget-object v0, Lcom/android/settingslib/media/PhoneMediaDevice;->sCachedBluetoothCastDevice:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getName()Ljava/lang/String;

    move-result-object p0

    :cond_2
    sget-object v0, Lcom/android/settingslib/media/PhoneMediaDevice;->sDisplayDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string p0, "DeX"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "PC"

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/settingslib/media/PhoneMediaDevice;->sDisplayDeviceName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    :pswitch_3
    const p0, 0x7f141785

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/android/settingslib/media/PhoneMediaDevice;->getMediaTransferThisDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public final isConnected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
