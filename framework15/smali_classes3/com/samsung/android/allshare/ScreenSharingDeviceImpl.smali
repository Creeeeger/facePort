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

    invoke-direct {p0}, Lcom/samsung/android/allshare/ScreenSharingDevice;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mUPnPDeviceEventListener:Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;

    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mActionResponseListener:Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mIsSubscribed:Z

    new-instance v0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$1;

    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$1;-><init>(Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    new-instance v0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$2;

    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$2;-><init>(Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/allshare/ScreenSharingDevice;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mUPnPDeviceEventListener:Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;

    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mActionResponseListener:Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mIsSubscribed:Z

    new-instance v0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$1;

    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$1;-><init>(Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    new-instance v0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$2;

    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$2;-><init>(Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    if-nez p1, :cond_0

    const-string v0, "ScreenSharingDeviceImpl"

    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iput-object p2, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    return-void
.end method


# virtual methods
.method public whitelist connectScreenSharingM2TV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const-string v0, "connectScreenSharingM2TV : call connectScreenSharingM2TV"

    const-string v1, "ScreenSharingDeviceImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    const-string v2, "com.sec.android.allshare.action.ACTION_CONNECT_SCREENSHARING_MOBILE_TO_TV"

    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "BUNDLE_STRING_SCREENSHARING_MOBILE_WLANMACADDRESS"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "BUNDLE_STRING_SCREENSHARING_MOBILE_P2PDEVICEADDRESS"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "BUNDLE_STRING_SCREENSHARING_MOBILE_BLUETOOTHMACADDRESS"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "BUNDLE_STRING_SCREENSHARING_MOBILE_WFDSOURCEPORT"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v3, v0, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

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

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "connectScreenSharingM2TV Fail :  Address is null or port is wrong "

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string v0, "connectScreenSharingM2TV : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist connectScreenSharingTV2M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "connectScreenSharingTV2M : call connectScreenSharingM2TV"

    const-string v1, "ScreenSharingDeviceImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    const-string v2, "com.sec.android.allshare.action.ACTION_CONNECT_SCREENSHARING_TV_TO_MOBILE"

    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "BUNDLE_STRING_SCREENSHARING_MOBILE_WLANMACADDRESS"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "BUNDLE_STRING_SCREENSHARING_MOBILE_P2PDEVICEADDRESS"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "BUNDLE_STRING_SCREENSHARING_MOBILE_BLUETOOTHMACADDRESS"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v3, v0, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

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

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "connectScreenSharingTV2M Fail :  Address is null or port is wrong "

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string v0, "connectScreenSharingTV2M : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIPAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIcon()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

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

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getModelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNIC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getNIC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getP2pMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/DeviceImpl;->getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getScreenSharingInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getScreenSharingInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/DeviceImpl;->getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScreenSharingP2pMacAddr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getScreenSharingP2pMacAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSecProductP2pMacAddr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getSecProductP2pMacAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isSeekableOnPaused()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportedByType(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/DeviceImpl;->isSupportedByType(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWholeHomeAudio()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeEventHandler()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    const-string v3, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    invoke-interface {v0, v3, v1, v2}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mIsSubscribed:Z

    return-void
.end method

.method public blacklist requestMobileToTV(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "ScreenSharingDeviceImpl"

    const-string/jumbo v1, "requestMobileToTV : call requestMobileToTV"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/DeviceImpl;->requestMobileToTV(Ljava/lang/String;I)V

    return-void
.end method

.method public blacklist setEventListener(Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;)Lcom/samsung/android/allshare/ERROR;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mUPnPDeviceEventListener:Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;

    iget-boolean v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mIsSubscribed:Z

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mIsSubscribed:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mIsSubscribed:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mIsSubscribed:Z

    :cond_2
    :goto_0
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_3
    :goto_1
    const-string v0, "ScreenSharingDeviceImpl"

    const-string/jumbo v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    return-object v0
.end method

.method public blacklist setResponseListener(Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;)V
    .locals 2

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

    iput-object p1, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->mActionResponseListener:Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;

    return-void
.end method
