.class final Lcom/samsung/android/allshare/MediaDeviceFinderImpl;
.super Lcom/samsung/android/allshare/media/MediaDeviceFinder;
.source "MediaDeviceFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;,
        Lcom/samsung/android/allshare/MediaDeviceFinderImpl$AllShareEventHandlerForMediaDevice;
    }
.end annotation


# static fields
.field private static final blacklist TAG_CLASS:Ljava/lang/String; = "MediaDeviceFinderImpl"

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
.method static bridge synthetic blacklist -$$Nest$fgetmAllShareConnector(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;)Lcom/samsung/android/allshare/IAllShareConnector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDiscoveryListenerMap(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDeviceFromMap(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->getDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveDeviceFromMap(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->removeDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmDeviceEventToDeviceTypeMap()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 8

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    .line 58
    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v3, "com.sec.android.allshare.event.EVENT_PROVIDER_DISCOVERY"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v1, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v4, "com.sec.android.allshare.event.EVENT_AV_PLAYER_DISCOVERY"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v5, "com.sec.android.allshare.event.EVENT_IMAGE_VIEWER_DISCOVERY"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v6, "com.sec.android.allshare.event.EVENT_SCREENSHARING_DISCOVERY"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    const-string v7, "com.sec.android.allshare.event.EVENT_DMR_DISCOVERY"

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sput-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    .line 74
    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceEventToDeviceTypeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/allshare/IAllShareConnector;)V
    .locals 2
    .param p1, "connector"    # Lcom/samsung/android/allshare/IAllShareConnector;

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 115
    if-nez p1, :cond_0

    .line 117
    const-string v0, "MediaDeviceFinderImpl"

    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 122
    new-instance v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$AllShareEventHandlerForMediaDevice;

    .line 123
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$AllShareEventHandlerForMediaDevice;-><init>(Landroid/os/Looper;Lcom/samsung/android/allshare/MediaDeviceFinderImpl;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 124
    return-void
.end method

.method private blacklist getDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "type"    # Lcom/samsung/android/allshare/Device$DeviceType;

    .line 394
    const/4 v0, 0x0

    const-string v1, "MediaDeviceFinderImpl"

    if-nez p1, :cond_0

    .line 395
    const-string v2, "getDeviceFromMap : bundle is null"

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-object v0

    .line 399
    :cond_0
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    .line 406
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting device from maps id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :try_start_0
    new-instance v3, Lcom/samsung/android/allshare/DeviceImpl;

    invoke-direct {v3, p1}, Lcom/samsung/android/allshare/DeviceImpl;-><init>(Landroid/os/Bundle;)V

    .line 410
    .local v3, "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    sget-object v4, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$1;->$SwitchMap$com$samsung$android$allshare$Device$DeviceType:[I

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device$DeviceType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 452
    .end local v3    # "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    goto/16 :goto_2

    .line 439
    .restart local v3    # "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 440
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/allshare/DeviceImpl;->isSupportedByType(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x3

    .line 441
    invoke-virtual {v3, v4}, Lcom/samsung/android/allshare/DeviceImpl;->isSupportedByType(I)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x2

    .line 442
    invoke-virtual {v3, v4}, Lcom/samsung/android/allshare/DeviceImpl;->isSupportedByType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 445
    :cond_2
    const-string v4, "all types are not supported"

    invoke-static {v1, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 443
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;

    return-object v4

    .line 431
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 432
    new-instance v4, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;

    iget-object v5, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    .line 434
    .local v4, "upnpDevice":Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;
    iget-object v5, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .end local v4    # "upnpDevice":Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;

    return-object v4

    .line 425
    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 426
    new-instance v4, Lcom/samsung/android/allshare/ProviderImpl;

    iget-object v5, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/allshare/ProviderImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    .line 427
    .local v4, "provider":Lcom/samsung/android/allshare/ProviderImpl;
    iget-object v5, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .end local v4    # "provider":Lcom/samsung/android/allshare/ProviderImpl;
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;

    return-object v4

    .line 418
    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 419
    new-instance v4, Lcom/samsung/android/allshare/ImageViewerImpl;

    iget-object v5, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/allshare/ImageViewerImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    .line 421
    .local v4, "imageViewer":Lcom/samsung/android/allshare/ImageViewerImpl;
    iget-object v5, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .end local v4    # "imageViewer":Lcom/samsung/android/allshare/ImageViewerImpl;
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;

    return-object v4

    .line 412
    :pswitch_4
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 413
    new-instance v4, Lcom/samsung/android/allshare/AVPlayerImpl;

    iget-object v5, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/allshare/AVPlayerImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    .line 414
    .local v4, "avPlayer":Lcom/samsung/android/allshare/AVPlayerImpl;
    iget-object v5, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .end local v4    # "avPlayer":Lcom/samsung/android/allshare/AVPlayerImpl;
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 450
    .end local v3    # "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    :catch_0
    move-exception v3

    .line 451
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "getDeviceFromMap : Exception"

    invoke-static {v1, v4, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 454
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0

    .line 402
    :cond_9
    :goto_3
    const-string v3, "getDeviceFromMap : id is null"

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device;>;"
    if-nez p3, :cond_0

    .line 462
    return-object v0

    .line 464
    :cond_0
    const/4 v1, 0x0

    .line 465
    .local v1, "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    new-instance v2, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker-IA;)V

    move-object v1, v2

    .line 467
    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_DOMAIN_SYNC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "BUNDLE_ENUM_DEVICE_TYPE"

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 469
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device$DeviceDomain;->enumToString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BUNDLE_ENUM_DEVICE_DOMAIN"

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_1
    nop

    .line 472
    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_TYPE_IFACE_SYNC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p4, :cond_2

    .line 473
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 474
    const-string v2, "BUNDLE_STRING_BOUND_INTERFACE"

    invoke-virtual {v1, v2, p4}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_2
    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_SYNC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 477
    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    move-result-object v2

    .line 484
    .local v2, "resBundle":Landroid/os/Bundle;
    if-nez v2, :cond_3

    .line 485
    return-object v0

    .line 487
    :cond_3
    nop

    .line 488
    const-string v3, "BUNDLE_PARCELABLE_ARRAYLIST_DEVICE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 490
    .local v3, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v4, "MediaDeviceFinderImpl"

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    .line 495
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Returned bundle list size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 498
    .local v6, "b":Landroid/os/Bundle;
    invoke-direct {p0, v6, p3}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->getDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;

    move-result-object v7

    .line 499
    .local v7, "d":Lcom/samsung/android/allshare/Device;
    if-eqz v7, :cond_5

    .line 500
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
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

    invoke-static {v4, v8}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 503
    :cond_5
    const-string v8, "device not present in any map"

    invoke-static {v4, v8}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .end local v6    # "b":Landroid/os/Bundle;
    .end local v7    # "d":Lcom/samsung/android/allshare/Device;
    :goto_2
    goto :goto_1

    .line 507
    :cond_6
    return-object v0

    .line 491
    :cond_7
    :goto_3
    const-string v5, "device list is empty or null!"

    invoke-static {v4, v5}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return-object v0

    .line 479
    .end local v2    # "resBundle":Landroid/os/Bundle;
    .end local v3    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_8
    return-object v0
.end method

.method private blacklist removeDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "type"    # Lcom/samsung/android/allshare/Device$DeviceType;

    .line 324
    const-string v0, "MediaDeviceFinderImpl"

    if-nez p1, :cond_0

    .line 325
    const-string/jumbo v1, "removeDeviceFromMap : bundle is null"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void

    .line 329
    :cond_0
    const-string v1, "BUNDLE_STRING_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "id":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 332
    const-string/jumbo v2, "removeDeviceFromMap : id is null"

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void

    .line 335
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    const-string/jumbo v2, "removeDeviceFromMap : id is Empty"

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void

    .line 341
    :cond_2
    :try_start_0
    sget-object v2, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$1;->$SwitchMap$com$samsung$android$allshare$Device$DeviceType:[I

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device$DeviceType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 379
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/DeviceImpl;

    .line 380
    .local v2, "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    if-eqz v2, :cond_3

    .line 381
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->removeEventHandler()V

    .line 382
    iget-object v3, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 384
    :cond_3
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

    .line 370
    .end local v2    # "deviceImpl":Lcom/samsung/android/allshare/DeviceImpl;
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;

    .line 371
    .local v2, "kd":Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;
    if-eqz v2, :cond_4

    .line 372
    invoke-virtual {v2}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->removeEventHandler()V

    .line 373
    iget-object v3, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 375
    :cond_4
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

    .line 377
    goto/16 :goto_0

    .line 361
    .end local v2    # "kd":Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/ProviderImpl;

    .line 362
    .local v2, "p":Lcom/samsung/android/allshare/ProviderImpl;
    if-eqz v2, :cond_5

    .line 363
    invoke-virtual {v2}, Lcom/samsung/android/allshare/ProviderImpl;->removeEventHandler()V

    .line 364
    iget-object v3, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 366
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

    .line 368
    goto :goto_0

    .line 352
    .end local v2    # "p":Lcom/samsung/android/allshare/ProviderImpl;
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/ImageViewerImpl;

    .line 353
    .local v2, "iv":Lcom/samsung/android/allshare/ImageViewerImpl;
    if-eqz v2, :cond_6

    .line 354
    invoke-virtual {v2}, Lcom/samsung/android/allshare/ImageViewerImpl;->removeEventHandler()V

    .line 355
    iget-object v3, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 357
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

    .line 359
    goto :goto_0

    .line 343
    .end local v2    # "iv":Lcom/samsung/android/allshare/ImageViewerImpl;
    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/AVPlayerImpl;

    .line 344
    .local v2, "av":Lcom/samsung/android/allshare/AVPlayerImpl;
    if-eqz v2, :cond_7

    .line 345
    invoke-virtual {v2}, Lcom/samsung/android/allshare/AVPlayerImpl;->removeEventHandler()V

    .line 346
    iget-object v3, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 348
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

    .line 350
    nop

    .line 390
    .end local v2    # "av":Lcom/samsung/android/allshare/AVPlayerImpl;
    :goto_0
    goto :goto_1

    .line 388
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "removeDeviceFromMap : Exception"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 391
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist cleanup()V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    .line 608
    iget-object v1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 609
    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAVPlayerMap:Ljava/util/HashMap;

    .line 611
    iget-object v1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 612
    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mProviderMap:Ljava/util/HashMap;

    .line 614
    iget-object v1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 615
    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mImageViewerMap:Ljava/util/HashMap;

    .line 617
    iget-object v1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 618
    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mScreenSharingDeviceMap:Ljava/util/HashMap;

    .line 620
    iget-object v1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 621
    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mUnknownDeviceMap:Ljava/util/HashMap;

    .line 623
    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 624
    iput-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 625
    return-void
.end method

.method public final whitelist getDevice(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;

    .line 304
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 307
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    .line 310
    :cond_1
    new-instance v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;

    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICE_BY_ID_SYNC"

    invoke-direct {v0, p0, v2, v1}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 312
    .local v0, "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_ENUM_DEVICE_TYPE"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    move-result-object v2

    .line 317
    .local v2, "device_bundle":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 318
    return-object v1

    .line 319
    :cond_2
    const-string v1, "BUNDLE_PARCELABLE_DEVICE"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 320
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->getDeviceFromMap(Landroid/os/Bundle;Lcom/samsung/android/allshare/Device$DeviceType;)Lcom/samsung/android/allshare/Device;

    move-result-object v3

    return-object v3

    .line 308
    .end local v0    # "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    .end local v2    # "device_bundle":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-object v1

    .line 305
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

    .line 283
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

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

    const-string v1, "MediaDeviceFinderImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_DOMAIN_SYNC"

    .line 288
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->privateGetDevices(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;

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

    .line 293
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 297
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

    const-string v1, "MediaDeviceFinderImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v0, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_SYNC"

    .line 299
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->privateGetDevices(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 294
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

    .line 273
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 276
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

    const-string v1, "MediaDeviceFinderImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v0, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_GET_DEVICES_BY_TYPE_IFACE_SYNC"

    .line 278
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->privateGetDevices(Ljava/lang/String;Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 274
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final whitelist refresh()V
    .locals 5

    .line 206
    const-string v0, "MediaDeviceFinderImpl"

    const-string/jumbo v1, "refresh"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    const-string v0, ""

    .line 213
    .local v0, "applicationID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 214
    .local v1, "ctx":Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 216
    if-nez v0, :cond_1

    .line 217
    const-string v0, ""

    .line 220
    :cond_1
    new-instance v2, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;

    const/4 v3, 0x0

    const-string v4, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_REFRESH"

    invoke-direct {v2, p0, v4, v3}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 222
    .local v2, "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    .line 225
    return-void

    .line 208
    .end local v0    # "applicationID":Ljava/lang/String;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    :cond_2
    :goto_0
    const-string/jumbo v1, "refresh : mAllShareConnector is null"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public blacklist refresh(Lcom/samsung/android/allshare/Device$DeviceType;)V
    .locals 3
    .param p1, "type"    # Lcom/samsung/android/allshare/Device$DeviceType;

    .line 229
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

    const-string v2, "MediaDeviceFinderImpl"

    invoke-static {v2, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    new-instance v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_REFRESH_TARGET"

    invoke-direct {v0, p0, v2, v1}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 237
    .local v0, "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BUNDLE_ENUM_DEVICE_TYPE"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    .line 239
    return-void

    .line 231
    .end local v0    # "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
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

    .line 232
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

    .line 547
    .local p1, "deviceTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device$DeviceType;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 550
    :cond_0
    if-nez p1, :cond_1

    .line 551
    return-void

    .line 553
    :cond_1
    const-string v0, ""

    .line 554
    .local v0, "applicationID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 555
    .local v1, "ctx":Landroid/content/Context;
    if-eqz v1, :cond_2

    .line 556
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 557
    if-nez v0, :cond_2

    .line 558
    const-string v0, ""

    .line 562
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 563
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

    .line 564
    .local v4, "devType":Lcom/samsung/android/allshare/Device$DeviceType;
    invoke-virtual {v4}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 566
    .end local v4    # "devType":Lcom/samsung/android/allshare/Device$DeviceType;
    :cond_3
    new-instance v3, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;

    const/4 v4, 0x0

    const-string v5, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_REGISTER_SEARCH_TARGET_SYNC"

    invoke-direct {v3, p0, v5, v4}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 568
    .local v3, "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v4, "BUNDLE_STRINGARRAYLIST_DEVICE_TYPE_LIST"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 571
    invoke-virtual {v3}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    .line 572
    return-void

    .line 548
    .end local v0    # "applicationID":Ljava/lang/String;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "devTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    :cond_4
    :goto_1
    return-void
.end method

.method public whitelist setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V
    .locals 5
    .param p1, "deviceType"    # Lcom/samsung/android/allshare/Device$DeviceType;
    .param p2, "l"    # Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 243
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "MediaDeviceFinderImpl"

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 248
    :cond_0
    if-nez p1, :cond_1

    .line 249
    const-string/jumbo v0, "setEventListener error! deviceType is null"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void

    .line 253
    :cond_1
    sget-object v0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDeviceTypeToEventMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    .local v0, "deviceTypeEvent":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 255
    const-string/jumbo v2, "setEventListener error! deviceTypeEvent is null"

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 260
    .local v1, "oldListener":Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    iget-object v2, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const/4 v2, 0x0

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    .line 263
    iget-object v3, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    invoke-interface {v3, v0, v2, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z

    goto :goto_0

    .line 264
    :cond_3
    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    .line 265
    iget-object v3, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    invoke-interface {v3, v0, v2, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 269
    :cond_4
    :goto_0
    return-void

    .line 244
    .end local v0    # "deviceTypeEvent":Ljava/lang/String;
    .end local v1    # "oldListener":Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    :cond_5
    :goto_1
    const-string/jumbo v0, "setEventListener error! AllShareService is not connected"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
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

    .line 577
    .local p1, "deviceTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Device$DeviceType;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 580
    :cond_0
    if-nez p1, :cond_1

    .line 581
    return-void

    .line 583
    :cond_1
    const-string v0, ""

    .line 584
    .local v0, "applicationID":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 585
    .local v1, "ctx":Landroid/content/Context;
    if-eqz v1, :cond_2

    .line 586
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 587
    if-nez v0, :cond_2

    .line 588
    const-string v0, ""

    .line 592
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 593
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

    .line 594
    .local v4, "devType":Lcom/samsung/android/allshare/Device$DeviceType;
    invoke-virtual {v4}, Lcom/samsung/android/allshare/Device$DeviceType;->enumToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 596
    .end local v4    # "devType":Lcom/samsung/android/allshare/Device$DeviceType;
    :cond_3
    new-instance v3, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;

    const/4 v4, 0x0

    const-string v5, "com.sec.android.allshare.action.ACTION_DEVICE_FINDER_UNREGISTER_SEARCH_TARGET_SYNC"

    invoke-direct {v3, p0, v5, v4}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker-IA;)V

    .line 598
    .local v3, "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v4, "BUNDLE_STRINGARRAYLIST_DEVICE_TYPE_LIST"

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 601
    invoke-virtual {v3}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->invoke()Landroid/os/Bundle;

    .line 602
    return-void

    .line 578
    .end local v0    # "applicationID":Ljava/lang/String;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "devTypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "builder":Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
    :cond_4
    :goto_1
    return-void
.end method
