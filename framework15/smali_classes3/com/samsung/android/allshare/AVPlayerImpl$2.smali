.class Lcom/samsung/android/allshare/AVPlayerImpl$2;
.super Lcom/samsung/android/allshare/AllShareResponseHandler;
.source "AVPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/AVPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/AVPlayerImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/AVPlayerImpl;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private blacklist notifyPlaybackEvent(Landroid/os/Bundle;Lcom/samsung/android/allshare/ERROR;)V
    .locals 12

    const-string v0, "BUNDLE_PARCELABLE_ITEM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    nop

    const-string v1, "BUNDLE_LONG_CONTENT_INFO_STARTINGPOSITION"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    new-instance v3, Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    invoke-direct {v3}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;-><init>()V

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->setStartingPosition(J)Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->build()Lcom/samsung/android/allshare/media/ContentInfo;

    move-result-object v4

    invoke-static {v0}, Lcom/samsung/android/allshare/ItemCreator;->fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;

    move-result-object v5

    nop

    const-string v6, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v7, "WEB_CONTENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    new-instance v7, Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    invoke-direct {v7}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->setStartingPosition(J)Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    invoke-virtual {v7}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->build()Lcom/samsung/android/allshare/media/ContentInfo;

    move-result-object v4

    :cond_0
    const-string v7, "AVPlayerImpl"

    if-nez v5, :cond_1

    const-string/jumbo v8, "notifyPlaybackEvent : item is null"

    invoke-static {v7, v8}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v7}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v7, v5, v4, v8}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_1

    :cond_1
    const-string/jumbo v8, "notifyPlaybackEvent : "

    if-eqz v4, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " position["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v7}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v7

    invoke-interface {v7, v5, v4, p2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v1, :cond_f

    if-nez v2, :cond_0

    goto/16 :goto_c

    :cond_0
    const-string v3, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v3

    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_URI"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY"

    const-string v7, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_URI"

    const-string v8, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_FILEPATH"

    const-string v9, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_FILEPATH_WITH_METADATA"

    const/4 v10, 0x0

    if-nez v5, :cond_1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    sget-object v5, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v3, v5}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5, v10}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fputmContentChangedNotified(Lcom/samsung/android/allshare/AVPlayerImpl;Z)V

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmPlayingContentUris(Lcom/samsung/android/allshare/AVPlayerImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_3
    :goto_0
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v5

    const/4 v11, 0x4

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, -0x1

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_4
    goto/16 :goto_1

    :sswitch_0
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_WEB_CONTENTS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v11

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_PLAY_POSITION"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0xa

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_PLAYER_STATE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0xc

    goto/16 :goto_2

    :sswitch_3
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PAUSE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x8

    goto :goto_2

    :sswitch_4
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_STOP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v12

    goto :goto_2

    :sswitch_5
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_SEEK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x7

    goto :goto_2

    :sswitch_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v10

    goto :goto_2

    :sswitch_7
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v13

    goto :goto_2

    :sswitch_8
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v14

    goto :goto_2

    :sswitch_9
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v15

    goto :goto_2

    :sswitch_a
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_MEDIA_INFO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0xb

    goto :goto_2

    :sswitch_b
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_RESUME"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x9

    goto :goto_2

    :sswitch_c
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move/from16 v4, v16

    goto :goto_2

    :goto_1
    move/from16 v4, v17

    :goto_2
    const-string v5, "BUNDLE_LONG_POSITION"

    packed-switch v4, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string v4, "BUNDLE_STRING_AV_PLAER_STATE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetStateResponseReceived(Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_3

    :pswitch_1
    const/4 v4, 0x0

    sget-object v5, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v5, v3}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Lcom/samsung/android/allshare/MediaInfoImpl;

    invoke-direct {v5, v2}, Lcom/samsung/android/allshare/MediaInfoImpl;-><init>(Landroid/os/Bundle;)V

    move-object v4, v5

    :cond_5
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetMediaInfoResponseReceived(Lcom/samsung/android/allshare/media/MediaInfo;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v6

    invoke-interface {v6, v4, v5, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetPlayPositionResponseReceived(JLcom/samsung/android/allshare/ERROR;)V

    goto :goto_3

    :pswitch_3
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onResumeResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_3

    :pswitch_4
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPauseResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v6

    invoke-interface {v6, v4, v5, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onSeekResponseReceived(JLcom/samsung/android/allshare/ERROR;)V

    goto :goto_3

    :pswitch_6
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_3

    :pswitch_7
    invoke-direct {v0, v2, v3}, Lcom/samsung/android/allshare/AVPlayerImpl$2;->notifyPlaybackEvent(Landroid/os/Bundle;Lcom/samsung/android/allshare/ERROR;)V

    nop

    :cond_6
    :goto_3
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_7
    goto :goto_4

    :sswitch_d
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_SET_VOLUME"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move/from16 v4, v16

    goto :goto_5

    :sswitch_e
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_MUTE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v15

    goto :goto_5

    :sswitch_f
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_VOLUME"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v10

    goto :goto_5

    :sswitch_10
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_SET_MUTE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v14

    goto :goto_5

    :goto_4
    move/from16 v4, v17

    :goto_5
    const-string v5, "BUNDLE_BOOLEAN_MUTE"

    const-string v6, "BUNDLE_INT_VOLUME"

    packed-switch v4, :pswitch_data_1

    goto :goto_6

    :pswitch_8
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetMuteResponseReceived(ZLcom/samsung/android/allshare/ERROR;)V

    goto :goto_6

    :pswitch_9
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onGetMuteResponseReceived(ZLcom/samsung/android/allshare/ERROR;)V

    goto :goto_6

    :pswitch_a
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    goto :goto_6

    :pswitch_b
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onGetVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    nop

    :cond_8
    :goto_6
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    :cond_9
    goto :goto_7

    :sswitch_11
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_SET_ASPECT_RATIO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_8

    :sswitch_12
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_GET_CAPTION_STATE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v10, v12

    goto :goto_8

    :sswitch_13
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_ZOOM_360_VIEW"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v10, v14

    goto :goto_8

    :sswitch_14
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_GET_ASPECT_RATIO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move/from16 v10, v16

    goto :goto_8

    :sswitch_15
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_CONTROL_CAPTION"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v10, v13

    goto :goto_8

    :sswitch_16
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_ORIGIN_360_VIEW"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v10, v11

    goto :goto_8

    :sswitch_17
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_MOVE_360_VIEW"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v10, v15

    goto :goto_8

    :goto_7
    move/from16 v10, v17

    :goto_8
    const-string v4, "AVPlayerImpl"

    packed-switch v10, :pswitch_data_2

    goto/16 :goto_b

    :pswitch_c
    nop

    const-string v5, "BUNDLE_STRING_CAPTION_CAPTIONS"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    const-string v6, "BUNDLE_STRING_CAPTION_ENABLEDCAPTIONS"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/samsung/android/allshare/Caption;->parseCaption(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6}, Lcom/samsung/android/allshare/Caption;->parseCaption(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_b

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/allshare/Caption;

    iget-object v13, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Caption;->getCaptionUri()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/allshare/AVPlayerImpl;->getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_a

    invoke-virtual {v12, v13}, Lcom/samsung/android/allshare/Caption;->setCaptionUri(Ljava/lang/String;)V

    :cond_a
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_AV_PLAYER_GET_CAPTION_STATE : [available caption]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Caption;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    if-eqz v8, :cond_d

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/allshare/Caption;

    iget-object v13, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Caption;->getCaptionUri()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/allshare/AVPlayerImpl;->getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c

    invoke-virtual {v12, v13}, Lcom/samsung/android/allshare/Caption;->setCaptionUri(Ljava/lang/String;)V

    :cond_c
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_AV_PLAYER_GET_CAPTION_STATE : [enabled caption]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Caption;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_d
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    invoke-interface {v4, v9, v10, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onCaptionStateResponseReceived(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_b

    :pswitch_d
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onControlCaptionResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_b

    :pswitch_e
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onReset360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_b

    :pswitch_f
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onZoom360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_b

    :pswitch_10
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onMove360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_b

    :pswitch_11
    nop

    const-string v5, "BUNDLE_STRING_ASPECT_RATIO"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_AV_PLAYER_GET_ASPECT_RATIO : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    invoke-interface {v4, v5, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onAspectRatioStateResponseReceived(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_b

    :pswitch_12
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onSetAspectRatioResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    nop

    :cond_e
    :goto_b
    return-void

    :cond_f
    :goto_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d8f058e -> :sswitch_c
        -0x46bcb307 -> :sswitch_b
        -0x30970672 -> :sswitch_a
        -0x7b77c7c -> :sswitch_9
        -0x795bdc5 -> :sswitch_8
        -0x6493073 -> :sswitch_7
        0x124dd700 -> :sswitch_6
        0x124f1a44 -> :sswitch_5
        0x124f53ce -> :sswitch_4
        0x3768538a -> :sswitch_3
        0x3f7c3598 -> :sswitch_2
        0x5da5b1b8 -> :sswitch_1
        0x65f3faa4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x317ce26e -> :sswitch_10
        -0x2a3b9921 -> :sswitch_f
        -0x100afce2 -> :sswitch_e
        0x4935b453 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x79fd1c27 -> :sswitch_17
        -0x6ce3b8dc -> :sswitch_16
        -0x665f3a88 -> :sswitch_15
        -0x3d761e87 -> :sswitch_14
        0x32b4de17 -> :sswitch_13
        0x379faf23 -> :sswitch_12
        0x556047ed -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
