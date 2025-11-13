.class public Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;
.super Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;
.source "ITvInteractiveAppSessionWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;
    }
.end annotation


# static fields
.field private static final blacklist DO_CREATE_BI_INTERACTIVE_APP:I = 0x5

.field private static final blacklist DO_CREATE_MEDIA_VIEW:I = 0x1b

.field private static final blacklist DO_DESTROY_BI_INTERACTIVE_APP:I = 0x6

.field private static final blacklist DO_DISPATCH_SURFACE_CHANGED:I = 0x18

.field private static final blacklist DO_NOTIFY_AD_BUFFER_CONSUMED:I = 0x20

.field private static final blacklist DO_NOTIFY_AD_RESPONSE:I = 0x1a

.field private static final blacklist DO_NOTIFY_BROADCAST_INFO_RESPONSE:I = 0x19

.field private static final blacklist DO_NOTIFY_CONTENT_ALLOWED:I = 0x14

.field private static final blacklist DO_NOTIFY_CONTENT_BLOCKED:I = 0x15

.field private static final blacklist DO_NOTIFY_ERROR:I = 0xe

.field private static final blacklist DO_NOTIFY_RECORDING_CONNECTION_FAILED:I = 0x29

.field private static final blacklist DO_NOTIFY_RECORDING_DISCONNECTED:I = 0x2a

.field private static final blacklist DO_NOTIFY_RECORDING_ERROR:I = 0x2c

.field private static final blacklist DO_NOTIFY_RECORDING_SCHEDULED:I = 0x2d

.field private static final blacklist DO_NOTIFY_RECORDING_STARTED:I = 0x1e

.field private static final blacklist DO_NOTIFY_RECORDING_STOPPED:I = 0x1f

.field private static final blacklist DO_NOTIFY_RECORDING_TUNED:I = 0x2b

.field private static final blacklist DO_NOTIFY_SIGNAL_STRENGTH:I = 0x16

.field private static final blacklist DO_NOTIFY_TIME_SHIFT_CURRENT_POSITION_CHANGED:I = 0x27

.field private static final blacklist DO_NOTIFY_TIME_SHIFT_PLAYBACK_PARAMS:I = 0x24

.field private static final blacklist DO_NOTIFY_TIME_SHIFT_START_POSITION_CHANGED:I = 0x26

.field private static final blacklist DO_NOTIFY_TIME_SHIFT_STATUS_CHANGED:I = 0x25

.field private static final blacklist DO_NOTIFY_TRACKS_CHANGED:I = 0x11

.field private static final blacklist DO_NOTIFY_TRACK_SELECTED:I = 0x10

.field private static final blacklist DO_NOTIFY_TUNED:I = 0xf

.field private static final blacklist DO_NOTIFY_TV_MESSAGE:I = 0x21

.field private static final blacklist DO_NOTIFY_VIDEO_AVAILABLE:I = 0x12

.field private static final blacklist DO_NOTIFY_VIDEO_FREEZE_UPDATED:I = 0x31

.field private static final blacklist DO_NOTIFY_VIDEO_UNAVAILABLE:I = 0x13

.field private static final blacklist DO_RELAYOUT_MEDIA_VIEW:I = 0x1c

.field private static final blacklist DO_RELEASE:I = 0x1

.field private static final blacklist DO_REMOVE_MEDIA_VIEW:I = 0x1d

.field private static final blacklist DO_RESET_INTERACTIVE_APP:I = 0x4

.field private static final blacklist DO_SEND_AVAILABLE_SPEEDS:I = 0x2f

.field private static final blacklist DO_SEND_CERTIFICATE:I = 0x32

.field private static final blacklist DO_SEND_CURRENT_CHANNEL_LCN:I = 0x9

.field private static final blacklist DO_SEND_CURRENT_CHANNEL_URI:I = 0x8

.field private static final blacklist DO_SEND_CURRENT_TV_INPUT_ID:I = 0xc

.field private static final blacklist DO_SEND_CURRENT_VIDEO_BOUNDS:I = 0x28

.field private static final blacklist DO_SEND_RECORDING_INFO:I = 0x22

.field private static final blacklist DO_SEND_RECORDING_INFO_LIST:I = 0x23

.field private static final blacklist DO_SEND_SELECTED_TRACK_INFO:I = 0x30

.field private static final blacklist DO_SEND_SIGNING_RESULT:I = 0xd

.field private static final blacklist DO_SEND_STREAM_VOLUME:I = 0xa

.field private static final blacklist DO_SEND_TIME_SHIFT_MODE:I = 0x2e

.field private static final blacklist DO_SEND_TRACK_INFO_LIST:I = 0xb

.field private static final blacklist DO_SET_SURFACE:I = 0x17

.field private static final blacklist DO_SET_TELETEXT_APP_ENABLED:I = 0x7

.field private static final blacklist DO_START_INTERACTIVE_APP:I = 0x2

.field private static final blacklist DO_STOP_INTERACTIVE_APP:I = 0x3

.field private static final blacklist EXECUTE_MESSAGE_TIMEOUT_LONG_MILLIS:I = 0x1388

.field private static final blacklist EXECUTE_MESSAGE_TIMEOUT_SHORT_MILLIS:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "ITvInteractiveAppSessionWrapper"


# instance fields
.field private final blacklist mCaller:Lcom/android/internal/os/HandlerCaller;

.field private blacklist mChannel:Landroid/view/InputChannel;

.field private blacklist mReceiver:Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

.field private blacklist mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSessionImpl(Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;)Landroid/media/tv/interactive/TvInteractiveAppService$Session;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/view/InputChannel;)V
    .locals 3

    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;-><init>()V

    iput-object p2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iput-object p3, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz p3, :cond_0

    new-instance v0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p3, v1}, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;-><init>(Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mReceiver:Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist destroyBiInteractiveApp(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist dispatchSurfaceChanged(III)V
    .locals 7

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x18

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIII(IIIII)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist executeMessage(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->what:I

    const-string v3, "ITvInteractiveAppSessionWrapper"

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendCertificate(Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyVideoFreezeUpdated(Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendSelectedTrackInfo(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [F

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendAvailableSpeeds([F)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendTimeShiftMode(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyRecordingScheduled(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyRecordingError(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyRecordingTuned(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyRecordingDisconnected(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyRecordingConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendCurrentVideoBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTimeShiftStartPositionChanged(Ljava/lang/String;J)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTimeShiftStatusChanged(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_e
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/media/PlaybackParams;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTimeShiftPlaybackParams(Landroid/media/PlaybackParams;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendTvRecordingInfoList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/TvRecordingInfo;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendTvRecordingInfo(Landroid/media/tv/TvRecordingInfo;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTvMessage(ILandroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_12
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/AdBuffer;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyAdBufferConsumed(Landroid/media/tv/AdBuffer;)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyRecordingStopped(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyRecordingStarted(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_15
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->removeMediaView(Z)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->relayoutMediaView(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_18
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/AdResponse;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyAdResponse(Landroid/media/tv/AdResponse;)V

    goto/16 :goto_0

    :pswitch_19
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/BroadcastInfoResponse;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    goto/16 :goto_0

    :pswitch_1a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget v5, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->dispatchSurfaceChanged(III)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/Surface;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->setSurface(Landroid/view/Surface;)V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifySignalStrength(I)V

    goto/16 :goto_0

    :pswitch_1d
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/TvContentRating;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyContentBlocked(Landroid/media/tv/TvContentRating;)V

    goto/16 :goto_0

    :pswitch_1e
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyContentAllowed()V

    goto/16 :goto_0

    :pswitch_1f
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyVideoUnavailable(I)V

    goto/16 :goto_0

    :pswitch_20
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyVideoAvailable()V

    goto/16 :goto_0

    :pswitch_21
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTracksChanged(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_22
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTrackSelected(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_23
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTuned(Landroid/net/Uri;)V

    goto/16 :goto_0

    :pswitch_24
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_25
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, [B

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendSigningResult(Ljava/lang/String;[B)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_26
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendCurrentTvInputId(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_27
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendTrackInfoList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_28
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendStreamVolume(F)V

    goto/16 :goto_0

    :pswitch_29
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendCurrentChannelLcn(I)V

    goto :goto_0

    :pswitch_2a
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendCurrentChannelUri(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_2b
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->setTeletextAppEnabled(Z)V

    goto :goto_0

    :pswitch_2c
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->destroyBiInteractiveApp(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :pswitch_2e
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->resetInteractiveApp()V

    goto :goto_0

    :pswitch_2f
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->stopInteractiveApp()V

    goto :goto_0

    :pswitch_30
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->startInteractiveApp()V

    goto :goto_0

    :pswitch_31
    iget-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mReceiver:Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mReceiver:Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

    invoke-virtual {v4}, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;->dispose()V

    iput-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mReceiver:Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

    :cond_1
    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->dispose()V

    iput-object v2, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mChannel:Landroid/view/InputChannel;

    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling message ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") took too long time (duration="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "ms)"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist notifyAdBufferConsumed(Landroid/media/tv/AdBuffer;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyAdResponse(Landroid/media/tv/AdResponse;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyContentAllowed()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyContentBlocked(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyRecordingConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x29

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyRecordingDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyRecordingError(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyRecordingScheduled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyRecordingStarted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyRecordingStopped(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyRecordingTuned(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifySignalStrength(I)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x16

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyTimeShiftPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x24

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyTimeShiftStartPositionChanged(Ljava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x26

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyTimeShiftStatusChanged(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyTrackSelected(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyTracksChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyTuned(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyTvMessage(ILandroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x21

    invoke-virtual {v1, v3, v2, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyVideoAvailable()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyVideoFreezeUpdated(Z)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x31

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyVideoUnavailable(I)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x13

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist relayoutMediaView(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist release()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->scheduleMediaViewCleanup()V

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist removeMediaView()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist resetInteractiveApp()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendAvailableSpeeds([F)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendCertificate(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v1, v3, p1, v2, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendCurrentChannelLcn(I)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendCurrentChannelUri(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendCurrentTvInputId(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendCurrentVideoBounds(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x28

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendSelectedTrackInfo(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x30

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendSigningResult(Ljava/lang/String;[B)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendStreamVolume(F)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendTimeShiftMode(I)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendTrackInfoList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendTvRecordingInfo(Landroid/media/tv/TvRecordingInfo;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x22

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendTvRecordingInfoList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvRecordingInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x23

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setSurface(Landroid/view/Surface;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setTeletextAppEnabled(Z)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist startInteractiveApp()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist stopInteractiveApp()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method
