.class Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;
.super Landroid/os/Handler;
.source "SemAsyncVideoFrameDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private blacklist mVideoFrameDecoder:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

.field final synthetic blacklist this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Landroid/os/Looper;)V
    .locals 0
    .param p2, "vfd"    # Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 410
    iput-object p1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    .line 411
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 412
    iput-object p2, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->mVideoFrameDecoder:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    .line 413
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 417
    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->mVideoFrameDecoder:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmNativeContext(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "SemAsyncVideoFrameDecoder"

    if-nez v0, :cond_0

    .line 418
    const-string v0, "VideoFrameDecoder went away with unhandled events"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void

    .line 421
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void

    .line 431
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0xc9

    if-ne v0, v2, :cond_1

    .line 432
    const-string v0, "INIT_COMPLETED"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmOnInitCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmOnInitCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->mVideoFrameDecoder:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnInitCompleteListener;->onInitCompleted(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)V

    goto :goto_0

    .line 436
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0xca

    if-ne v0, v2, :cond_2

    .line 437
    const-string v0, "DECODING_COMPLETED"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmOnDecodingCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmOnDecodingCompleteListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->mVideoFrameDecoder:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnDecodingCompleteListener;->onDecodingCompleted(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;I)V

    .line 442
    :cond_2
    :goto_0
    return-void

    .line 445
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "error_was_handled":Z
    iget-object v4, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {v4}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmOnErrorListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 448
    iget-object v4, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {v4}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmOnErrorListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->mVideoFrameDecoder:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v4, v5, v6, v7}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnErrorListener;->onError(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;II)Z

    move-result v0

    .line 451
    :cond_3
    if-nez v0, :cond_4

    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error is not handled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_4
    return-void

    .line 423
    .end local v0    # "error_was_handled":Z
    :sswitch_2
    const-string v0, "VIDEO_FRAME"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {v0}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmOnVideoFrameListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 425
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 426
    .local v0, "outBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->this$0:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    invoke-static {v1}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;->-$$Nest$fgetmOnVideoFrameListener(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;)Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$EventHandler;->mVideoFrameDecoder:Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/samsung/android/media/SemAsyncVideoFrameDecoder$OnVideoFrameListener;->onVideoFrame(Lcom/samsung/android/media/SemAsyncVideoFrameDecoder;Landroid/graphics/Bitmap;II)V

    .line 428
    .end local v0    # "outBitmap":Landroid/graphics/Bitmap;
    :cond_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method
