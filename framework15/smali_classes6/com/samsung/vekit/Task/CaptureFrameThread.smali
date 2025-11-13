.class public Lcom/samsung/vekit/Task/CaptureFrameThread;
.super Ljava/lang/Thread;
.source "CaptureFrameThread.java"


# instance fields
.field blacklist context:Lcom/samsung/vekit/Common/VEContext;

.field blacklist handler:Landroid/os/Handler;

.field private blacklist isRunning:Z

.field private blacklist queue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Lcom/samsung/vekit/Task/CaptureFrameTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/vekit/Common/VEContext;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->isRunning:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    iput-object p1, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->context:Lcom/samsung/vekit/Common/VEContext;

    iput-object p2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public blacklist addRequest(IIIILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 8

    new-instance v7, Lcom/samsung/vekit/Task/CaptureFrameTask;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/vekit/Task/CaptureFrameTask;-><init>(IIIILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    iget-object v1, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist addRequest(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Task/CaptureFrameTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/vekit/Task/CaptureFrameTask;-><init>(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    iget-object v1, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist addRequest(Lcom/samsung/vekit/Item/ImageItem;IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Task/CaptureFrameTask;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Task/CaptureFrameTask;-><init>(Lcom/samsung/vekit/Item/Item;IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    iget-object v1, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist addRequest(Lcom/samsung/vekit/Item/Item;IILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 7

    new-instance v6, Lcom/samsung/vekit/Task/CaptureFrameTask;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/vekit/Task/CaptureFrameTask;-><init>(Lcom/samsung/vekit/Item/Item;IILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    iget-object v1, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public whitelist test-api run()V
    .locals 15

    nop

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->isRunning:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v1

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    monitor-exit v1

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/vekit/Task/CaptureFrameTask;

    move-object v0, v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getCaptureType()Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->ORIGINAL_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->captureLatestFrame(II)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/vekit/Common/Object/CaptureInfo;

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputHeight()I

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getListener()Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/samsung/vekit/Common/Object/CaptureInfo;-><init>(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;Landroid/graphics/Bitmap;)V

    const/4 v4, -0x1

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getCaptureType()Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    move-result-object v1

    sget-object v2, Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;->RENDERED_FRAME:Lcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getItem()Lcom/samsung/vekit/Item/Item;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->captureAnimatedFrame(Lcom/samsung/vekit/Common/Object/Element;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getItem()Lcom/samsung/vekit/Item/Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/vekit/Item/Item;->getId()I

    move-result v3

    new-instance v4, Lcom/samsung/vekit/Common/Object/CaptureInfo;

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputHeight()I

    move-result v6

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getListener()Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v1}, Lcom/samsung/vekit/Common/Object/CaptureInfo;-><init>(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getItem()Lcom/samsung/vekit/Item/Item;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputHeight()I

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputCenterX()I

    move-result v6

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputCenterY()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->captureSuperHDRFrame(Lcom/samsung/vekit/Common/Object/Element;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getItem()Lcom/samsung/vekit/Item/Item;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getItem()Lcom/samsung/vekit/Item/Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/vekit/Item/Item;->getId()I

    move-result v2

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v3, v5, v7, v4, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v14, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v1

    move-object v13, v3

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    iget-object v3, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/samsung/vekit/Common/Object/CaptureInfo;

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getOutputHeight()I

    move-result v6

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameTask;->getListener()Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v1}, Lcom/samsung/vekit/Common/Object/CaptureInfo;-><init>(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    :goto_2
    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :cond_6
    return-void
.end method

.method public blacklist startThread()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/vekit/Task/CaptureFrameThread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->isRunning:Z

    return-void
.end method

.method public blacklist stopThread()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->queue:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Task/CaptureFrameThread;->isRunning:Z

    invoke-virtual {p0}, Lcom/samsung/vekit/Task/CaptureFrameThread;->interrupt()V

    return-void
.end method
