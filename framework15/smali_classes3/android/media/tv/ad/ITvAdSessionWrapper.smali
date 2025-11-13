.class public Landroid/media/tv/ad/ITvAdSessionWrapper;
.super Landroid/media/tv/ad/ITvAdSession$Stub;
.source "ITvAdSessionWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;
    }
.end annotation


# static fields
.field private static final blacklist DO_CREATE_MEDIA_VIEW:I = 0x4

.field private static final blacklist DO_DISPATCH_SURFACE_CHANGED:I = 0x3

.field private static final blacklist DO_NOTIFY_ERROR:I = 0xf

.field private static final blacklist DO_NOTIFY_INPUT_SESSION_DATA:I = 0x11

.field private static final blacklist DO_NOTIFY_TV_MESSAGE:I = 0x10

.field private static final blacklist DO_RELAYOUT_MEDIA_VIEW:I = 0x5

.field private static final blacklist DO_RELEASE:I = 0x1

.field private static final blacklist DO_REMOVE_MEDIA_VIEW:I = 0x6

.field private static final blacklist DO_RESET_AD_SERVICE:I = 0x9

.field private static final blacklist DO_SEND_CURRENT_CHANNEL_URI:I = 0xb

.field private static final blacklist DO_SEND_CURRENT_TV_INPUT_ID:I = 0xd

.field private static final blacklist DO_SEND_CURRENT_VIDEO_BOUNDS:I = 0xa

.field private static final blacklist DO_SEND_SIGNING_RESULT:I = 0xe

.field private static final blacklist DO_SEND_TRACK_INFO_LIST:I = 0xc

.field private static final blacklist DO_SET_SURFACE:I = 0x2

.field private static final blacklist DO_START_AD_SERVICE:I = 0x7

.field private static final blacklist DO_STOP_AD_SERVICE:I = 0x8

.field private static final blacklist EXECUTE_MESSAGE_TIMEOUT_LONG_MILLIS:I = 0x1388

.field private static final blacklist EXECUTE_MESSAGE_TIMEOUT_SHORT_MILLIS:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "ITvAdSessionWrapper"


# instance fields
.field private final blacklist mCaller:Lcom/android/internal/os/HandlerCaller;

.field private blacklist mChannel:Landroid/view/InputChannel;

.field private blacklist mReceiver:Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;

.field private blacklist mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSessionImpl(Landroid/media/tv/ad/ITvAdSessionWrapper;)Landroid/media/tv/ad/TvAdService$Session;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/media/tv/ad/TvAdService$Session;Landroid/view/InputChannel;)V
    .locals 3

    invoke-direct {p0}, Landroid/media/tv/ad/ITvAdSession$Stub;-><init>()V

    iput-object p2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iput-object p3, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz p3, :cond_0

    new-instance v0, Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p3, v1}, Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;-><init>(Landroid/media/tv/ad/ITvAdSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mReceiver:Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist dispatchSurfaceChanged(III)V
    .locals 7

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x3

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

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->what:I

    const-string v3, "ITvAdSessionWrapper"

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

    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/ad/TvAdService$Session;->notifyTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/ad/TvAdService$Session;->notifyTvMessage(ILandroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/ad/TvAdService$Session;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, [B

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/ad/TvAdService$Session;->sendSigningResult(Ljava/lang/String;[B)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/media/tv/ad/TvAdService$Session;->sendCurrentTvInputId(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2, v4}, Landroid/media/tv/ad/TvAdService$Session;->sendTrackInfoList(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/media/tv/ad/TvAdService$Session;->sendCurrentChannelUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/media/tv/ad/TvAdService$Session;->sendCurrentVideoBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    invoke-virtual {v2}, Landroid/media/tv/ad/TvAdService$Session;->resetAdService()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    invoke-virtual {v2}, Landroid/media/tv/ad/TvAdService$Session;->stopAdService()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    invoke-virtual {v2}, Landroid/media/tv/ad/TvAdService$Session;->startAdService()V

    goto/16 :goto_0

    :pswitch_b
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/tv/ad/TvAdService$Session;->removeMediaView(Z)V

    goto :goto_0

    :pswitch_c
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/media/tv/ad/TvAdService$Session;->relayoutMediaView(Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/ad/TvAdService$Session;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :pswitch_e
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

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

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/tv/ad/TvAdService$Session;->dispatchSurfaceChanged(III)V

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :pswitch_f
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/Surface;

    invoke-virtual {v2, v4}, Landroid/media/tv/ad/TvAdService$Session;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :pswitch_10
    iget-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    invoke-virtual {v2}, Landroid/media/tv/ad/TvAdService$Session;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mReceiver:Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mReceiver:Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;

    invoke-virtual {v4}, Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;->dispose()V

    iput-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mReceiver:Landroid/media/tv/ad/ITvAdSessionWrapper$TvAdEventReceiver;

    :cond_1
    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->dispose()V

    iput-object v2, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mChannel:Landroid/view/InputChannel;

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

    :pswitch_data_0
    .packed-switch 0x1
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

.method public blacklist notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist notifyTvMessage(ILandroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist relayoutMediaView(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist release()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mSessionImpl:Landroid/media/tv/ad/TvAdService$Session;

    invoke-virtual {v0}, Landroid/media/tv/ad/TvAdService$Session;->scheduleMediaViewCleanup()V

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist removeMediaView()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist resetAdService()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendCurrentChannelUri(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendCurrentTvInputId(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendCurrentVideoBounds(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist sendSigningResult(Ljava/lang/String;[B)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

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

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setSurface(Landroid/view/Surface;)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist startAdService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist stopAdService()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ad/ITvAdSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method
