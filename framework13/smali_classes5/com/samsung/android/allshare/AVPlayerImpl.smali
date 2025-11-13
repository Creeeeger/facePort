.class final Lcom/samsung/android/allshare/AVPlayerImpl;
.super Lcom/samsung/android/allshare/media/AVPlayer;
.source "AVPlayerImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;
.implements Lcom/sec/android/allshare/iface/IHandlerHolder;


# static fields
.field private static final blacklist TAG_CLASS:Ljava/lang/String; = "AVPlayerImpl"


# instance fields
.field private blacklist mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

.field private blacklist mAVPlayerEventListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;

.field private blacklist mAVPlayerExtensionEventListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;

.field private blacklist mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

.field private blacklist mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

.field private blacklist mAVPlayerWHAResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

.field private blacklist mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

.field private blacklist mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

.field private blacklist mContentChangedNotified:Z

.field private blacklist mCurrentDMRUri:Ljava/lang/String;

.field private blacklist mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

.field private blacklist mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

.field private blacklist mIsSubscribed:Z

.field private blacklist mPlayingContentUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPlaylistPlayer:Lcom/samsung/android/allshare/media/PlaylistPlayer;

.field private blacklist mSupportControlCaption:Z

.field private blacklist mSupportGetAspectRatio:Z

.field private blacklist mSupportGetCaptionState:Z

.field private blacklist mSupportMove360View:Z

.field private blacklist mSupportOrigin360View:Z

.field private blacklist mSupportSetAspectRatio:Z

.field private blacklist mSupportZoom360View:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAVPlayerEventListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerEventListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAVPlayerExtensionEventListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerExtensionEventListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAVPlayerWHAResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerWHAResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContentChangedNotified(Lcom/samsung/android/allshare/AVPlayerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mContentChangedNotified:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentDMRUri(Lcom/samsung/android/allshare/AVPlayerImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mCurrentDMRUri:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPlayingContentUris(Lcom/samsung/android/allshare/AVPlayerImpl;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mPlayingContentUris:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContentChangedNotified(Lcom/samsung/android/allshare/AVPlayerImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mContentChangedNotified:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentDMRUri(Lcom/samsung/android/allshare/AVPlayerImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mCurrentDMRUri:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V
    .locals 5
    .param p1, "connector"    # Lcom/samsung/android/allshare/IAllShareConnector;
    .param p2, "deviceImpl"    # Lcom/samsung/android/allshare/DeviceImpl;

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/allshare/media/AVPlayer;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 58
    iput-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerEventListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;

    .line 60
    iput-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerExtensionEventListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;

    .line 62
    iput-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    .line 64
    iput-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    .line 67
    iput-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    .line 69
    iput-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mPlaylistPlayer:Lcom/samsung/android/allshare/media/PlaylistPlayer;

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mIsSubscribed:Z

    .line 73
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mContentChangedNotified:Z

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mPlayingContentUris:Ljava/util/ArrayList;

    .line 77
    iput-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mCurrentDMRUri:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportSetAspectRatio:Z

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportGetAspectRatio:Z

    .line 85
    iput-boolean v1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportMove360View:Z

    .line 87
    iput-boolean v1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportZoom360View:Z

    .line 89
    iput-boolean v1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportOrigin360View:Z

    .line 92
    iput-boolean v1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportControlCaption:Z

    .line 94
    iput-boolean v1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportGetCaptionState:Z

    .line 771
    new-instance v1, Lcom/samsung/android/allshare/AVPlayerImpl$1;

    .line 772
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/allshare/AVPlayerImpl$1;-><init>(Lcom/samsung/android/allshare/AVPlayerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 895
    new-instance v1, Lcom/samsung/android/allshare/AVPlayerImpl$2;

    .line 896
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/allshare/AVPlayerImpl$2;-><init>(Lcom/samsung/android/allshare/AVPlayerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    .line 1295
    iput-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerWHAResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    .line 97
    const-string v1, "AVPlayerImpl"

    if-nez p1, :cond_0

    .line 99
    const-string v0, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 103
    :cond_0
    if-nez p2, :cond_1

    .line 104
    const-string v0, "deviceImpl is null"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void

    .line 107
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 108
    iput-object p2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 110
    invoke-virtual {p2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 111
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 112
    const-string v0, "deviceImpl.getBundle is null"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 116
    :cond_2
    nop

    .line 117
    const-string v1, "BUNDLE_BOOLEAN_SUPPORT_AUDIO_PLAYLIST_PLAYER"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 116
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 118
    .local v1, "isSupportAudioPlaylist":Ljava/lang/Boolean;
    nop

    .line 119
    const-string v3, "BUNDLE_BOOLEAN_SUPPORT_VIDEO_PLAYLIST_PLAYER"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 118
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 122
    .local v3, "isSupportVideoPlaylist":Ljava/lang/Boolean;
    nop

    .line 123
    const-string v4, "BUNDLE_BOOLEAN_SUPPORT_SET_ASPECT_RATIO"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportSetAspectRatio:Z

    .line 124
    nop

    .line 125
    const-string v4, "BUNDLE_BOOLEAN_SUPPORT_GET_ASPECT_RATIO"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportGetAspectRatio:Z

    .line 127
    const-string v4, "BUNDLE_BOOLEAN_SUPPORT_MOVE_360_VIEW"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportMove360View:Z

    .line 128
    const-string v4, "BUNDLE_BOOLEAN_SUPPORT_ZOOM_360_VIEW"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportZoom360View:Z

    .line 129
    nop

    .line 130
    const-string v4, "BUNDLE_BOOLEAN_SUPPORT_ORIGIN_360_VIEW"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportOrigin360View:Z

    .line 132
    nop

    .line 133
    const-string v4, "BUNDLE_BOOLEAN_SUPPORT_CONTROL_CAPTION"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportControlCaption:Z

    .line 134
    nop

    .line 135
    const-string v4, "BUNDLE_BOOLEAN_SUPPORT_GET_CAPTION_STATE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportGetCaptionState:Z

    .line 137
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 140
    :cond_3
    iput-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mPlaylistPlayer:Lcom/samsung/android/allshare/media/PlaylistPlayer;

    goto :goto_1

    .line 138
    :cond_4
    :goto_0
    new-instance v0, Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;-><init>(Lcom/samsung/android/allshare/IAllShareConnector;Lcom/samsung/android/allshare/DeviceImpl;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mPlaylistPlayer:Lcom/samsung/android/allshare/media/PlaylistPlayer;

    .line 141
    :goto_1
    return-void
.end method

.method private blacklist extractBundle(Lcom/samsung/android/allshare/Item;)Landroid/os/Bundle;
    .locals 3
    .param p1, "ai"    # Lcom/samsung/android/allshare/Item;

    .line 664
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 665
    .local v0, "bundle":Landroid/os/Bundle;
    instance-of v1, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v1, :cond_0

    .line 666
    move-object v1, p1

    check-cast v1, Lcom/sec/android/allshare/iface/IBundleHolder;

    .line 667
    invoke-interface {v1}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 666
    const-string v2, "BUNDLE_PARCELABLE_ITEM"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 669
    :cond_0
    return-object v0
.end method

.method private blacklist parseUriFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .line 261
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 262
    return-object v0

    .line 264
    :cond_0
    invoke-static {}, Lcom/samsung/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 265
    .local v1, "scContext":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 266
    return-object v0

    .line 267
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 268
    .local v8, "cr":Landroid/content/ContentResolver;
    if-nez v8, :cond_2

    .line 269
    return-object v0

    .line 271
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 272
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_4

    .line 273
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 274
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "str":Ljava/lang/String;
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 276
    return-object v0

    .line 278
    .end local v0    # "str":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_4
    return-object v0
.end method

.method private blacklist playFilePath(Ljava/lang/String;Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/samsung/android/allshare/Item;
    .param p3, "contentInfo"    # Lcom/samsung/android/allshare/media/ContentInfo;
    .param p4, "mimeType"    # Ljava/lang/String;

    .line 748
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 754
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "title":Ljava/lang/String;
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 757
    .local v1, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_FILEPATH_WITH_METADATA"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 759
    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AVPlayerImpl;->extractBundle(Lcom/samsung/android/allshare/Item;)Landroid/os/Bundle;

    move-result-object v2

    .line 760
    .local v2, "req_bundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_STRING_TITLE"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    nop

    .line 765
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    .line 764
    :goto_0
    const-string v5, "BUNDLE_LONG_CONTENT_INFO_STARTINGPOSITION"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 767
    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 768
    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v3, v1, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 769
    return-void

    .line 749
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2    # "req_bundle":Landroid/os/Bundle;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p2, p3, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 751
    return-void
.end method

.method private blacklist playItem(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V
    .locals 5
    .param p1, "item"    # Lcom/samsung/android/allshare/Item;
    .param p2, "contentInfo"    # Lcom/samsung/android/allshare/media/ContentInfo;

    .line 700
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 706
    :cond_0
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 707
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 709
    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/AVPlayerImpl;->extractBundle(Lcom/samsung/android/allshare/Item;)Landroid/os/Bundle;

    move-result-object v1

    .line 710
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    nop

    .line 714
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 713
    :goto_0
    const-string v4, "BUNDLE_LONG_CONTENT_INFO_STARTINGPOSITION"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 716
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 717
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 718
    return-void

    .line 701
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 703
    return-void
.end method

.method private blacklist playLocalContent(Landroid/net/Uri;Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "item"    # Lcom/samsung/android/allshare/Item;
    .param p3, "contentInfo"    # Lcom/samsung/android/allshare/media/ContentInfo;
    .param p4, "mimeType"    # Ljava/lang/String;

    .line 677
    const-string v5, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_URI"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->playUri(Landroid/net/Uri;Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method private blacklist playLocalContent(Ljava/lang/String;Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/samsung/android/allshare/Item;
    .param p3, "contentInfo"    # Lcom/samsung/android/allshare/media/ContentInfo;
    .param p4, "mimeType"    # Ljava/lang/String;

    .line 683
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/allshare/AVPlayerImpl;->playFilePath(Ljava/lang/String;Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method private blacklist playMediaContent(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/samsung/android/allshare/Item;
    .param p2, "contentInfo"    # Lcom/samsung/android/allshare/media/ContentInfo;

    .line 673
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/AVPlayerImpl;->playItem(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V

    .line 674
    return-void
.end method

.method private blacklist playUri(Landroid/net/Uri;Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "item"    # Lcom/samsung/android/allshare/Item;
    .param p3, "contentInfo"    # Lcom/samsung/android/allshare/media/ContentInfo;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "actionID"    # Ljava/lang/String;

    .line 723
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 729
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "title":Ljava/lang/String;
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 732
    .local v1, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    invoke-virtual {v1, p5}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 734
    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AVPlayerImpl;->extractBundle(Lcom/samsung/android/allshare/Item;)Landroid/os/Bundle;

    move-result-object v2

    .line 735
    .local v2, "req_bundle":Landroid/os/Bundle;
    const-string v3, "BUNDLE_STRING_TITLE"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v3, "BUNDLE_PARCELABLE_URI"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 740
    nop

    .line 741
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    .line 740
    :goto_0
    const-string v5, "BUNDLE_LONG_CONTENT_INFO_STARTINGPOSITION"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 743
    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 744
    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v3, v1, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 745
    return-void

    .line 724
    .end local v0    # "title":Ljava/lang/String;
    .end local v1    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2    # "req_bundle":Landroid/os/Bundle;
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p2, p3, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 726
    return-void
.end method

.method private blacklist playWebContent(Landroid/net/Uri;Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Ljava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "item"    # Lcom/samsung/android/allshare/Item;
    .param p3, "contentInfo"    # Lcom/samsung/android/allshare/media/ContentInfo;
    .param p4, "mimeType"    # Ljava/lang/String;

    .line 688
    const/4 v0, 0x0

    .line 690
    .local v0, "ci":Lcom/samsung/android/allshare/media/ContentInfo;
    if-eqz p3, :cond_0

    .line 691
    new-instance v1, Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    invoke-direct {v1}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;-><init>()V

    .line 692
    .local v1, "builder":Lcom/samsung/android/allshare/media/ContentInfo$Builder;
    invoke-virtual {p3}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->setStartingPosition(J)Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    .line 693
    invoke-virtual {v1}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->build()Lcom/samsung/android/allshare/media/ContentInfo;

    move-result-object v0

    .line 696
    .end local v1    # "builder":Lcom/samsung/android/allshare/media/ContentInfo$Builder;
    :cond_0
    const-string v7, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_URI"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/allshare/AVPlayerImpl;->playUri(Landroid/net/Uri;Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return-void
.end method


# virtual methods
.method public blacklist CreateWHAParty()V
    .locals 4

    .line 1324
    const-string v0, "AVPlayerImpl"

    const-string v1, "CreateWHAParty"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1331
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1332
    .local v0, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1335
    .local v1, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_WHA_CREATE_PARTY"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1338
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 1339
    return-void

    .line 1326
    .end local v0    # "req_bundle":Landroid/os/Bundle;
    .end local v1    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerWHAResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    if-eqz v0, :cond_2

    .line 1327
    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;->onCreateWHAParty(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    .line 1328
    :cond_2
    return-void
.end method

.method public blacklist GetWHADeviceStatusInfo()V
    .locals 4

    .line 1304
    const-string v0, "AVPlayerImpl"

    const-string v1, "GetWHADeviceStatusInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1312
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1313
    .local v0, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1316
    .local v1, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_WHA_GET_DEVICE_STATUS_INFO"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1319
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 1320
    return-void

    .line 1306
    .end local v0    # "req_bundle":Landroid/os/Bundle;
    .end local v1    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerWHAResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    if-eqz v0, :cond_2

    .line 1307
    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;->onGetWHADeviceStatusInfo(Lcom/samsung/android/allshare/WHADeviceInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 1309
    :cond_2
    return-void
.end method

.method public blacklist JoinWHAParty(Ljava/lang/String;)V
    .locals 4
    .param p1, "partyID"    # Ljava/lang/String;

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JoinWHAParty to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVPlayerImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1350
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1351
    .local v0, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    const-string v1, "BUNDLE_STRING_WHA_REQUEST_PARTY_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1355
    .local v1, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_WHA_JOIN_PARTY"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1358
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 1359
    return-void

    .line 1345
    .end local v0    # "req_bundle":Landroid/os/Bundle;
    .end local v1    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerWHAResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    if-eqz v0, :cond_2

    .line 1346
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;->onJoinWHAParty(Lcom/samsung/android/allshare/ERROR;)V

    .line 1347
    :cond_2
    return-void
.end method

.method public blacklist LeaveWHAParty()V
    .locals 4

    .line 1363
    const-string v0, "AVPlayerImpl"

    const-string v1, "LeaveWHAParty"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1370
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1371
    .local v0, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1374
    .local v1, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_WHA_LEAVE_PARTY"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1377
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 1378
    return-void

    .line 1365
    .end local v0    # "req_bundle":Landroid/os/Bundle;
    .end local v1    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerWHAResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    if-eqz v0, :cond_2

    .line 1366
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;->onLeaveWHAParty(Lcom/samsung/android/allshare/ERROR;)V

    .line 1367
    :cond_2
    return-void
.end method

.method public blacklist SetWHAResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    .line 1299
    iput-object p1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerWHAResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    .line 1300
    return-void
.end method

.method public whitelist controlCaption(Lcom/samsung/android/allshare/Caption$CaptionOperation;Lcom/samsung/android/allshare/Caption;)V
    .locals 6
    .param p1, "operation"    # Lcom/samsung/android/allshare/Caption$CaptionOperation;
    .param p2, "caption"    # Lcom/samsung/android/allshare/Caption;

    .line 1589
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "AVPlayerImpl"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1596
    :cond_0
    if-nez p1, :cond_1

    .line 1597
    const-string v0, "controlCaption: CaptionOperation is null, set Disable"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    sget-object p1, Lcom/samsung/android/allshare/Caption$CaptionOperation;->DISABLE:Lcom/samsung/android/allshare/Caption$CaptionOperation;

    .line 1600
    :cond_1
    if-nez p2, :cond_2

    .line 1601
    const-string v0, "controlCaption: Caption is null, create empty caption"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    new-instance v0, Lcom/samsung/android/allshare/Caption;

    invoke-direct {v0}, Lcom/samsung/android/allshare/Caption;-><init>()V

    move-object p2, v0

    .line 1605
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlCaption to [operation]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Caption$CaptionOperation;->enumToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " [caption]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1606
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Caption;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1605
    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Caption;->getLanguageList()Ljava/util/List;

    move-result-object v0

    .line 1609
    .local v0, "languageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 1611
    .local v1, "language":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1612
    .local v2, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Caption$CaptionOperation;->enumToString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_CAPTION_OPERATION"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Caption;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_CAPTION_NAME"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Caption;->getResourceUri()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_CAPTION_RES_URI"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Caption;->getCaptionUri()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_CAPTION_URI"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Caption;->getCaptionType()Lcom/samsung/android/allshare/Caption$CaptionType;

    move-result-object v3

    .line 1618
    invoke-virtual {v3}, Lcom/samsung/android/allshare/Caption$CaptionType;->enumToString()Ljava/lang/String;

    move-result-object v3

    .line 1617
    const-string v4, "BUNDLE_STRING_CAPTION_TYPE"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    const-string v3, "BUNDLE_STRING_CAPTION_LANGUAGE"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Caption;->getEncoding()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_CAPTION_ENCODING"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    new-instance v3, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v3}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1623
    .local v3, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_CONTROL_CAPTION"

    invoke-virtual {v3, v4}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1624
    invoke-virtual {v3, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1626
    iget-object v4, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v5, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v4, v3, v5}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 1627
    return-void

    .line 1590
    .end local v0    # "languageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "language":Ljava/lang/String;
    .end local v2    # "req_bundle":Landroid/os/Bundle;
    .end local v3    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    :cond_3
    :goto_0
    const-string v0, "controlCaption : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_4

    .line 1592
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    .line 1593
    invoke-interface {v0, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onControlCaptionResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1594
    :cond_4
    return-void
.end method

.method public blacklist getBundle()Landroid/os/Bundle;
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 658
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 660
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .line 1676
    const-string v0, "AVPlayerImpl"

    const-string v1, "getCaptionFilePathFromURI"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    iget-object v1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1682
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/IAllShareConnector;->getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1678
    :cond_1
    :goto_0
    const-string v1, "getCaptionFilePathFromURI : SERVICE_NOT_CONNECTED"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 650
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0

    .line 652
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 595
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceType;

    return-object v0

    .line 597
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getID()Ljava/lang/String;
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 642
    const-string v0, ""

    return-object v0

    .line 644
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIPAddress()Ljava/lang/String;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 610
    const-string v0, ""

    return-object v0

    .line 612
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIPAdress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 604
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIcon()Landroid/net/Uri;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 626
    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 628
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

    .line 633
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 636
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getIconList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMediaInfo()V
    .locals 4

    .line 1131
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1138
    :cond_0
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1139
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_MEDIA_INFO"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1141
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1142
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1145
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 1146
    return-void

    .line 1132
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_2

    .line 1133
    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetMediaInfoResponseReceived(Lcom/samsung/android/allshare/media/MediaInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 1135
    :cond_2
    return-void
.end method

.method public whitelist getModelName()Ljava/lang/String;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 587
    const-string v0, ""

    return-object v0

    .line 589
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMute()V
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 448
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_MUTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 449
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 453
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 454
    return-void

    .line 441
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    if-eqz v0, :cond_2

    .line 442
    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetMuteResponseReceived(ZLcom/samsung/android/allshare/ERROR;)V

    .line 444
    :cond_2
    return-void
.end method

.method public whitelist getNIC()Ljava/lang/String;
    .locals 1

    .line 1205
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 1206
    const-string v0, ""

    return-object v0

    .line 1208
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getNIC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 618
    const-string v0, ""

    return-object v0

    .line 620
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getP2pMacAddress()Ljava/lang/String;
    .locals 1

    .line 1401
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 1402
    const-string v0, ""

    return-object v0

    .line 1404
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getP2pMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPlayPosition()V
    .locals 4

    .line 480
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 488
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_PLAY_POSITION"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 489
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 491
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 494
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 495
    return-void

    .line 481
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_2

    .line 482
    const-wide/16 v1, -0x1

    sget-object v3, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetPlayPositionResponseReceived(JLcom/samsung/android/allshare/ERROR;)V

    .line 484
    :cond_2
    return-void
.end method

.method public whitelist getPlayerState()Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    .locals 6

    .line 499
    sget-object v0, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    .line 501
    .local v0, "state":Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    iget-object v1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 504
    :cond_0
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 505
    .local v1, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_AV_PLAYER_GET_PLAYER_STATE_SYNC"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 507
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 508
    .local v2, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 511
    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v3, v1}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v3

    .line 512
    .local v3, "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v3, :cond_1

    .line 513
    return-object v0

    .line 515
    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 517
    .local v4, "res_bundle":Landroid/os/Bundle;
    if-nez v4, :cond_2

    .line 518
    return-object v0

    .line 520
    :cond_2
    nop

    .line 521
    const-string v5, "BUNDLE_STRING_AV_PLAER_STATE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 520
    invoke-static {v5}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    move-result-object v0

    .line 522
    return-object v0

    .line 502
    .end local v1    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2    # "req_bundle":Landroid/os/Bundle;
    .end local v3    # "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v4    # "res_bundle":Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-object v0
.end method

.method public blacklist getPlaylistPlayer()Lcom/samsung/android/allshare/media/PlaylistPlayer;
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mPlaylistPlayer:Lcom/samsung/android/allshare/media/PlaylistPlayer;

    return-object v0
.end method

.method public whitelist getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 1
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 1443
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 1444
    const-string v0, ""

    return-object v0

    .line 1446
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/DeviceImpl;->getProductCapInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getScreenSharingInfo()Ljava/lang/String;
    .locals 1

    .line 1411
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 1412
    const-string v0, ""

    return-object v0

    .line 1414
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getScreenSharingInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;
    .locals 1
    .param p1, "infoType"    # Lcom/samsung/android/allshare/Device$InformationType;

    .line 1453
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 1454
    const-string v0, ""

    return-object v0

    .line 1456
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/DeviceImpl;->getScreenSharingInfo(Lcom/samsung/android/allshare/Device$InformationType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScreenSharingP2pMacAddr()Ljava/lang/String;
    .locals 1

    .line 1438
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getSecProductP2pMacAddr()Ljava/lang/String;
    .locals 1

    .line 1430
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 1431
    const-string v0, ""

    return-object v0

    .line 1433
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->getSecProductP2pMacAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getState()V
    .locals 4

    .line 1213
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1220
    :cond_0
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1221
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_PLAYER_STATE"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1223
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1224
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1227
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 1228
    return-void

    .line 1214
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_2

    .line 1215
    sget-object v1, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetStateResponseReceived(Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;Lcom/samsung/android/allshare/ERROR;)V

    .line 1217
    :cond_2
    return-void
.end method

.method public whitelist getVolume()V
    .locals 4

    .line 392
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 400
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_VOLUME"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 401
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 406
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 407
    return-void

    .line 393
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    if-eqz v0, :cond_2

    .line 394
    const/4 v1, -0x1

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onGetVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    .line 396
    :cond_2
    return-void
.end method

.method public blacklist isRedirectSupportable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1200
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->isSupportRedirect()Z

    move-result v0

    return v0
.end method

.method public whitelist isSeekableOnPaused()Z
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 1383
    const/4 v0, 0x0

    return v0

    .line 1385
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->isSeekableOnPaused()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupport360View()Z
    .locals 3

    .line 1660
    iget-boolean v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportMove360View:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportZoom360View:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportOrigin360View:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1661
    .local v0, "result":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupport360View is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AVPlayerImpl"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    return v0
.end method

.method public whitelist isSupportAspectRatio()Z
    .locals 3

    .line 1653
    iget-boolean v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportSetAspectRatio:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportGetAspectRatio:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1654
    .local v0, "result":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportAspectRatio is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AVPlayerImpl"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    return v0
.end method

.method public blacklist isSupportAudio()Z
    .locals 1

    .line 1155
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/allshare/AVPlayerImpl;->isSupportedByType(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isSupportCaptionControl()Z
    .locals 3

    .line 1667
    iget-boolean v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportControlCaption:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mSupportGetCaptionState:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1668
    .local v0, "result":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportCaptionControl is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AVPlayerImpl"

    invoke-static {v2, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    return v0
.end method

.method public whitelist isSupportDynamicBuffering()Z
    .locals 8

    .line 1245
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1249
    :cond_0
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1250
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "ACTION_AV_PLAYER_IS_SUPPORT_DYNAMIC_BUFFERING"

    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1252
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1253
    .local v2, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1256
    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v3, v0}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v3

    .line 1257
    .local v3, "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v3, :cond_1

    .line 1258
    return v1

    .line 1261
    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 1263
    .local v4, "res_bundle":Landroid/os/Bundle;
    if-nez v4, :cond_2

    .line 1264
    return v1

    .line 1266
    :cond_2
    const/4 v1, 0x0

    .line 1268
    .local v1, "result":Z
    :try_start_0
    const-string v5, "BUNDLE_BOOLEAN_SUPPORT_DYNAMIC_BUFFERING"

    .line 1269
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    .line 1272
    goto :goto_0

    .line 1270
    :catch_0
    move-exception v5

    .line 1271
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "AVPlayerImpl"

    const-string v7, "isSupportDynamicBuffering Exception"

    invoke-static {v6, v7, v5}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1273
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 1246
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "result":Z
    .end local v2    # "req_bundle":Landroid/os/Bundle;
    .end local v3    # "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v4    # "res_bundle":Landroid/os/Bundle;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist isSupportRedirect()Z
    .locals 9

    .line 1160
    const/4 v0, 0x0

    .line 1161
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1164
    :cond_0
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1165
    .local v1, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v3, "ACTION_AV_PLAYER_IS_SUPPORT_REDIRECT_SYNC"

    invoke-virtual {v1, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1167
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1168
    .local v3, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BUNDLE_STRING_ID"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-virtual {v1, v3}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1171
    iget-object v4, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v4, v1}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v4

    .line 1172
    .local v4, "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v4, :cond_1

    .line 1173
    return v2

    .line 1175
    :cond_1
    invoke-virtual {v4}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 1177
    .local v5, "res_bundle":Landroid/os/Bundle;
    if-nez v5, :cond_2

    .line 1178
    return v2

    .line 1180
    :cond_2
    const-string v6, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1181
    .local v6, "err":Ljava/lang/String;
    sget-object v7, Lcom/samsung/android/allshare/ERROR;->NOT_SUPPORTED_FRAMEWORK_VERSION:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v7}, Lcom/samsung/android/allshare/ERROR;->enumToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "AVPlayerImpl"

    if-eqz v7, :cond_3

    .line 1182
    const-string v7, "isRedirectSupportable() Exception : NOT_SUPPORTED_FRAMEWORK_VERSION"

    invoke-static {v8, v7}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    return v2

    .line 1188
    :cond_3
    :try_start_0
    const-string v2, "BUNDLE_BOOLEAN_SUPPORT_REDIRECT"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1191
    goto :goto_0

    .line 1189
    :catch_0
    move-exception v2

    .line 1190
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "isRedirectSupportable Exception"

    invoke-static {v8, v7, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1192
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v0

    .line 1162
    .end local v1    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v3    # "req_bundle":Landroid/os/Bundle;
    .end local v4    # "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v5    # "res_bundle":Landroid/os/Bundle;
    .end local v6    # "err":Ljava/lang/String;
    :cond_4
    :goto_1
    return v2
.end method

.method public whitelist isSupportVideo()Z
    .locals 1

    .line 1150
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/allshare/AVPlayerImpl;->isSupportedByType(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportedByType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 1689
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 1690
    const/4 v0, 0x0

    return v0

    .line 1692
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/DeviceImpl;->isSupportedByType(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isWholeHomeAudio()Z
    .locals 1

    .line 1390
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 1391
    const/4 v0, 0x0

    return v0

    .line 1393
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/allshare/DeviceImpl;->isWholeHomeAudio()Z

    move-result v0

    return v0
.end method

.method public whitelist move360View(FF)V
    .locals 4
    .param p1, "latitudeOffset"    # F
    .param p2, "longitudeOffset"    # F

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move360View to [latitudeOffset]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [longitudeOffset]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVPlayerImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1525
    :cond_0
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1526
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_AV_PLAYER_MOVE_360_VIEW"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1527
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1528
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    const-string v2, "BUNDLE_FLOATING_LATITUDE_OFFSET"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1530
    const-string v2, "BUNDLE_LONG_PROGRESS"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1532
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1534
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 1535
    return-void

    .line 1513
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string v0, "move360View : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_2

    .line 1515
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    .line 1516
    invoke-interface {v0, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onMove360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1517
    :cond_2
    return-void
.end method

.method public whitelist pause()V
    .locals 4

    .line 355
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "AVPlayerImpl"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pause "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 363
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PAUSE"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 364
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 365
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 368
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 369
    return-void

    .line 356
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string/jumbo v0, "pause fail : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_2

    .line 358
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPauseResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 359
    :cond_2
    return-void
.end method

.method public whitelist play(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V
    .locals 17
    .param p1, "item"    # Lcom/samsung/android/allshare/Item;
    .param p2, "contentInfo"    # Lcom/samsung/android/allshare/media/ContentInfo;

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v4, "AVPlayerImpl"

    if-eqz v3, :cond_14

    invoke-interface {v3}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 153
    :cond_0
    if-nez v1, :cond_2

    .line 154
    const-string/jumbo v3, "play item == null"

    invoke-static {v4, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v3, v0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v3, :cond_1

    .line 156
    sget-object v4, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v3, v1, v2, v4}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 158
    :cond_1
    return-void

    .line 162
    :cond_2
    iget-object v3, v0, Lcom/samsung/android/allshare/AVPlayerImpl;->mPlayingContentUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 163
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/samsung/android/allshare/AVPlayerImpl;->mContentChangedNotified:Z

    .line 165
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v3, "bundle":Landroid/os/Bundle;
    instance-of v5, v1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v5, :cond_3

    .line 167
    move-object v5, v1

    check-cast v5, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v5}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 170
    :cond_3
    const-string v5, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "mimeType":Ljava/lang/String;
    const-string v6, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "constructorKey":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Playing Content URI : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    if-nez v6, :cond_4

    .line 175
    const-string v7, "constructorKey == null"

    invoke-static {v4, v7}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v3

    goto/16 :goto_0

    .line 178
    :cond_4
    const-string v7, "WEB_CONTENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, " ] "

    const-string/jumbo v9, "play position - "

    const-string v10, " to "

    if-eqz v7, :cond_8

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "play WEB_CONTENT - "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " [ "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 179
    invoke-static {v4, v7}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_6

    .line 184
    const-string/jumbo v7, "uri == null"

    invoke-static {v4, v7}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v4, :cond_5

    .line 186
    sget-object v7, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v4, v1, v2, v7}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 188
    :cond_5
    return-void

    .line 191
    :cond_6
    if-eqz v2, :cond_7

    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_7
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl;->mPlayingContentUris:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v4, v1, v2, v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->playWebContent(Landroid/net/Uri;Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Ljava/lang/String;)V

    move-object/from16 v16, v3

    goto/16 :goto_0

    .line 197
    :cond_8
    const-string v7, "MEDIA_SERVER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "play MEDIA_SERVER - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    if-eqz v2, :cond_9

    .line 200
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_9
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl;->mPlayingContentUris:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/allshare/AVPlayerImpl;->playMediaContent(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V

    move-object/from16 v16, v3

    goto/16 :goto_0

    .line 205
    :cond_a
    const-string v7, "LOCAL_CONTENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v7

    .line 207
    .local v7, "uri":Landroid/net/Uri;
    const-string/jumbo v11, "play LOCAL_CONTENT : uri == null"

    if-nez v7, :cond_b

    .line 208
    invoke-static {v4, v11}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v8, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v4, v1, v2, v8}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 211
    return-void

    .line 214
    :cond_b
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 216
    .local v12, "scheme":Ljava/lang/String;
    const-string v13, "[ "

    if-eqz v12, :cond_f

    const-string v14, "file"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 217
    const-string v14, "BUNDLE_STRING_FILEPATH"

    invoke-virtual {v3, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 218
    .local v14, "filePath":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .end local v3    # "bundle":Landroid/os/Bundle;
    .local v16, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "play LOCAL_CONTENT file - "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-static {v4, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    if-nez v14, :cond_c

    .line 223
    invoke-static {v4, v11}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v3, v0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v4, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v3, v1, v2, v4}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 226
    return-void

    .line 229
    :cond_c
    invoke-static {v14}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->checkFilePathValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 230
    const-string/jumbo v3, "play  LOCAL_CONTENT: filePath is not valid"

    invoke-static {v4, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v3, v0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    sget-object v4, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v3, v1, v2, v4}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 233
    return-void

    .line 236
    :cond_d
    if-eqz v2, :cond_e

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 238
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-static {v4, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_e
    iget-object v3, v0, Lcom/samsung/android/allshare/AVPlayerImpl;->mPlayingContentUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-direct {v0, v14, v1, v2, v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->playLocalContent(Ljava/lang/String;Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Ljava/lang/String;)V

    .line 241
    .end local v14    # "filePath":Ljava/lang/String;
    goto/16 :goto_0

    .line 216
    .end local v16    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "bundle":Landroid/os/Bundle;
    :cond_f
    move-object/from16 v16, v3

    .line 241
    .end local v3    # "bundle":Landroid/os/Bundle;
    .restart local v16    # "bundle":Landroid/os/Bundle;
    if-eqz v12, :cond_11

    const-string v3, "content"

    invoke-virtual {v12, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "play LOCAL_CONTENT content - "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    invoke-static {v4, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    if-eqz v2, :cond_10

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 247
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-static {v4, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_10
    iget-object v3, v0, Lcom/samsung/android/allshare/AVPlayerImpl;->mPlayingContentUris:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->parseUriFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-direct {v0, v7, v1, v2, v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->playLocalContent(Landroid/net/Uri;Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_11
    iget-object v3, v0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v3, :cond_13

    .line 252
    sget-object v4, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v3, v1, v2, v4}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_0

    .line 205
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v12    # "scheme":Ljava/lang/String;
    .end local v16    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "bundle":Landroid/os/Bundle;
    :cond_12
    move-object/from16 v16, v3

    .line 258
    .end local v3    # "bundle":Landroid/os/Bundle;
    .restart local v16    # "bundle":Landroid/os/Bundle;
    :cond_13
    :goto_0
    return-void

    .line 146
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "constructorKey":Ljava/lang/String;
    .end local v16    # "bundle":Landroid/os/Bundle;
    :cond_14
    :goto_1
    const-string/jumbo v3, "play fail : SERVICE_NOT_CONNECTED"

    invoke-static {v4, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v3, v0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v3, :cond_15

    .line 148
    sget-object v4, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v3, v1, v2, v4}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 150
    :cond_15
    return-void
.end method

.method public whitelist prepare(Lcom/samsung/android/allshare/Item;)V
    .locals 5
    .param p1, "ai"    # Lcom/samsung/android/allshare/Item;

    .line 286
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "AVPlayerImpl"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    if-nez p1, :cond_1

    .line 292
    const-string/jumbo v0, "prepare Fail :  Item does not exist "

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void

    .line 296
    :cond_1
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 297
    .local v0, "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "ACTION_AV_PLAYER_PREPARE"

    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 298
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 299
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BUNDLE_STRING_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    instance-of v3, p1, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v3, :cond_2

    .line 302
    move-object v3, p1

    check-cast v3, Lcom/sec/android/allshare/iface/IBundleHolder;

    .line 303
    invoke-interface {v3}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 302
    const-string v4, "BUNDLE_PARCELABLE_ITEM"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 305
    :cond_2
    invoke-virtual {v0, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 307
    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v4, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v3, v0, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepare : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 309
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void

    .line 287
    .end local v0    # "cvm":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_3
    :goto_0
    const-string/jumbo v0, "prepare : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public blacklist removeEventHandler()V
    .locals 4

    .line 1238
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 1239
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 1238
    const-string v3, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    invoke-interface {v0, v3, v1, v2}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 1240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mIsSubscribed:Z

    .line 1241
    return-void
.end method

.method public whitelist requestAspectRatioState()V
    .locals 4

    .line 1489
    const-string v0, "AVPlayerImpl"

    const-string/jumbo v1, "requestAspectRatioState"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    iget-object v1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1498
    :cond_0
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1499
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_AV_PLAYER_GET_ASPECT_RATIO"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1500
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1501
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1505
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 1506
    return-void

    .line 1491
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string v1, "getAspectRatio : SERVICE_NOT_CONNECTED"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_2

    .line 1493
    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onAspectRatioStateResponseReceived(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    .line 1495
    :cond_2
    return-void
.end method

.method public whitelist requestCaptionState()V
    .locals 4

    .line 1632
    const-string v0, "AVPlayerImpl"

    const-string/jumbo v1, "requestCaptionState"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget-object v1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1641
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1642
    .local v0, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BUNDLE_STRING_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    new-instance v1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1645
    .local v1, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v2, "com.sec.android.allshare.action.ACTION_AV_PLAYER_GET_CAPTION_STATE"

    invoke-virtual {v1, v2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1646
    invoke-virtual {v1, v0}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1648
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 1649
    return-void

    .line 1634
    .end local v0    # "req_bundle":Landroid/os/Bundle;
    .end local v1    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    :cond_1
    :goto_0
    const-string v1, "getCaptionState : SERVICE_NOT_CONNECTED"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1635
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_2

    .line 1636
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onCaptionStateResponseReceived(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V

    .line 1638
    :cond_2
    return-void
.end method

.method public blacklist requestMobileToTV(Ljava/lang/String;I)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 1421
    const-string v0, "AVPlayerImpl"

    const-string/jumbo v1, "requestMobileToTV : call requestMobileToTV"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    if-nez v0, :cond_0

    .line 1423
    return-void

    .line 1425
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/allshare/DeviceImpl;->requestMobileToTV(Ljava/lang/String;I)V

    .line 1426
    return-void
.end method

.method public whitelist reset360View()V
    .locals 4

    .line 1568
    const-string v0, "AVPlayerImpl"

    const-string/jumbo v1, "reset360View"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    iget-object v1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1577
    :cond_0
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1578
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_AV_PLAYER_ORIGIN_360_VIEW"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1579
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1580
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1583
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 1584
    return-void

    .line 1570
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string/jumbo v1, "origin360View : SERVICE_NOT_CONNECTED"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_2

    .line 1572
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    .line 1573
    invoke-interface {v0, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onReset360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1574
    :cond_2
    return-void
.end method

.method public whitelist resume()V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "AVPlayerImpl"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 381
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_AV_PLAYER_RESUME"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 382
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 384
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 387
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 388
    return-void

    .line 374
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string/jumbo v0, "resume fail : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_2

    .line 376
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onResumeResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 377
    :cond_2
    return-void
.end method

.method public whitelist seek(J)V
    .locals 6
    .param p1, "p"    # J

    .line 334
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "AVPlayerImpl"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seek pos :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 342
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_AV_PLAYER_SEEK"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 343
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 345
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    .line 347
    .local v2, "miliTime":J
    const-string v4, "BUNDLE_LONG_POSITION"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 349
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 350
    iget-object v4, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v5, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v4, v0, v5}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 351
    return-void

    .line 335
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    .end local v2    # "miliTime":J
    :cond_1
    :goto_0
    const-string/jumbo v0, "seek fail : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_2

    .line 337
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onSeekResponseReceived(JLcom/samsung/android/allshare/ERROR;)V

    .line 338
    :cond_2
    return-void
.end method

.method public whitelist setAspectRatio(Ljava/lang/String;)V
    .locals 4
    .param p1, "aspectRatio"    # Ljava/lang/String;

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAspectRatio to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVPlayerImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1476
    :cond_0
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1477
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_AV_PLAYER_SET_ASPECT_RATIO"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1478
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1479
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    const-string v2, "BUNDLE_STRING_ASPECT_RATIO"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1484
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 1485
    return-void

    .line 1464
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string/jumbo v0, "setAspectRatio : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_2

    .line 1466
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    .line 1467
    invoke-interface {v0, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onSetAspectRatioResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1468
    :cond_2
    return-void
.end method

.method public blacklist setEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;)V
    .locals 4
    .param p1, "l"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;

    .line 566
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 571
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerEventListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerEventListener;

    .line 573
    iget-boolean v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mIsSubscribed:Z

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 574
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 575
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 574
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mIsSubscribed:Z

    goto :goto_0

    .line 577
    :cond_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 578
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 579
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 578
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mIsSubscribed:Z

    .line 582
    :cond_2
    :goto_0
    return-void

    .line 567
    :cond_3
    :goto_1
    const-string v0, "AVPlayerImpl"

    const-string/jumbo v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public whitelist setExtensionEventListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;)V
    .locals 4
    .param p1, "l"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;

    .line 546
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 551
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerExtensionEventListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionEventListener;

    .line 553
    iget-boolean v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mIsSubscribed:Z

    const-string v1, "com.sec.android.allshare.event.EVENT_DEVICE_SUBSCRIBE"

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 554
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 555
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 554
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->subscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)Z

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mIsSubscribed:Z

    goto :goto_0

    .line 557
    :cond_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 558
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mDeviceImpl:Lcom/samsung/android/allshare/DeviceImpl;

    .line 559
    invoke-virtual {v2}, Lcom/samsung/android/allshare/DeviceImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mEventHandler:Lcom/samsung/android/allshare/AllShareEventHandler;

    .line 558
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->unsubscribeAllShareEvent(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/allshare/AllShareEventHandler;)V

    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mIsSubscribed:Z

    .line 562
    :cond_2
    :goto_0
    return-void

    .line 547
    :cond_3
    :goto_1
    const-string v0, "AVPlayerImpl"

    const-string/jumbo v1, "setEventListener error! AllShareService is not connected"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public whitelist setExtensionResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    .line 540
    iput-object p1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    .line 542
    return-void
.end method

.method public whitelist setMute(Z)V
    .locals 4
    .param p1, "m"    # Z

    .line 458
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "AVPlayerImpl"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMute - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 468
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_SET_MUTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 469
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 471
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v2, "BUNDLE_BOOLEAN_MUTE"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 474
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 475
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 476
    return-void

    .line 459
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string/jumbo v0, "setMute fail : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    if-eqz v0, :cond_2

    .line 461
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetMuteResponseReceived(ZLcom/samsung/android/allshare/ERROR;)V

    .line 463
    :cond_2
    return-void
.end method

.method public whitelist setResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    .line 528
    iput-object p1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    .line 529
    return-void
.end method

.method public blacklist setVolume(I)V
    .locals 4
    .param p1, "level"    # I

    .line 411
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "AVPlayerImpl"

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 418
    :cond_0
    if-ltz p1, :cond_2

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 426
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVolume -level : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 428
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_SET_VOLUME"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 429
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 431
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v2, "BUNDLE_INT_VOLUME"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 435
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 436
    return-void

    .line 419
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_2
    :goto_0
    const-string/jumbo v0, "setVolume fail : level (INVALID_ARGUMENT)"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    if-eqz v0, :cond_3

    .line 421
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    .line 423
    :cond_3
    return-void

    .line 412
    :cond_4
    :goto_1
    const-string/jumbo v0, "setVolume fail : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    if-eqz v0, :cond_5

    .line 414
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    .line 416
    :cond_5
    return-void
.end method

.method public whitelist setVolumeResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    .line 533
    iput-object p1, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    .line 535
    return-void
.end method

.method public whitelist skipDynamicBuffering()V
    .locals 4

    .line 1280
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1284
    :cond_0
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1285
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "ACTION_AV_PLAYER_SKIP_DYNAMIC_BUFFERING"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1287
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1288
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1291
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 1292
    return-void

    .line 1281
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist stop()V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const-string v1, "AVPlayerImpl"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 323
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_AV_PLAYER_STOP"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 324
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 329
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 330
    return-void

    .line 316
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string/jumbo v0, "stop fail : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    if-eqz v0, :cond_2

    .line 318
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v0, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 319
    :cond_2
    return-void
.end method

.method public whitelist zoom360View(F)V
    .locals 4
    .param p1, "ScaleFactor"    # F

    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "zoom360View to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVPlayerImpl"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1554
    :cond_0
    new-instance v0, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 1555
    .local v0, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v1, "com.sec.android.allshare.action.ACTION_AV_PLAYER_ZOOM_360_VIEW"

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 1556
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1557
    .local v1, "req_bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/AVPlayerImpl;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    const-string v2, "BUNDLE_FLOATING_SCALEFACTOR"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1560
    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 1562
    iget-object v2, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    iget-object v3, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAllShareRespHandler:Lcom/samsung/android/allshare/AllShareResponseHandler;

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMAsync(Lcom/sec/android/allshare/iface/CVMessage;Lcom/samsung/android/allshare/AllShareResponseHandler;)J

    .line 1563
    return-void

    .line 1542
    .end local v0    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v1    # "req_bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string/jumbo v0, "zoom360View : SERVICE_NOT_CONNECTED"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    iget-object v0, p0, Lcom/samsung/android/allshare/AVPlayerImpl;->mAVPlayerExtensionResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    if-eqz v0, :cond_2

    .line 1544
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    .line 1545
    invoke-interface {v0, v1}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onZoom360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1546
    :cond_2
    return-void
.end method
