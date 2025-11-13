.class final Lcom/samsung/android/allshare/DeviceImpl;
.super Lcom/samsung/android/allshare/Device;
.source "DeviceImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;
.implements Lcom/sec/android/allshare/iface/IHandlerHolder;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DeviceImpl"


# instance fields
.field private blacklist mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

.field private blacklist mDeviceBundle:Landroid/os/Bundle;

.field blacklist mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;


# direct methods
.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/allshare/Device;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 44
    iput-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    .line 65
    new-instance v0, Lcom/samsung/android/allshare/DeviceImpl$1;

    .line 66
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/DeviceImpl$1;-><init>(Lcom/samsung/android/allshare/DeviceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    .line 48
    return-void
.end method


# virtual methods
.method public blacklist getBundle()Landroid/os/Bundle;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 175
    const/4 v0, 0x0

    return-object v0

    .line 177
    :cond_0
    return-object v0
.end method

.method public whitelist getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    .line 163
    const-string v1, "BUNDLE_ENUM_DEVICE_DOMAIN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Lcom/samsung/android/allshare/Device$DeviceDomain;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object v0

    .line 165
    .local v0, "deviceDomain":Lcom/samsung/android/allshare/Device$DeviceDomain;
    if-nez v0, :cond_0

    .line 166
    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v1

    .line 169
    :cond_0
    return-object v0
.end method

.method public whitelist getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    .line 138
    const-string v1, "BUNDLE_ENUM_DEVICE_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/samsung/android/allshare/Device$DeviceType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v0

    .line 140
    .local v0, "deviceType":Lcom/samsung/android/allshare/Device$DeviceType;
    if-nez v0, :cond_0

    .line 141
    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v1

    .line 143
    :cond_0
    return-object v0
.end method

.method public whitelist getID()Ljava/lang/String;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v1, "BUNDLE_STRING_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getIPAddress()Ljava/lang/String;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 156
    :cond_0
    const-string v1, "BUNDLE_STRING_DEVICE_IP_ADDRESS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0
.end method

.method public blacklist getIPAdress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/allshare/DeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIcon()Landroid/net/Uri;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 103
    :cond_0
    const-string v1, "BUNDLE_PARCELABLE_DEVICE_DEFAULT_ICON"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/net/Uri;

    .line 102
    return-object v0
.end method

.method public blacklist getIconList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Icon;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :cond_0
    const-string v1, "BUNDLE_PARCELABLE_DEVICE_DEFAULT_ICONLIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    nop

    .line 110
    .local v0, "iconList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Icon;>;"
    if-nez v0, :cond_1

    .line 113
    return-object v1

    .line 116
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 117
    .local v3, "parcel":Landroid/os/Parcelable;
    new-instance v4, Lcom/samsung/android/allshare/IconImpl;

    move-object v5, v3

    check-cast v5, Landroid/os/Bundle;

    invoke-direct {v4, v5}, Lcom/samsung/android/allshare/IconImpl;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v3    # "parcel":Landroid/os/Parcelable;
    goto :goto_1

    .line 120
    :cond_2
    return-object v1
.end method

.method public whitelist getModelName()Ljava/lang/String;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 131
    :cond_0
    const-string v1, "BUNDLE_STRING_DEVICE_MODELNAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0
.end method

.method public whitelist getNIC()Ljava/lang/String;
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 183
    :cond_0
    const-string v1, "BUNDLE_STRING_BOUND_INTERFACE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_0
    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 97
    :cond_0
    const-string v1, "BUNDLE_STRING_DEVICE_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0
.end method

.method public blacklist getP2pMacAddress()Ljava/lang/String;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 203
    :cond_0
    const-string v1, "BUNDLE_STRING_MIRRORING_MAC"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0
.end method

.method public whitelist getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 6
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 256
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 257
    :cond_0
    const-string v2, "BUNDLE_STRING_SECPRODUCTCAP"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 258
    .local v0, "productCap":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 260
    :cond_1
    const-string v1, ""

    .line 261
    .local v1, "result":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/allshare/DeviceImpl$2;->$SwitchMap$com$samsung$android$allshare$Device$InformationType:[I

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device$InformationType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 266
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScreenMirroringP2PMAC="

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "secProductCap":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 269
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    .line 270
    .local v4, "start":I
    add-int/lit8 v3, v4, 0x11

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductCapInfo macAddress : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "DeviceImpl"

    invoke-static {v5, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .end local v2    # "secProductCap":Ljava/lang/String;
    .end local v4    # "start":I
    goto :goto_1

    .line 263
    :pswitch_1
    move-object v1, v0

    .line 264
    nop

    .line 277
    :cond_2
    :goto_1
    return-object v1

    .line 259
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getScreenSharingInfo()Ljava/lang/String;
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 210
    :cond_0
    const-string v1, "BUNDLE_STRING_SCREENSHARING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0
.end method

.method public blacklist getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 6
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 283
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 284
    :cond_0
    const-string v2, "BUNDLE_STRING_SCREENSHARING"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 285
    .local v0, "screenSharing":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 287
    :cond_1
    const-string v1, ""

    .line 288
    .local v1, "result":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/allshare/DeviceImpl$2;->$SwitchMap$com$samsung$android$allshare$Device$InformationType:[I

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Device$InformationType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 293
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "p2pDeviceAddress:"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "secSreenSharing":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 296
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    .line 297
    .local v4, "start":I
    add-int/lit8 v3, v4, 0x11

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getScreenSharingInfo macAddress : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "DeviceImpl"

    invoke-static {v5, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .end local v2    # "secSreenSharing":Ljava/lang/String;
    .end local v4    # "start":I
    goto :goto_1

    .line 290
    :pswitch_1
    move-object v1, v0

    .line 291
    nop

    .line 304
    :cond_2
    :goto_1
    return-object v1

    .line 286
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getScreenSharingP2pMacAddr()Ljava/lang/String;
    .locals 1

    .line 246
    sget-object v0, Lcom/samsung/android/allshare/Device$InformationType;->P2P_MAC_ADDRESS:Lcom/samsung/android/allshare/Device$InformationType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/allshare/DeviceImpl;->getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSecProductP2pMacAddr()Ljava/lang/String;
    .locals 1

    .line 241
    sget-object v0, Lcom/samsung/android/allshare/Device$InformationType;->P2P_MAC_ADDRESS:Lcom/samsung/android/allshare/Device$InformationType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/allshare/DeviceImpl;->getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isSeekableOnPaused()Z
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_BOOLEAN_SMSC_iS_SEEKABLE_ON_PAUSE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportedByType(I)Z
    .locals 6
    .param p1, "type"    # I

    .line 311
    const-string v0, "UNKNOWN"

    .line 312
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x0

    .line 313
    .local v1, "isSupported":Z
    iget-object v2, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v3, "[isSupportedByType] : [Type]"

    const-string v4, "DeviceImpl"

    if-nez v2, :cond_0

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mDeviceBundle  is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return v1

    .line 317
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 327
    :pswitch_0
    const-string v0, "AUDIO"

    .line 328
    const-string v5, "BUNDLE_BOOLEAN_SUPPORT_AUDIO"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 323
    :pswitch_1
    const-string v0, "VIDEO"

    .line 324
    const-string v5, "BUNDLE_BOOLEAN_SUPPORT_VIDEO"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 325
    goto :goto_0

    .line 319
    :pswitch_2
    const-string v0, "IMAGE"

    .line 320
    const-string v5, "BUNDLE_BOOLEAN_SUPPORT_IMAGE"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 321
    nop

    .line 331
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[isSupported]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist isWholeHomeAudio()Z
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_BOOLEAN_SMSC_IS_WHOLE_HOME_AUDIO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeEventHandler()V
    .locals 0

    .line 252
    return-void
.end method

.method public blacklist requestMobileToTV(Ljava/lang/String;I)V
    .locals 5
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 215
    const-string v0, "DeviceImpl"

    const-string/jumbo v1, "requestMobileToTV : call requestMobileToTV"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/samsung/android/allshare/DeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 221
    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 226
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 227
    .local v1, "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_REQUEST_MOBILE_TO_TV"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 228
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 229
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v3, "BUNDLE_STRING_SCREENSHARING_IP"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v3, "BUNDLE_STRING_SCREENSHARING_PORT"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 235
    iget-object v3, p0, Lcom/samsung/android/allshare/DeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/DeviceImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v3, v1, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestMobileToTV : [ ip : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " port : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void

    .line 222
    .end local v1    # "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_0
    const-string/jumbo v1, "requestMobileToTV Fail :  ip is null or port is wrong "

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void

    .line 217
    :cond_3
    :goto_1
    const-string/jumbo v1, "requestMobileToTV : SERVICE_NOT_CONNECTED"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method blacklist setAllShareConnector(Lcom/samsung/android/allshare/IAllShareConnector;)V
    .locals 2
    .param p1, "connector"    # Lcom/samsung/android/allshare/IAllShareConnector;

    .line 51
    const-string v0, "DeviceImpl"

    if-nez p1, :cond_0

    .line 53
    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 58
    const-string v1, "deviceImpl is null"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void

    .line 62
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/allshare/DeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 63
    return-void
.end method
