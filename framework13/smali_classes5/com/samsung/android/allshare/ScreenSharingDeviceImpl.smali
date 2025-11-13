.class final Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;
.super Lcom/samsung/android/allshare/ScreenSharingDevice;
.source "ScreenSharingDeviceImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;
.implements Lcom/sec/android/allshare/iface/IHandlerHolder;


# static fields
.field private static final blacklist TAG_CLASS:Ljava/lang/String; = "ScreenSharingDeviceImpl"


# instance fields
.field private blacklist mActionResponseListener:Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;

.field private blacklist mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

.field private blacklist mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

.field private blacklist mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

.field private blacklist mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

.field private blacklist mIsSubscribed:Z

.field private blacklist mUPnPDeviceEventListener:Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActionResponseListener(Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;)Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mActionResponseListener:Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUPnPDeviceEventListener(Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;)Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mUPnPDeviceEventListener:Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;

    return-object p0
.end method

.method protected constructor blacklist <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/allshare/ScreenSharingDevice;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 47
    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mUPnPDeviceEventListener:Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;

    .line 49
    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mActionResponseListener:Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mIsSubscribed:Z

    .line 68
    new-instance v0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$1;

    .line 69
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$1;-><init>(Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 205
    new-instance v0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$2;

    .line 206
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$2;-><init>(Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    .line 55
    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V
    .locals 2
    .param p1, "connector"    # Lcom/samsung/android/allshare/IAllShareConnector;
    .param p2, "deviceImpl"    # Lcom/samsung/android/allshare/DeviceImpl;

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/allshare/ScreenSharingDevice;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 47
    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mUPnPDeviceEventListener:Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;

    .line 49
    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mActionResponseListener:Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mIsSubscribed:Z

    .line 68
    new-instance v0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$1;

    .line 69
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$1;-><init>(Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 205
    new-instance v0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$2;

    .line 206
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$2;-><init>(Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    .line 58
    if-nez p1, :cond_0

    .line 60
    const-string v0, "ScreenSharingDeviceImpl"

    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 65
    iput-object p2, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist connectScreenSharingM2TV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "mWlanMacAddress"    # Ljava/lang/String;
    .param p2, "mP2pDeviceAddress"    # Ljava/lang/String;
    .param p3, "mBluetoothMacAddress"    # Ljava/lang/String;
    .param p4, "mWFDSourcePort"    # I

    .line 307
    const-string v0, "ScreenSharingDeviceImpl"

    const-string v1, "connectScreenSharingM2TV : call connectScreenSharingM2TV"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 313
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-nez p4, :cond_1

    goto :goto_0

    .line 320
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 321
    .local v1, "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_CONNECT_SCREENSHARING_MOBILE_TO_TV"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 322
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v3, "BUNDLE_STRING_SCREENSHARING_MOBILE_WLANMACADDRESS"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v3, "BUNDLE_STRING_SCREENSHARING_MOBILE_P2PDEVICEADDRESS"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v3, "BUNDLE_STRING_SCREENSHARING_MOBILE_BLUETOOTHMACADDRESS"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v3, "BUNDLE_STRING_SCREENSHARING_MOBILE_WFDSOURCEPORT"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 332
    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 334
    iget-object v3, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v3, v1, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectScreenSharingM2TV : [ WlanMacAddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " P2pDeviceAddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " BluetoothMacAddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WFDSourcePort : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void

    .line 315
    .end local v1    # "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_0
    const-string v1, "connectScreenSharingM2TV Fail :  Address is null or port is wrong "

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void

    .line 309
    :cond_3
    :goto_1
    const-string v1, "connectScreenSharingM2TV : SERVICE_NOT_CONNECTED"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public whitelist connectScreenSharingTV2M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "mWlanMacAddress"    # Ljava/lang/String;
    .param p2, "mP2pDeviceAddress"    # Ljava/lang/String;
    .param p3, "mBluetoothMacAddress"    # Ljava/lang/String;

    .line 346
    const-string v0, "ScreenSharingDeviceImpl"

    const-string v1, "connectScreenSharingTV2M : call connectScreenSharingM2TV"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 352
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 358
    :cond_1
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 359
    .local v1, "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_CONNECT_SCREENSHARING_TV_TO_MOBILE"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 360
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 361
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v3, "BUNDLE_STRING_SCREENSHARING_MOBILE_WLANMACADDRESS"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v3, "BUNDLE_STRING_SCREENSHARING_MOBILE_P2PDEVICEADDRESS"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v3, "BUNDLE_STRING_SCREENSHARING_MOBILE_BLUETOOTHMACADDRESS"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 371
    iget-object v3, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v3, v1, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectScreenSharingTV2M : [ WlanMacAddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " P2pDeviceAddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " BluetoothMacAddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void

    .line 353
    .end local v1    # "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_0
    const-string v1, "connectScreenSharingTV2M Fail :  Address is null or port is wrong "

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void

    .line 348
    :cond_3
    :goto_1
    const-string v1, "connectScreenSharingTV2M : SERVICE_NOT_CONNECTED"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public blacklist getBundle()Landroid/os/Bundle;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 172
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0

    .line 96
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v0

    .line 105
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getID()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 111
    const-string v0, ""

    return-object v0

    .line 113
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIPAddress()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 126
    const-string v0, ""

    return-object v0

    .line 128
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIPAdress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIcon()Landroid/net/Uri;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 135
    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getIcon()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIconList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Icon;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 146
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getModelName()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 153
    const-string v0, ""

    return-object v0

    .line 155
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNIC()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 258
    const-string v0, ""

    return-object v0

    .line 260
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getNIC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 161
    const-string v0, ""

    return-object v0

    .line 163
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getP2pMacAddress()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 287
    const-string v0, ""

    return-object v0

    .line 289
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 1
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 406
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 407
    const-string v0, ""

    return-object v0

    .line 409
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/DeviceImpl;->getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getScreenSharingInfo()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 297
    const-string v0, ""

    return-object v0

    .line 299
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getScreenSharingInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 1
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 416
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 417
    const-string v0, ""

    return-object v0

    .line 419
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/DeviceImpl;->getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScreenSharingP2pMacAddr()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 391
    const-string v0, ""

    return-object v0

    .line 393
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getScreenSharingP2pMacAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSecProductP2pMacAddr()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 399
    const-string v0, ""

    return-object v0

    .line 401
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getSecProductP2pMacAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isSeekableOnPaused()Z
    .locals 1

    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportedByType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 426
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 427
    const/4 v0, 0x0

    return v0

    .line 429
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/DeviceImpl;->isSupportedByType(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWholeHomeAudio()Z
    .locals 1

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeEventHandler()V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 265
    const-string v3, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    invoke-interface {v0, v3, v1, v2}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mIsSubscribed:Z

    .line 268
    return-void
.end method

.method public blacklist requestMobileToTV(Ljava/lang/String;I)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 381
    const-string v0, "ScreenSharingDeviceImpl"

    const-string/jumbo v1, "requestMobileToTV : call requestMobileToTV"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 383
    return-void

    .line 385
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/DeviceImpl;->requestMobileToTV(Ljava/lang/String;I)V

    .line 386
    return-void
.end method

.method public blacklist setEventListener(Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;)Lcom/samsung/android/allshare/ERROR;
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;

    .line 183
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 188
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mUPnPDeviceEventListener:Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;

    .line 190
    iget-boolean v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mIsSubscribed:Z

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 192
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 191
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mIsSubscribed:Z

    goto :goto_0

    .line 194
    :cond_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 196
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 195
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mIsSubscribed:Z

    .line 202
    :cond_2
    :goto_0
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 184
    :cond_3
    :goto_1
    const-string v0, "ScreenSharingDeviceImpl"

    const-string/jumbo v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    return-object v0
.end method

.method public blacklist setResponseListener(Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setResponseListener to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenSharingDeviceImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iput-object p1, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mActionResponseListener:Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;

    .line 179
    return-void
.end method
