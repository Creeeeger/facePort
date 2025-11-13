.class final Landroid/view/Choreographer$FrameDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "Choreographer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameDisplayEventReceiver"
.end annotation


# instance fields
.field private greylist-max-o mFrame:I

.field private greylist-max-o mHavePendingVsync:Z

.field private blacklist mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

.field private greylist-max-o mTimestampNanos:J

.field final synthetic blacklist this$0:Landroid/view/Choreographer;


# direct methods
.method public constructor blacklist <init>(Landroid/view/Choreographer;Landroid/os/Looper;I)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "vsyncSource"    # I

    .line 1213
    iput-object p1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    .line 1214
    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;II)V

    .line 1211
    new-instance p1, Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {p1}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>()V

    iput-object p1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 1215
    return-void
.end method


# virtual methods
.method public blacklist onVsync(JJILandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .locals 8
    .param p1, "timestampNanos"    # J
    .param p3, "physicalDisplayId"    # J
    .param p5, "frame"    # I
    .param p6, "vsyncEventData"    # Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 1244
    const-wide/16 v0, 0x8

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Choreographer#onVsync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1247
    invoke-virtual {p6}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v3

    iget-wide v3, v3, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1245
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1254
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1255
    .local v2, "now":J
    cmp-long v4, p1, v2

    const-string v5, "Choreographer"

    if-lez v4, :cond_1

    .line 1256
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Frame time is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, p1, v2

    long-to-float v6, v6

    const v7, 0x358637bd    # 1.0E-6f

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ms in the future!  Check that graphics HAL is generating vsync timestamps using the correct timebase."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    move-wide p1, v2

    .line 1262
    :cond_1
    iget-boolean v4, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 1263
    const-string v4, "Already have a pending vsync event.  There should only be one at a time."

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1266
    :cond_2
    iput-boolean v6, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    .line 1269
    :goto_0
    iput-wide p1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mTimestampNanos:J

    .line 1270
    iput p5, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mFrame:I

    .line 1271
    iput-object p6, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    .line 1272
    iget-object v4, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    invoke-static {v4}, Landroid/view/Choreographer;->-$$Nest$fgetmHandler(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v4

    .line 1273
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {v4, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1274
    iget-object v5, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    invoke-static {v5}, Landroid/view/Choreographer;->-$$Nest$fgetmHandler(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;

    move-result-object v5

    const-wide/32 v6, 0xf4240

    div-long v6, p1, v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1276
    nop

    .end local v2    # "now":J
    .end local v4    # "msg":Landroid/os/Message;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1277
    nop

    .line 1278
    return-void

    .line 1276
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1277
    throw v2
.end method

.method public blacklist onVsyncSS()V
    .locals 2

    .line 1223
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mTimestampNanos:J

    .line 1224
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mFrame:I

    .line 1225
    iget-object v0, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    invoke-static {v0}, Landroid/view/Choreographer;->-$$Nest$fgetmHandler(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 1226
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1232
    iget-object v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    invoke-static {v1}, Landroid/view/Choreographer;->-$$Nest$fgetmHandler(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1234
    return-void
.end method

.method public whitelist test-api run()V
    .locals 5

    .line 1282
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mHavePendingVsync:Z

    .line 1283
    iget-object v0, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->this$0:Landroid/view/Choreographer;

    iget-wide v1, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mTimestampNanos:J

    iget v3, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mFrame:I

    iget-object v4, p0, Landroid/view/Choreographer$FrameDisplayEventReceiver;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/Choreographer;->doFrame(JILandroid/view/DisplayEventReceiver$VsyncEventData;)V

    .line 1284
    return-void
.end method
