.class final Lcom/samsung/android/allshare/DeviceFinderImpl;
.super Lcom/samsung/android/allshare/DeviceFinder;
.source "DeviceFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    }
.end annotation


# static fields
.field private static final blacklist TAG_CLASS:Ljava/lang/String; = "DeviceFinderImpl(v1)"

.field private static blacklist mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mDeviceTypeToEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAVPlayerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/AVPlayerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

.field private blacklist mDiscoveryListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

.field private blacklist mFileReceiverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/FileReceiverImpl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImageViewerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/ImageViewerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProviderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/ProviderImpl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScreenSharingDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUnknownDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/DeviceImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllShareConnector(Lcom/samsung/android/allshare/DeviceFinderImpl;)Lcom/samsung/android/allshare/IAllShareConnector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDiscoveryListenerMap(Lcom/samsung/android/allshare/DeviceFinderImpl;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDeviceFromMap(Lcom/samsung/android/allshare/DeviceFinderImpl;Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/DeviceFinderImpl;->getDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveDeviceFromMap(Lcom/samsung/android/allshare/DeviceFinderImpl;Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/DeviceFinderImpl;->removeDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmDeviceEventToDeviceTypeMap()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 9

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    .line 55
    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v3, "com.sec.android.allshare.event.EVENT_PROVIDER_DISCOVERY"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v1, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v4, "com.sec.android.allshare.event.EVENT_AV_PLAYER_DISCOVERY"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v5, "com.sec.android.allshare.event.EVENT_IMAGE_VIEWER_DISCOVERY"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v1, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_FILERECEIVER:Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v6, "com.sec.android.allshare.event.EVENT_FILERECEIVER_DISCOVERY"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v7, "com.sec.android.allshare.event.EVENT_SCREENSHARING_DISCOVERY"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v8, "com.sec.android.allshare.event.EVENT_DMR_DISCOVERY"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sput-object v0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    .line 73
    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_FILERECEIVER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/allshare/IAllShareConnector;)V
    .locals 2
    .param p1, "connector"    # Lcom/samsung/android/allshare/IAllShareConnector;

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/allshare/DeviceFinder;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 127
    new-instance v0, Lcom/samsung/android/allshare/DeviceFinderImpl$1;

    .line 128
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/DeviceFinderImpl$1;-><init>(Lcom/samsung/android/allshare/DeviceFinderImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 118
    if-nez p1, :cond_0

    .line 120
    const-string v0, "DeviceFinderImpl(v1)"

    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 125
    return-void
.end method

.method private blacklist getDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "type"    # Lcom/samsung/android/allshare/Device$DeviceType;

    .line 388
    const/4 v0, 0x0

    const-string v1, "DeviceFinderImpl(v1)"

    if-nez p1, :cond_0

    .line 389
    const-string v2, "getDeviceFromMap : bundle is null"

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-object v0

    .line 393
    :cond_0
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    .line 401
    :cond_1
    :try_start_0
    new-instance v3, Lcom/samsung/android/allshare/DeviceImpl;

    invoke-direct {v3, p1}, Lcom/samsung/android/allshare/DeviceImpl;-><init>(Landroid/os/Bundle;)V

    .line 403
    .local v3, "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    sget-object v4, Lcom/samsung/android/allshare/DeviceFinderImpl$2;->$SwitchMap$com$samsung$android$allshare$Device$DeviceType:[I

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device$DeviceType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 453
    .end local v3    # "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    goto/16 :goto_2

    .line 440
    .restart local v3    # "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 441
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/allshare/DeviceImpl;->isSupportedByType(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x3

    .line 442
    invoke-virtual {v3, v4}, Lcom/samsung/android/allshare/DeviceImpl;->isSupportedByType(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x2

    .line 443
    invoke-virtual {v3, v4}, Lcom/samsung/android/allshare/DeviceImpl;->isSupportedByType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 446
    :cond_2
    const-string v4, "all types are not supported"

    invoke-static {v1, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 444
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;

    return-object v4

    .line 432
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 433
    new-instance v4, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;

    iget-object v5, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    .line 435
    .local v4, "upnpDevice":Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;
    iget-object v5, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .end local v4    # "upnpDevice":Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;

    return-object v4

    .line 424
    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 425
    new-instance v4, Lcom/samsung/android/allshare/FileReceiverImpl;

    iget-object v5, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/allshare/FileReceiverImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    .line 427
    .local v4, "fileReceiver":Lcom/samsung/android/allshare/FileReceiverImpl;
    iget-object v5, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .end local v4    # "fileReceiver":Lcom/samsung/android/allshare/FileReceiverImpl;
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;

    return-object v4

    .line 418
    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 419
    new-instance v4, Lcom/samsung/android/allshare/ProviderImpl;

    iget-object v5, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/allshare/ProviderImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    .line 420
    .local v4, "provider":Lcom/samsung/android/allshare/ProviderImpl;
    iget-object v5, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .end local v4    # "provider":Lcom/samsung/android/allshare/ProviderImpl;
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;

    return-object v4

    .line 411
    :pswitch_4
    iget-object v4, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 412
    new-instance v4, Lcom/samsung/android/allshare/ImageViewerImpl;

    iget-object v5, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/allshare/ImageViewerImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    .line 414
    .local v4, "imageViewer":Lcom/samsung/android/allshare/ImageViewerImpl;
    iget-object v5, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .end local v4    # "imageViewer":Lcom/samsung/android/allshare/ImageViewerImpl;
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;

    return-object v4

    .line 405
    :pswitch_5
    iget-object v4, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 406
    new-instance v4, Lcom/samsung/android/allshare/AVPlayerImpl;

    iget-object v5, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/allshare/AVPlayerImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    .line 407
    .local v4, "avPlayer":Lcom/samsung/android/allshare/AVPlayerImpl;
    iget-object v5, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .end local v4    # "avPlayer":Lcom/samsung/android/allshare/AVPlayerImpl;
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 451
    .end local v3    # "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    :catch_0
    move-exception v3

    .line 452
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "getDeviceFromMap : Exception"

    invoke-static {v1, v4, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 455
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0

    .line 396
    :cond_a
    :goto_3
    const-string v3, "getDeviceFromMap : id is null"

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist privateGetDevices(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "domain"    # Lcom/samsung/android/allshare/Device$DeviceDomain;
    .param p3, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;
    .param p4, "deviceIface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/Device$DeviceDomain;",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    if-nez p3, :cond_0

    .line 463
    return-object v0

    .line 465
    :cond_0
    const/4 v1, 0x0

    .line 466
    .local v1, "builder":Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    new-instance v2, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/DeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker-IA;)V

    move-object v1, v2

    .line 468
    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_DOMAIN_SYNC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "BUNDLE_ENUM_DEVICE_TYPE"

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 470
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device$DeviceDomain;->enumToString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BUNDLE_ENUM_DEVICE_DOMAIN"

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_1
    nop

    .line 473
    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_TYPE_IFACE_SYNC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p4, :cond_2

    .line 474
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 475
    const-string v2, "BUNDLE_STRING_BOUND_INTERFACE"

    invoke-virtual {v1, v2, p4}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_2
    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_SYNC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 478
    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    move-result-object v2

    .line 485
    .local v2, "resBundle":Landroid/os/Bundle;
    const-string v3, "DeviceFinderImpl(v1)"

    if-nez v2, :cond_3

    .line 486
    const-string/jumbo v4, "resBundle is null"

    invoke-static {v3, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-object v0

    .line 490
    :cond_3
    nop

    .line 491
    const-string v4, "BUNDLE_PARCELABLE_ARRAYLIST_DEVICE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 493
    .local v4, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    .line 498
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 499
    .local v6, "b":Landroid/os/Bundle;
    invoke-direct {p0, v6, p3}, Lcom/samsung/android/allshare/DeviceFinderImpl;->getDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;

    move-result-object v7

    .line 500
    .local v7, "d":Lcom/samsung/android/allshare/Device;
    if-eqz v7, :cond_5

    .line 501
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to result"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 504
    :cond_5
    const-string v8, "getDeviceFromMap is null"

    invoke-static {v3, v8}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .end local v6    # "b":Landroid/os/Bundle;
    .end local v7    # "d":Lcom/samsung/android/allshare/Device;
    :goto_2
    goto :goto_1

    .line 508
    :cond_6
    return-object v0

    .line 494
    :cond_7
    :goto_3
    const-string v5, "devices.size is null or 0"

    invoke-static {v3, v5}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-object v0

    .line 480
    .end local v2    # "resBundle":Landroid/os/Bundle;
    .end local v4    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_8
    return-object v0
.end method

.method private blacklist removeDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "type"    # Lcom/samsung/android/allshare/Device$DeviceType;

    .line 313
    const-string v0, "DeviceFinderImpl(v1)"

    if-nez p1, :cond_0

    .line 314
    const-string/jumbo v1, "removeDeviceFromMap : bundle is null"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void

    .line 318
    :cond_0
    const-string v1, "BUNDLE_STRING_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 326
    :cond_1
    :try_start_0
    sget-object v2, Lcom/samsung/android/allshare/DeviceFinderImpl$2;->$SwitchMap$com$samsung$android$allshare$Device$DeviceType:[I

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device$DeviceType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 373
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/DeviceImpl;

    .line 374
    .local v2, "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    if-eqz v2, :cond_2

    .line 375
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->removeEventHandler()V

    .line 376
    iget-object v3, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 378
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get Device(UNKNOWN) with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 364
    .end local v2    # "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;

    .line 365
    .local v2, "kd":Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;
    if-eqz v2, :cond_3

    .line 366
    invoke-virtual {v2}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->removeEventHandler()V

    .line 367
    iget-object v3, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 369
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get ScreenSharingDevice with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    goto/16 :goto_0

    .line 355
    .end local v2    # "kd":Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/FileReceiverImpl;

    .line 356
    .local v2, "fr":Lcom/samsung/android/allshare/FileReceiverImpl;
    if-eqz v2, :cond_4

    .line 357
    invoke-virtual {v2}, Lcom/samsung/android/allshare/FileReceiverImpl;->removeEventHandler()V

    .line 358
    iget-object v3, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mFileReceiverMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 360
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get FileReceiver with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    goto/16 :goto_0

    .line 346
    .end local v2    # "fr":Lcom/samsung/android/allshare/FileReceiverImpl;
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/ProviderImpl;

    .line 347
    .local v2, "p":Lcom/samsung/android/allshare/ProviderImpl;
    if-eqz v2, :cond_5

    .line 348
    invoke-virtual {v2}, Lcom/samsung/android/allshare/ProviderImpl;->removeEventHandler()V

    .line 349
    iget-object v3, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 351
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get Provider with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    goto :goto_0

    .line 337
    .end local v2    # "p":Lcom/samsung/android/allshare/ProviderImpl;
    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/ImageViewerImpl;

    .line 338
    .local v2, "iv":Lcom/samsung/android/allshare/ImageViewerImpl;
    if-eqz v2, :cond_6

    .line 339
    invoke-virtual {v2}, Lcom/samsung/android/allshare/ImageViewerImpl;->removeEventHandler()V

    .line 340
    iget-object v3, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 342
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get ImageViewer with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    goto :goto_0

    .line 328
    .end local v2    # "iv":Lcom/samsung/android/allshare/ImageViewerImpl;
    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/AVPlayerImpl;

    .line 329
    .local v2, "av":Lcom/samsung/android/allshare/AVPlayerImpl;
    if-eqz v2, :cond_7

    .line 330
    invoke-virtual {v2}, Lcom/samsung/android/allshare/AVPlayerImpl;->removeEventHandler()V

    .line 331
    iget-object v3, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 333
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get AVPlayer with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    nop

    .line 384
    .end local v2    # "av":Lcom/samsung/android/allshare/AVPlayerImpl;
    :goto_0
    goto :goto_1

    .line 382
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "removeDeviceFromMap : Exception"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 385
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 321
    :cond_8
    :goto_2
    const-string/jumbo v2, "removeDeviceFromMap : id is Empty"

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final whitelist getDevice(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;

    .line 293
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 296
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 299
    :cond_1
    new-instance v0, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;

    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICE_BY_ID_SYNC"

    invoke-direct {v0, p0, v2, v1}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/DeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 301
    .local v0, "builder":Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_ENUM_DEVICE_TYPE"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    move-result-object v2

    .line 306
    .local v2, "device_bundle":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 307
    return-object v1

    .line 308
    :cond_2
    const-string v1, "BUNDLE_PARCELABLE_DEVICE"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 309
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/allshare/DeviceFinderImpl;->getDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;

    move-result-object v3

    return-object v3

    .line 297
    .end local v0    # "builder":Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    .end local v2    # "device_bundle":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-object v1

    .line 294
    :cond_4
    :goto_1
    return-object v1
.end method

.method public final whitelist getDevices(Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "domain"    # Lcom/samsung/android/allshare/Device$DeviceDomain;
    .param p2, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/Device$DeviceDomain;",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDevices - type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], domain["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceFinderImpl(v1)"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_DOMAIN_SYNC"

    .line 277
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/allshare/DeviceFinderImpl;->privateGetDevices(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 273
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final whitelist getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDevices - type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceFinderImpl(v1)"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_SYNC"

    .line 288
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/samsung/android/allshare/DeviceFinderImpl;->privateGetDevices(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 284
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final blacklist getDevices(Lcom/samsung/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;
    .param p2, "NIC"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDevices - type["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], NIC["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceFinderImpl(v1)"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v0, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_TYPE_IFACE_SYNC"

    .line 266
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/allshare/DeviceFinderImpl;->privateGetDevices(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 262
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final whitelist refresh()V
    .locals 5

    .line 192
    const-string v0, "DeviceFinderImpl(v1)"

    const-string/jumbo v1, "refresh"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    const-string v0, ""

    .line 199
    .local v0, "applicationID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 200
    .local v1, "ctx":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 202
    if-nez v0, :cond_1

    .line 203
    const-string v0, ""

    .line 206
    :cond_1
    new-instance v2, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;

    const/4 v3, 0x0

    const-string v4, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_REFRESH"

    invoke-direct {v2, p0, v4, v3}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/DeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 208
    .local v2, "builder":Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    .line 211
    return-void

    .line 194
    .end local v0    # "applicationID":Ljava/lang/String;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "builder":Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    :cond_2
    :goto_0
    const-string/jumbo v1, "refresh : mAllShareConnector is null"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public blacklist refresh(Lcom/samsung/android/allshare/Device$DeviceType;)V
    .locals 3
    .param p1, "type"    # Lcom/samsung/android/allshare/Device$DeviceType;

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refresh("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DeviceFinderImpl(v1)"

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    new-instance v0, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_REFRESH_TARGET"

    invoke-direct {v0, p0, v2, v1}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/DeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 224
    .local v0, "builder":Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BUNDLE_ENUM_DEVICE_TYPE"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    .line 226
    return-void

    .line 218
    .end local v0    # "builder":Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") : mAllShareConnector is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public blacklist registerSearchTarget(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            ">;)V"
        }
    .end annotation

    .line 549
    .local p1, "deviceTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device$DeviceType;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 552
    :cond_0
    if-nez p1, :cond_1

    .line 553
    return-void

    .line 555
    :cond_1
    const-string v0, ""

    .line 556
    .local v0, "applicationID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 557
    .local v1, "ctx":Landroid/content/Context;
    if-eqz v1, :cond_2

    .line 558
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 559
    if-nez v0, :cond_2

    .line 560
    const-string v0, ""

    .line 564
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v2, "devTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device$DeviceType;

    .line 566
    .local v4, "devType":Lcom/samsung/android/allshare/Device$DeviceType;
    invoke-virtual {v4}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 568
    .end local v4    # "devType":Lcom/samsung/android/allshare/Device$DeviceType;
    :cond_3
    new-instance v3, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;

    const/4 v4, 0x0

    const-string v5, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_REGISTER_SEARCH_TARGET_SYNC"

    invoke-direct {v3, p0, v5, v4}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/DeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 570
    .local v3, "builder":Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v4, "BUNDLE_STRINGARRAYLIST_DEVICE_TYPE_LIST"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 573
    invoke-virtual {v3}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    .line 574
    return-void

    .line 550
    .end local v0    # "applicationID":Ljava/lang/String;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "devTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "builder":Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    :cond_4
    :goto_1
    return-void
.end method

.method public whitelist setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V
    .locals 5
    .param p1, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;
    .param p2, "l"    # Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 230
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "DeviceFinderImpl(v1)"

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 235
    :cond_0
    if-nez p1, :cond_1

    .line 236
    const-string/jumbo v0, "setEventListener error! deviceType is null"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void

    .line 240
    :cond_1
    sget-object v0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    .local v0, "deviceTypeEvent":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 242
    const-string/jumbo v2, "setEventListener error! deviceTypeEvent is null"

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 247
    .local v1, "oldListener":Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    iget-object v2, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const/4 v2, 0x0

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    .line 250
    iget-object v3, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    invoke-interface {v3, v0, v2, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z

    goto :goto_0

    .line 251
    :cond_3
    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    .line 252
    iget-object v3, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    invoke-interface {v3, v0, v2, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 256
    :cond_4
    :goto_0
    return-void

    .line 231
    .end local v0    # "deviceTypeEvent":Ljava/lang/String;
    .end local v1    # "oldListener":Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    :cond_5
    :goto_1
    const-string/jumbo v0, "setEventListener error! AllShareService is not connected"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public blacklist unregisterSearchTarget(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            ">;)V"
        }
    .end annotation

    .line 580
    .local p1, "deviceTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device$DeviceType;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/DeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 583
    :cond_0
    if-nez p1, :cond_1

    .line 584
    return-void

    .line 586
    :cond_1
    const-string v0, ""

    .line 587
    .local v0, "applicationID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 588
    .local v1, "ctx":Landroid/content/Context;
    if-eqz v1, :cond_2

    .line 589
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 590
    if-nez v0, :cond_2

    .line 591
    const-string v0, ""

    .line 595
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .local v2, "devTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device$DeviceType;

    .line 597
    .local v4, "devType":Lcom/samsung/android/allshare/Device$DeviceType;
    invoke-virtual {v4}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 599
    .end local v4    # "devType":Lcom/samsung/android/allshare/Device$DeviceType;
    :cond_3
    new-instance v3, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;

    const/4 v4, 0x0

    const-string v5, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_UNREGISTER_SEARCH_TARGET_SYNC"

    invoke-direct {v3, p0, v5, v4}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/DeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 601
    .local v3, "builder":Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v4, "BUNDLE_STRINGARRAYLIST_DEVICE_TYPE_LIST"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 604
    invoke-virtual {v3}, Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    .line 605
    return-void

    .line 581
    .end local v0    # "applicationID":Ljava/lang/String;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "devTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "builder":Lcom/samsung/android/allshare/DeviceFinderImpl$SyncActionInvoker;
    :cond_4
    :goto_1
    return-void
.end method
