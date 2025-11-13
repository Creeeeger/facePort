.class Lcom/samsung/android/media/SemMediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private blacklist mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

.field final synthetic blacklist this$0:Lcom/samsung/android/media/SemMediaPlayer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSemMediaPlayer(Lcom/samsung/android/media/SemMediaPlayer$EventHandler;)Lcom/samsung/android/media/SemMediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmNativeContext(Lcom/samsung/android/media/SemMediaPlayer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "SemMediaPlayer"

    const-string v1, "semmediaplayer went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    const-string v0, "SemMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :sswitch_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmSubtitleDataListenerDisabled(Lcom/samsung/android/media/SemMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmExtSubtitleDataListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmExtSubtitleDataHandler(Lcom/samsung/android/media/SemMediaPlayer;)Landroid/os/Handler;

    move-result-object v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/Parcel;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Parcel;

    new-instance v3, Landroid/media/SubtitleData;

    invoke-direct {v3, v2}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v4}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmIntSubtitleDataListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v4, v5, v3}, Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;->onSubtitleData(Lcom/samsung/android/media/SemMediaPlayer;Landroid/media/SubtitleData;)V

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v0, v4, v3}, Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;->onSubtitleData(Lcom/samsung/android/media/SemMediaPlayer;Landroid/media/SubtitleData;)V

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/samsung/android/media/SemMediaPlayer$EventHandler$1;

    invoke-direct {v4, p0, v0, v3}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler$1;-><init>(Lcom/samsung/android/media/SemMediaPlayer$EventHandler;Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;Landroid/media/SubtitleData;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$mscanInternalSubtitleTracks(Lcom/samsung/android/media/SemMediaPlayer;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v3, 0x64

    const/16 v4, -0x3f2

    invoke-virtual {p0, v3, v1, v4, v2}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    :pswitch_1
    const/16 v0, 0x322

    iput v0, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmSubtitleController(Lcom/samsung/android/media/SemMediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmSubtitleController(Lcom/samsung/android/media/SemMediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnInfoListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_10

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x2ade

    if-ne v1, v2, :cond_5

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Parcel;

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    sget-object v3, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

    invoke-static {v2, v3}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fputmSuperSlowInfo(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;->onInfo(Lcom/samsung/android/media/SemMediaPlayer;II)Z

    goto/16 :goto_4

    :sswitch_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnErrorListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v4, v5}, Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;->onError(Lcom/samsung/android/media/SemMediaPlayer;II)Z

    move-result v0

    :cond_6
    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v2}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnPlaybackCompleteListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v2, v4}, Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;->onPlaybackComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v2, v3}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$mstayAwake(Lcom/samsung/android/media/SemMediaPlayer;Z)V

    goto/16 :goto_4

    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnTimedTextListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_4

    :cond_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;->onTimedText(Lcom/samsung/android/media/SemMediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_4

    :cond_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Parcel;

    if-eqz v1, :cond_10

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    new-instance v2, Landroid/media/TimedText;

    invoke-direct {v2, v1}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v0, v3, v2}, Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;->onTimedText(Lcom/samsung/android/media/SemMediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_4

    :sswitch_4
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmTimeProvider(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->onNotifyTime()V

    goto/16 :goto_4

    :sswitch_5
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmTimeProvider(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    move-result-object v0

    if-eqz v0, :cond_b

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    if-ne v2, v4, :cond_a

    goto :goto_3

    :cond_a
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->onPaused(Z)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_b
    goto/16 :goto_4

    :catch_1
    move-exception v0

    const-string v1, "SemMediaPlayer"

    const-string v2, "handleMessage MEDIA_PAUSED e : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :sswitch_6
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnVideoSizeChangedListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/samsung/android/media/SemMediaPlayer;II)V

    goto/16 :goto_4

    :sswitch_7
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    :cond_c
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmTimeProvider(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->onSeekComplete(Lcom/samsung/android/media/SemMediaPlayer;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_d
    goto :goto_4

    :catch_2
    move-exception v1

    const-string v2, "SemMediaPlayer"

    const-string v3, "handleMessage MEDIA_SEEK_COMPLETE e : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :sswitch_8
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnBufferingUpdateListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/samsung/android/media/SemMediaPlayer;I)V

    goto :goto_4

    :sswitch_9
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnPlaybackCompleteListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;->onPlaybackComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1, v3}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$mstayAwake(Lcom/samsung/android/media/SemMediaPlayer;Z)V

    goto :goto_4

    :sswitch_a
    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Parcel;

    if-eqz v1, :cond_f

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    sget-object v2, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$mpopulateInbandTracks(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;->onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    :cond_10
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_9
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x7 -> :sswitch_5
        0x62 -> :sswitch_4
        0x63 -> :sswitch_3
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x322
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
