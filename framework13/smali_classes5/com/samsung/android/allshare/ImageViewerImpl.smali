.class final Lcom/samsung/android/allshare/ImageViewerImpl;
.super Lcom/samsung/android/allshare/media/ImageViewer;
.source "ImageViewerImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;
.implements Lcom/sec/android/allshare/iface/IHandlerHolder;


# static fields
.field private static final blacklist TAG_CLASS:Ljava/lang/String; = "ImageViewerImpl"


# instance fields
.field private blacklist mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

.field private blacklist mContentChangedNotified:Z

.field private blacklist mCurrentDMRUri:Ljava/lang/String;

.field private blacklist mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

.field blacklist mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

.field private blacklist mEventListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;

.field private blacklist mIsSubscribed:Z

.field private blacklist mPlayingContentUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mPlaylistPlayer:Lcom/samsung/android/allshare/media/PlaylistPlayer;

.field blacklist mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

.field private blacklist mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

.field private blacklist mSlideShowPlayer:Lcom/samsung/android/allshare/media/SlideShowPlayer;

.field private blacklist mViewController:Lcom/samsung/android/allshare/media/ViewController;

.field private blacklist mViewController2:Lcom/samsung/android/allshare/media/ViewController2;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContentChangedNotified(Lcom/samsung/android/allshare/ImageViewerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mContentChangedNotified:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentDMRUri(Lcom/samsung/android/allshare/ImageViewerImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mCurrentDMRUri:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventListener(Lcom/samsung/android/allshare/ImageViewerImpl;)Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mEventListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlayingContentUris(Lcom/samsung/android/allshare/ImageViewerImpl;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mPlayingContentUris:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResponseListener(Lcom/samsung/android/allshare/ImageViewerImpl;)Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContentChangedNotified(Lcom/samsung/android/allshare/ImageViewerImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mContentChangedNotified:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentDMRUri(Lcom/samsung/android/allshare/ImageViewerImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mCurrentDMRUri:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mparseUriFilePath(Lcom/samsung/android/allshare/ImageViewerImpl;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/ImageViewerImpl;->parseUriFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V
    .locals 4
    .param p1, "connector"    # Lcom/samsung/android/allshare/IAllShareConnector;
    .param p2, "deviceImpl"    # Lcom/samsung/android/allshare/DeviceImpl;

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/allshare/media/ImageViewer;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 55
    iput-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 57
    iput-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    .line 59
    iput-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mEventListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;

    .line 63
    iput-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mViewController:Lcom/samsung/android/allshare/media/ViewController;

    .line 65
    iput-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mViewController2:Lcom/samsung/android/allshare/media/ViewController2;

    .line 67
    iput-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mSlideShowPlayer:Lcom/samsung/android/allshare/media/SlideShowPlayer;

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mIsSubscribed:Z

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mContentChangedNotified:Z

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mPlayingContentUris:Ljava/util/ArrayList;

    .line 75
    iput-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mCurrentDMRUri:Ljava/lang/String;

    .line 108
    new-instance v1, Lcom/samsung/android/allshare/ImageViewerImpl$1;

    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/allshare/ImageViewerImpl$1;-><init>(Lcom/samsung/android/allshare/ImageViewerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 226
    new-instance v1, Lcom/samsung/android/allshare/ImageViewerImpl$2;

    .line 227
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/allshare/ImageViewerImpl$2;-><init>(Lcom/samsung/android/allshare/ImageViewerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    .line 79
    const-string v1, "ImageViewerImpl"

    if-nez p1, :cond_0

    .line 81
    const-string v0, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void

    .line 85
    :cond_0
    if-nez p2, :cond_1

    .line 86
    const-string v0, "deviceImpl is null"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void

    .line 90
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 94
    invoke-virtual {p2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 95
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 96
    const-string v0, "bundle is null"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void

    .line 100
    :cond_2
    nop

    .line 101
    const-string v1, "BUNDLE_BOOLEAN_SUPPORT_PLAYLIST_PLAYER"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 100
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 102
    .local v1, "isSupportPlaylist":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    new-instance v0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mPlaylistPlayer:Lcom/samsung/android/allshare/media/PlaylistPlayer;

    goto :goto_0

    .line 105
    :cond_3
    iput-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mPlaylistPlayer:Lcom/samsung/android/allshare/media/PlaylistPlayer;

    .line 106
    :goto_0
    return-void
.end method

.method private blacklist parseUriFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .line 539
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 540
    return-object v0

    .line 541
    :cond_0
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 542
    .local v1, "scContext":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 543
    return-object v0

    .line 544
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 545
    .local v8, "cr":Landroid/content/ContentResolver;
    if-nez v8, :cond_2

    .line 546
    return-object v0

    .line 548
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 549
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_3

    .line 550
    return-object v0

    .line 552
    :cond_3
    const/4 v0, 0x0

    .line 553
    .local v0, "str":Ljava/lang/String;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 554
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 556
    return-object v0
.end method

.method private blacklist showLocalContentContentScheme(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V
    .locals 10
    .param p1, "item"    # Lcom/samsung/android/allshare/Item;
    .param p2, "ci"    # Lcom/samsung/android/allshare/media/ContentInfo;

    .line 596
    const-string v0, "ImageViewerImpl"

    const-string/jumbo v1, "showLocalContentContentScheme()"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 603
    :cond_0
    if-nez p1, :cond_1

    .line 604
    const-string/jumbo v1, "showLocalContentContentScheme Fail :  Item does not exist "

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 606
    return-void

    .line 609
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v1

    .line 610
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_2

    .line 611
    const-string/jumbo v2, "showLocalContentContentScheme Fail :  uri == null "

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v2}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 613
    return-void

    .line 616
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v2}, Lcom/samsung/android/allshare/IAllShareConnector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 617
    .local v8, "resolver":Landroid/content/ContentResolver;
    if-nez v8, :cond_3

    .line 618
    const-string/jumbo v2, "showLocalContentContentScheme Fail :  resolver == null "

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v2}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 620
    return-void

    .line 623
    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 625
    .local v2, "cur":Landroid/database/Cursor;
    if-nez v2, :cond_4

    .line 626
    const-string/jumbo v3, "showLocalContentContentScheme Fail :  INVALID_ARGUMENT (cur == null) "

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v3, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v3}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 629
    return-void

    .line 631
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 633
    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 635
    .local v3, "idx":I
    if-gez v3, :cond_5

    .line 636
    const-string/jumbo v4, "showLocalContentContentScheme Fail :  INVALID_ARGUMENT(idx < 0)"

    invoke-static {v0, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v4, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v4}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 638
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 639
    return-void

    .line 642
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mPlaylistPlayer:Lcom/samsung/android/allshare/media/PlaylistPlayer;

    if-eqz v4, :cond_6

    .line 643
    check-cast v4, Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->setCurrentFilePath(Ljava/lang/String;)V

    .line 645
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 647
    new-instance v4, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v4}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 648
    .local v4, "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v5, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW_LOCAL_CONTENT_URI"

    invoke-virtual {v4, v5}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 649
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 650
    .local v5, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BUNDLE_STRING_ID"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    instance-of v6, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v6, :cond_7

    .line 653
    move-object v6, p1

    check-cast v6, Lcom/sec/android/allshare/iface/IBundleHolder;

    .line 654
    invoke-interface {v6}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 653
    const-string v7, "BUNDLE_PARCELABLE_ITEM"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 657
    :cond_7
    nop

    .line 658
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v6

    goto :goto_0

    :cond_8
    const-wide/16 v6, 0x0

    .line 657
    :goto_0
    const-string v9, "BUNDLE_LONG_CONTENT_INFO_STARTINGPOSITION"

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 660
    invoke-virtual {v4, v5}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 662
    iget-object v6, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v7, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v6, v4, v7}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 663
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showLocalContentContentScheme : [ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ]  to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 664
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 663
    invoke-static {v0, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return-void

    .line 598
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "cur":Landroid/database/Cursor;
    .end local v3    # "idx":I
    .end local v4    # "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v8    # "resolver":Landroid/content/ContentResolver;
    :cond_9
    :goto_1
    const-string/jumbo v1, "showLocalContentContentScheme Fail :  SERVICE_NOT_CONNECTED "

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 600
    return-void
.end method

.method private blacklist showLocalContentFileScheme(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V
    .locals 9
    .param p1, "item"    # Lcom/samsung/android/allshare/Item;
    .param p2, "ci"    # Lcom/samsung/android/allshare/media/ContentInfo;

    .line 694
    const-string v0, "ImageViewerImpl"

    const-string/jumbo v1, "showLocalContentFileScheme()"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 701
    :cond_0
    const-string v1, ""

    .line 702
    .local v1, "filePath":Ljava/lang/String;
    const-string v2, ""

    .line 704
    .local v2, "mimeType":Ljava/lang/String;
    instance-of v3, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    const-string v4, "BUNDLE_STRING_ITEM_MIMETYPE"

    const-string v5, "BUNDLE_STRING_FILEPATH"

    if-eqz v3, :cond_1

    .line 705
    move-object v3, p1

    check-cast v3, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v3}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 706
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 707
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 710
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mPlaylistPlayer:Lcom/samsung/android/allshare/media/PlaylistPlayer;

    if-eqz v3, :cond_2

    .line 711
    check-cast v3, Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-virtual {v3, v1}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->setCurrentFilePath(Ljava/lang/String;)V

    .line 713
    :cond_2
    new-instance v3, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v3}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 714
    .local v3, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v6, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW_LOCAL_CONTENT"

    invoke-virtual {v3, v6}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 715
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 717
    .local v6, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BUNDLE_STRING_ID"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-virtual {v6, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-virtual {v6, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BUNDLE_STRING_TITLE"

    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    instance-of v4, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v4, :cond_3

    .line 723
    move-object v4, p1

    check-cast v4, Lcom/sec/android/allshare/iface/IBundleHolder;

    .line 724
    invoke-interface {v4}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 723
    const-string v5, "BUNDLE_PARCELABLE_ITEM"

    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 727
    :cond_3
    nop

    .line 728
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v4

    goto :goto_0

    :cond_4
    const-wide/16 v4, 0x0

    .line 727
    :goto_0
    const-string v7, "BUNDLE_LONG_CONTENT_INFO_STARTINGPOSITION"

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 730
    invoke-virtual {v3, v6}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 732
    iget-object v4, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v5, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v4, v3, v5}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 733
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showLocalContentFileScheme : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ") to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 734
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 733
    invoke-static {v0, v4}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    return-void

    .line 696
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v6    # "bundle":Landroid/os/Bundle;
    :cond_5
    :goto_1
    const-string/jumbo v1, "showLocalContentFileScheme : SERVICE_NOT_CONNECTED"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 698
    return-void
.end method

.method private blacklist showMediaContent(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V
    .locals 6
    .param p1, "i"    # Lcom/samsung/android/allshare/Item;
    .param p2, "ci"    # Lcom/samsung/android/allshare/media/ContentInfo;

    .line 668
    const-string v0, "ImageViewerImpl"

    const-string/jumbo v1, "showMediaContent()"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 675
    :cond_0
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 676
    .local v1, "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 677
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 678
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    instance-of v3, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v3, :cond_1

    .line 680
    move-object v3, p1

    check-cast v3, Lcom/sec/android/allshare/iface/IBundleHolder;

    .line 681
    invoke-interface {v3}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 680
    const-string v4, "BUNDLE_PARCELABLE_ITEM"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 684
    :cond_1
    nop

    .line 685
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v3

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x0

    .line 684
    :goto_0
    const-string v5, "BUNDLE_LONG_CONTENT_INFO_STARTINGPOSITION"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 687
    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 689
    iget-object v3, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v3, v1, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showMediaContent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    return-void

    .line 670
    .end local v1    # "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_3
    :goto_1
    const-string/jumbo v1, "showMediaContent : SERVICE_NOT_CONNECTED"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 672
    return-void
.end method

.method private blacklist showWebContent(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V
    .locals 6
    .param p1, "ai"    # Lcom/samsung/android/allshare/Item;
    .param p2, "ci"    # Lcom/samsung/android/allshare/media/ContentInfo;

    .line 562
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "ImageViewerImpl"

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 568
    :cond_0
    if-nez p1, :cond_1

    .line 569
    const-string/jumbo v0, "showLocalContentContentScheme Fail :  Item does not exist "

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 571
    return-void

    .line 574
    :cond_1
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 575
    .local v0, "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SHOW_URI"

    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 576
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 577
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    instance-of v3, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v3, :cond_2

    .line 580
    move-object v3, p1

    check-cast v3, Lcom/sec/android/allshare/iface/IBundleHolder;

    .line 581
    invoke-interface {v3}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 580
    const-string v4, "BUNDLE_PARCELABLE_ITEM"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 584
    :cond_2
    nop

    .line 585
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v3

    goto :goto_0

    :cond_3
    const-wide/16 v3, 0x0

    .line 584
    :goto_0
    const-string v5, "BUNDLE_LONG_CONTENT_INFO_STARTINGPOSITION"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 587
    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 589
    iget-object v3, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v3, v0, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showWebContent : [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ]  to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 591
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 590
    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void

    .line 563
    .end local v0    # "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_4
    :goto_1
    const-string/jumbo v0, "showWebContent : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 565
    return-void
.end method


# virtual methods
.method public blacklist getBundle()Landroid/os/Bundle;
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 896
    const/4 v0, 0x0

    return-object v0

    .line 898
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 822
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0

    .line 824
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 863
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v0

    .line 865
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v0

    .line 866
    .local v0, "result":Lcom/samsung/android/allshare/Device$DeviceType;
    return-object v0
.end method

.method public whitelist getID()Ljava/lang/String;
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 830
    const-string v0, ""

    return-object v0

    .line 832
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIPAddress()Ljava/lang/String;
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 888
    const-string v0, ""

    return-object v0

    .line 890
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIPAdress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 882
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIcon()Landroid/net/Uri;
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 838
    const/4 v0, 0x0

    return-object v0

    .line 840
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

    .line 845
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 848
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getModelName()Ljava/lang/String;
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 873
    const-string v0, ""

    return-object v0

    .line 875
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNIC()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 335
    const-string v0, ""

    return-object v0

    .line 337
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getNIC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 854
    const-string v0, ""

    return-object v0

    .line 856
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getP2pMacAddress()Ljava/lang/String;
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 1157
    const-string v0, ""

    return-object v0

    .line 1159
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPlaylistPlayer()Lcom/samsung/android/allshare/media/PlaylistPlayer;
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mPlaylistPlayer:Lcom/samsung/android/allshare/media/PlaylistPlayer;

    return-object v0
.end method

.method public whitelist getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 1
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 1198
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 1199
    const-string v0, ""

    return-object v0

    .line 1201
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/DeviceImpl;->getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getScreenSharingInfo()Ljava/lang/String;
    .locals 1

    .line 1166
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 1167
    const-string v0, ""

    return-object v0

    .line 1169
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getScreenSharingInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 1
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 1208
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 1209
    const-string v0, ""

    return-object v0

    .line 1211
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/DeviceImpl;->getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScreenSharingP2pMacAddr()Ljava/lang/String;
    .locals 1

    .line 1193
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getSecProductP2pMacAddr()Ljava/lang/String;
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 1186
    const-string v0, ""

    return-object v0

    .line 1188
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getSecProductP2pMacAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSlideShowPlayer()Lcom/samsung/android/allshare/media/SlideShowPlayer;
    .locals 9

    .line 1015
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1018
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1019
    .local v0, "parmBundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 1020
    .local v2, "b":Landroid/os/Bundle;
    const-string v3, "ImageViewerImpl"

    if-nez v2, :cond_1

    .line 1021
    const-string v4, "getSlideShowPlayer : bundle is Null"

    invoke-static {v3, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    return-object v1

    .line 1025
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BUNDLE_STRING_ID"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    new-instance v4, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v4}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1028
    .local v4, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v5, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_GET_SLIDESHOWPLAYER_SYNC"

    invoke-virtual {v4, v5}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {v4, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1031
    iget-object v5, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v5, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v5

    .line 1033
    .local v5, "res_message":Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v5, :cond_2

    .line 1034
    const-string/jumbo v6, "res_message is Null"

    invoke-static {v3, v6}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    return-object v1

    .line 1038
    :cond_2
    invoke-virtual {v5}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 1040
    .local v6, "res_bundle":Landroid/os/Bundle;
    if-nez v6, :cond_3

    .line 1041
    const-string/jumbo v7, "res_bundle is Null"

    invoke-static {v3, v7}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    return-object v1

    .line 1046
    :cond_3
    const-string v3, "BUNDLE_BOOLEAN_SUPPORT_SPC_SLIDESHOW"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1048
    .local v3, "isSupport":Z
    if-nez v3, :cond_4

    .line 1049
    return-object v1

    .line 1051
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mSlideShowPlayer:Lcom/samsung/android/allshare/media/SlideShowPlayer;

    if-nez v1, :cond_5

    .line 1052
    new-instance v1, Lcom/samsung/android/allshare/SlideShowPlayerImpl;

    iget-object v7, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v8, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-direct {v1, v7, v8}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    iput-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mSlideShowPlayer:Lcom/samsung/android/allshare/media/SlideShowPlayer;

    .line 1054
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mSlideShowPlayer:Lcom/samsung/android/allshare/media/SlideShowPlayer;

    return-object v1

    .line 1016
    .end local v0    # "parmBundle":Landroid/os/Bundle;
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "isSupport":Z
    .end local v4    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v5    # "res_message":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v6    # "res_bundle":Landroid/os/Bundle;
    :cond_6
    :goto_0
    return-object v1
.end method

.method public blacklist getState()V
    .locals 4

    .line 1059
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1065
    :cond_0
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1066
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_REQUEST_GET_VIEWER_STATE"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1068
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1069
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1072
    iget-object v2, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 1073
    return-void

    .line 1060
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onGetStateResponseReceived(Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;Lcom/samsung/android/allshare/ERROR;)V

    .line 1062
    return-void
.end method

.method public blacklist getViewController()Lcom/samsung/android/allshare/media/ViewController;
    .locals 13

    .line 910
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 913
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 914
    .local v0, "parmBundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 915
    .local v2, "b":Landroid/os/Bundle;
    const-string v3, "ImageViewerImpl"

    if-nez v2, :cond_1

    .line 916
    const-string v4, "getViewController : bundle is Null"

    invoke-static {v3, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    return-object v1

    .line 920
    :cond_1
    const-string v4, "BUNDLE_STRING_DEVICE_ID"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 922
    .local v5, "deviceId":Ljava/lang/String;
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 927
    :cond_2
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    new-instance v4, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v4}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 930
    .local v4, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v6, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_SET_VIEW_CONTROLLER_SYNC"

    invoke-virtual {v4, v6}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v4, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 933
    iget-object v6, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v6, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v6

    .line 935
    .local v6, "res_message":Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v6, :cond_3

    .line 936
    const-string/jumbo v7, "res_message is Null"

    invoke-static {v3, v7}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    return-object v1

    .line 940
    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 942
    .local v7, "res_bundle":Landroid/os/Bundle;
    if-nez v7, :cond_4

    .line 943
    const-string/jumbo v8, "res_bundle is Null"

    invoke-static {v3, v8}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    return-object v1

    .line 947
    :cond_4
    const-string v3, "BUNDLE_INT_TV_WIDTH_RESOLUTION"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 948
    .local v3, "nTvWidth":I
    const-string v8, "BUNDLE_INT_TV_HEIGHT_RESOLUTION"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 950
    .local v8, "nTvHeight":I
    const-string v9, "BUNDLE_BOOLEAN_ZOOMABLE"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 951
    .local v9, "isZoomable":Z
    const-string v10, "BUNDLE_BOOLEAN_ROTATABLE"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 953
    .local v10, "isRotatable":Z
    if-eqz v9, :cond_7

    if-nez v10, :cond_5

    goto :goto_0

    .line 960
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mViewController:Lcom/samsung/android/allshare/media/ViewController;

    if-nez v1, :cond_6

    .line 961
    new-instance v1, Lcom/samsung/android/allshare/ViewControllerImpl;

    iget-object v11, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v12, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-direct {v1, v11, v12, v3, v8}, Lcom/samsung/android/allshare/ViewControllerImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;II)V

    iput-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mViewController:Lcom/samsung/android/allshare/media/ViewController;

    .line 964
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mViewController:Lcom/samsung/android/allshare/media/ViewController;

    return-object v1

    .line 955
    :cond_7
    :goto_0
    return-object v1

    .line 923
    .end local v3    # "nTvWidth":I
    .end local v4    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v6    # "res_message":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v7    # "res_bundle":Landroid/os/Bundle;
    .end local v8    # "nTvHeight":I
    .end local v9    # "isZoomable":Z
    .end local v10    # "isRotatable":Z
    :cond_8
    :goto_1
    const-string v4, "getViewController : deviceId is Null"

    invoke-static {v3, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    return-object v1

    .line 911
    .end local v0    # "parmBundle":Landroid/os/Bundle;
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v5    # "deviceId":Ljava/lang/String;
    :cond_9
    :goto_2
    return-object v1
.end method

.method public blacklist getViewController2()Lcom/samsung/android/allshare/media/ViewController2;
    .locals 9

    .line 970
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 973
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 974
    .local v0, "parmBundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 975
    .local v2, "b":Landroid/os/Bundle;
    const-string v3, "ImageViewerImpl"

    if-nez v2, :cond_1

    .line 976
    const-string v4, "getViewController2 : bundle is Null"

    invoke-static {v3, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    return-object v1

    .line 980
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BUNDLE_STRING_ID"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    new-instance v4, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v4}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 983
    .local v4, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v5, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_GET_VIEW_CONTROLLER2_SYNC"

    invoke-virtual {v4, v5}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v4, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 986
    iget-object v5, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v5, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v5

    .line 988
    .local v5, "res_message":Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v5, :cond_2

    .line 989
    const-string/jumbo v6, "res_message is Null"

    invoke-static {v3, v6}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    return-object v1

    .line 993
    :cond_2
    invoke-virtual {v5}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 995
    .local v6, "res_bundle":Landroid/os/Bundle;
    if-nez v6, :cond_3

    .line 996
    const-string/jumbo v7, "res_bundle is Null"

    invoke-static {v3, v7}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    return-object v1

    .line 1001
    :cond_3
    const-string v3, "BUNDLE_BOOLEAN_SUPPORT_SPC_IMAGEZOOM"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1003
    .local v3, "isSupport":Z
    if-nez v3, :cond_4

    .line 1004
    return-object v1

    .line 1006
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mViewController2:Lcom/samsung/android/allshare/media/ViewController2;

    if-nez v1, :cond_5

    .line 1007
    new-instance v1, Lcom/samsung/android/allshare/ViewController2Impl;

    iget-object v7, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v8, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    invoke-direct {v1, v7, v8}, Lcom/samsung/android/allshare/ViewController2Impl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    iput-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mViewController2:Lcom/samsung/android/allshare/media/ViewController2;

    .line 1009
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mViewController2:Lcom/samsung/android/allshare/media/ViewController2;

    return-object v1

    .line 971
    .end local v0    # "parmBundle":Landroid/os/Bundle;
    .end local v2    # "b":Landroid/os/Bundle;
    .end local v3    # "isSupport":Z
    .end local v4    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v5    # "res_message":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v6    # "res_bundle":Landroid/os/Bundle;
    :cond_6
    :goto_0
    return-object v1
.end method

.method public whitelist getViewerState()Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
    .locals 7

    .line 758
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 761
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 762
    .local v0, "parmBundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 763
    .local v1, "b":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 764
    sget-object v2, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v2

    .line 765
    :cond_1
    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 766
    .local v3, "id":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 767
    sget-object v2, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v2

    .line 769
    :cond_2
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    new-instance v2, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v2}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 772
    .local v2, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v4, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_GET_VIEWER_STATE_SYNC"

    invoke-virtual {v2, v4}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v2, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 775
    iget-object v4, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v4, v2}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v4

    .line 777
    .local v4, "res_message":Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v4, :cond_3

    .line 778
    sget-object v5, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v5

    .line 780
    :cond_3
    invoke-virtual {v4}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 782
    .local v5, "res_bundle":Landroid/os/Bundle;
    if-nez v5, :cond_4

    .line 783
    sget-object v6, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v6

    .line 785
    :cond_4
    nop

    .line 786
    const-string v6, "BUNDLE_STRING_IMAGE_VIEWEW_STATE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 785
    invoke-static {v6}, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    move-result-object v6

    return-object v6

    .line 759
    .end local v0    # "parmBundle":Landroid/os/Bundle;
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v2    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "res_message":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v5    # "res_bundle":Landroid/os/Bundle;
    :cond_5
    :goto_0
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0
.end method

.method public blacklist isRedirectSupportable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1137
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->isSupportRedirect()Z

    move-result v0

    return v0
.end method

.method public whitelist isSeekableOnPaused()Z
    .locals 1

    .line 1143
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSupportRedirect()Z
    .locals 9

    .line 1098
    const/4 v0, 0x0

    .line 1099
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1102
    :cond_0
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1103
    .local v1, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v3, "ACTION_IMAGE_VIEWER_IS_SUPPORT_REDIRECT_SYNC"

    invoke-virtual {v1, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1105
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1106
    .local v3, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BUNDLE_STRING_ID"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    invoke-virtual {v1, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1109
    iget-object v4, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v4, v1}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v4

    .line 1110
    .local v4, "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v4, :cond_1

    .line 1111
    return v2

    .line 1113
    :cond_1
    invoke-virtual {v4}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 1115
    .local v5, "res_bundle":Landroid/os/Bundle;
    if-nez v5, :cond_2

    .line 1116
    return v2

    .line 1118
    :cond_2
    const-string v6, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1119
    .local v6, "err":Ljava/lang/String;
    const-string v7, "ImageViewerImpl"

    if-eqz v6, :cond_3

    sget-object v8, Lcom/samsung/android/allshare/ERROR;->NOT_SUPPORTED_FRAMEWORK_VERSION:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v8}, Lcom/samsung/android/allshare/ERROR;->enumToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1120
    const-string v8, " isRedirectSupportable() Exception : NOT_SUPPORTED_FRAMEWORK_VERSION"

    invoke-static {v7, v8}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    return v2

    .line 1126
    :cond_3
    :try_start_0
    const-string v2, "BUNDLE_BOOLEAN_SUPPORT_REDIRECT"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1129
    goto :goto_0

    .line 1127
    :catch_0
    move-exception v2

    .line 1128
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "isRedirectSupportable Exception"

    invoke-static {v7, v8, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1130
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v0

    .line 1100
    .end local v1    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v3    # "req_bundle":Landroid/os/Bundle;
    .end local v4    # "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v5    # "res_bundle":Landroid/os/Bundle;
    .end local v6    # "err":Ljava/lang/String;
    :cond_4
    :goto_1
    return v2
.end method

.method public blacklist isSupportedByType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 1218
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 1219
    const/4 v0, 0x0

    return v0

    .line 1221
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/DeviceImpl;->isSupportedByType(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWholeHomeAudio()Z
    .locals 1

    .line 1148
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist prepare(Lcom/samsung/android/allshare/Item;)V
    .locals 5
    .param p1, "ai"    # Lcom/samsung/android/allshare/Item;

    .line 342
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "ImageViewerImpl"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 347
    :cond_0
    if-nez p1, :cond_1

    .line 348
    const-string/jumbo v0, "prepare Fail :  Item does not exist "

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void

    .line 352
    :cond_1
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 353
    .local v0, "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "ACTION_IMAGE_VIEWER_PREPARE"

    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 354
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 355
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_TITLE"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    instance-of v3, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v3, :cond_2

    .line 359
    move-object v3, p1

    check-cast v3, Lcom/sec/android/allshare/iface/IBundleHolder;

    .line 360
    invoke-interface {v3}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 359
    const-string v4, "BUNDLE_PARCELABLE_ITEM"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 362
    :cond_2
    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 364
    iget-object v3, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v3, v0, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepare : [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 366
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void

    .line 343
    .end local v0    # "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_3
    :goto_0
    const-string/jumbo v0, "prepare : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public blacklist removeEventHandler()V
    .locals 4

    .line 1077
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 1078
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 1077
    const-string v3, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    invoke-interface {v0, v3, v1, v2}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 1079
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mIsSubscribed:Z

    .line 1081
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mViewController:Lcom/samsung/android/allshare/media/ViewController;

    if-eqz v0, :cond_0

    .line 1082
    check-cast v0, Lcom/samsung/android/allshare/ViewControllerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ViewControllerImpl;->removeEventHandler()V

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mViewController2:Lcom/samsung/android/allshare/media/ViewController2;

    if-eqz v0, :cond_1

    .line 1085
    check-cast v0, Lcom/samsung/android/allshare/ViewController2Impl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ViewController2Impl;->removeEventHandler()V

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mSlideShowPlayer:Lcom/samsung/android/allshare/media/SlideShowPlayer;

    if-eqz v0, :cond_2

    .line 1088
    check-cast v0, Lcom/samsung/android/allshare/SlideShowPlayerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->removeEventHandler()V

    .line 1090
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mPlaylistPlayer:Lcom/samsung/android/allshare/media/PlaylistPlayer;

    if-eqz v0, :cond_3

    .line 1091
    check-cast v0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->removeEventHandler()V

    .line 1093
    :cond_3
    return-void
.end method

.method public blacklist requestMobileToTV(Ljava/lang/String;I)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 1176
    const-string v0, "ImageViewerImpl"

    const-string/jumbo v1, "requestMobileToTV : call requestMobileToTV"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 1178
    return-void

    .line 1180
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/DeviceImpl;->requestMobileToTV(Ljava/lang/String;I)V

    .line 1181
    return-void
.end method

.method public whitelist setEventListener(Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;)V
    .locals 4
    .param p1, "l"    # Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;

    .line 797
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "ImageViewerImpl"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 802
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEventListener to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iput-object p1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mEventListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;

    .line 805
    iget-boolean v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mIsSubscribed:Z

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 806
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 807
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 806
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z

    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mIsSubscribed:Z

    goto :goto_0

    .line 809
    :cond_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 810
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 811
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 810
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mIsSubscribed:Z

    .line 816
    :cond_2
    :goto_0
    return-void

    .line 798
    :cond_3
    :goto_1
    const-string/jumbo v0, "setEventListener error! AllShareService is not connected"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method public whitelist setResponseListener(Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setResponseListener to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageViewerImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iput-object p1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    .line 793
    return-void
.end method

.method public whitelist show(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V
    .locals 9
    .param p1, "ai"    # Lcom/samsung/android/allshare/Item;
    .param p2, "ci"    # Lcom/samsung/android/allshare/media/ContentInfo;

    .line 404
    const-string v0, "ImageViewerImpl"

    const-string/jumbo v1, "show() is called"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_19

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 411
    :cond_0
    if-nez p1, :cond_2

    .line 412
    const-string/jumbo v1, "show : ai == null"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    if-eqz v0, :cond_1

    .line 414
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 415
    :cond_1
    return-void

    .line 418
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getType()Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v1

    .line 419
    .local v1, "type":Lcom/samsung/android/allshare/Item$MediaType;
    if-nez v1, :cond_4

    .line 420
    const-string/jumbo v2, "show : type == null"

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    if-eqz v0, :cond_3

    .line 422
    sget-object v2, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v2}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 423
    :cond_3
    return-void

    .line 428
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mContentChangedNotified:Z

    .line 431
    sget-object v2, Lcom/samsung/android/allshare/ImageViewerImpl$3;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 435
    const-string/jumbo v2, "show : Invalid media type"

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    if-eqz v0, :cond_18

    .line 437
    sget-object v2, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v2}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    goto/16 :goto_3

    .line 433
    :pswitch_0
    nop

    .line 443
    const-string v2, "MEDIA_SERVER"

    .line 444
    .local v2, "itemConstructorKey":Ljava/lang/String;
    instance-of v3, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v3, :cond_5

    .line 445
    move-object v3, p1

    check-cast v3, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v3}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 446
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 447
    if-nez v2, :cond_5

    .line 448
    const-string v2, "MEDIA_SERVER"

    .line 451
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_5
    const-string v3, "MEDIA_SERVER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v0, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getResourceList()Ljava/util/ArrayList;

    move-result-object v3

    .line 455
    .local v3, "rsrcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item$Resource;>;"
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getThumbnail()Landroid/net/Uri;

    move-result-object v4

    .line 456
    .local v4, "thumb_uri":Landroid/net/Uri;
    if-eqz v4, :cond_6

    .line 457
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/allshare/Item$Resource;

    .line 460
    .local v6, "rsrc":Lcom/samsung/android/allshare/Item$Resource;
    invoke-virtual {v6}, Lcom/samsung/android/allshare/Item$Resource;->getURI()Landroid/net/Uri;

    move-result-object v7

    .line 461
    .local v7, "rsc_uri":Landroid/net/Uri;
    if-eqz v7, :cond_7

    .line 462
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    .end local v6    # "rsrc":Lcom/samsung/android/allshare/Item$Resource;
    .end local v7    # "rsc_uri":Landroid/net/Uri;
    :cond_7
    goto :goto_0

    .line 465
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v5

    .line 466
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_9

    .line 467
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mPlayingContentUris:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/ImageViewerImpl;->showMediaContent(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V

    .line 471
    return-void

    .line 472
    .end local v0    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "rsrcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item$Resource;>;"
    .end local v4    # "thumb_uri":Landroid/net/Uri;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_a
    const-string v3, "WEB_CONTENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .restart local v0    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getResourceList()Ljava/util/ArrayList;

    move-result-object v3

    .line 476
    .restart local v3    # "rsrcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item$Resource;>;"
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getThumbnail()Landroid/net/Uri;

    move-result-object v4

    .line 477
    .restart local v4    # "thumb_uri":Landroid/net/Uri;
    if-eqz v4, :cond_b

    .line 478
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/allshare/Item$Resource;

    .line 481
    .restart local v6    # "rsrc":Lcom/samsung/android/allshare/Item$Resource;
    invoke-virtual {v6}, Lcom/samsung/android/allshare/Item$Resource;->getURI()Landroid/net/Uri;

    move-result-object v7

    .line 482
    .restart local v7    # "rsc_uri":Landroid/net/Uri;
    if-eqz v7, :cond_c

    .line 483
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    .end local v6    # "rsrc":Lcom/samsung/android/allshare/Item$Resource;
    .end local v7    # "rsc_uri":Landroid/net/Uri;
    :cond_c
    goto :goto_1

    .line 486
    :cond_d
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v5

    .line 487
    .restart local v5    # "uri":Landroid/net/Uri;
    if-eqz v5, :cond_e

    .line 488
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_e
    iget-object v6, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mPlayingContentUris:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/ImageViewerImpl;->showWebContent(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V

    .line 492
    return-void

    .line 493
    .end local v0    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "rsrcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item$Resource;>;"
    .end local v4    # "thumb_uri":Landroid/net/Uri;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_f
    const-string v3, "LOCAL_CONTENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 494
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v3

    .line 495
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_11

    .line 496
    const-string/jumbo v4, "show : uri == null"

    invoke-static {v0, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    if-eqz v0, :cond_10

    .line 498
    sget-object v4, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v4}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 499
    :cond_10
    return-void

    .line 502
    :cond_11
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 503
    .local v4, "scheme":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "show : scheme = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v5, "content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 505
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/allshare/ImageViewerImpl;->parseUriFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "filePath":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v5, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v6, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mPlayingContentUris:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/ImageViewerImpl;->showLocalContentContentScheme(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V

    .line 510
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v5    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2

    :cond_12
    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 511
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 512
    .local v5, "bundle":Landroid/os/Bundle;
    instance-of v6, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v6, :cond_13

    .line 513
    move-object v6, p1

    check-cast v6, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v6}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 515
    :cond_13
    const-string v6, "BUNDLE_STRING_FILEPATH"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 516
    .local v6, "filePath":Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->checkFilePathValid(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 517
    const-string/jumbo v7, "show : filePath is not valid"

    invoke-static {v0, v7}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    if-eqz v0, :cond_14

    .line 519
    sget-object v7, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v7}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 520
    return-void

    .line 523
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v0, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object v7, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mPlayingContentUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/ImageViewerImpl;->showLocalContentFileScheme(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V

    .line 527
    .end local v0    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "filePath":Ljava/lang/String;
    goto :goto_2

    .line 528
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    if-eqz v0, :cond_16

    .line 529
    sget-object v5, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v5}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 532
    :cond_16
    :goto_2
    return-void

    .line 535
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "scheme":Ljava/lang/String;
    :cond_17
    const-string/jumbo v3, "show : fail - INVALID ARG "

    invoke-static {v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-void

    .line 438
    .end local v2    # "itemConstructorKey":Ljava/lang/String;
    :cond_18
    :goto_3
    return-void

    .line 406
    .end local v1    # "type":Lcom/samsung/android/allshare/Item$MediaType;
    :cond_19
    :goto_4
    const-string/jumbo v1, "show : SERVICE_NOT_CONNECTED"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onShowResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 408
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist stop()V
    .locals 5

    .line 739
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "ImageViewerImpl"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 745
    :cond_0
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 746
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_STOP"

    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 747
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 749
    .local v2, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 752
    iget-object v3, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v3, v0, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 753
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stop : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    return-void

    .line 740
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2    # "req_bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string/jumbo v0, "stop : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseListener:Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1}, Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;->onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 742
    return-void
.end method

.method public whitelist zoom(IIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "sourceWidth"    # I
    .param p4, "sourceHeight"    # I

    .line 376
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "ImageViewerImpl"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 381
    :cond_0
    if-ltz p3, :cond_2

    if-gez p4, :cond_1

    goto :goto_0

    .line 386
    :cond_1
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 387
    .local v0, "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_IMAGE_VIEWER_ZOOM"

    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 388
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageViewerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v3, "BUNDLE_INT_IMAGE_X_COORDINATE"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 391
    const-string v3, "BUNDLE_INT_IMAGE_Y_COORDINATE"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 392
    const-string v3, "BUNDLE_INT_IMAGE_WIDTH"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    const-string v3, "BUNDLE_INT_IMAGE_HEIGHT"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 395
    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 397
    iget-object v3, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/ImageViewerImpl;->mResponseHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v3, v0, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "zoom_ScreenSharing : [ x : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " width : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void

    .line 382
    .end local v0    # "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_0
    const-string/jumbo v0, "zoom Fail :  image width or height is wrong "

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void

    .line 377
    :cond_3
    :goto_1
    const-string/jumbo v0, "zoom : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void
.end method
