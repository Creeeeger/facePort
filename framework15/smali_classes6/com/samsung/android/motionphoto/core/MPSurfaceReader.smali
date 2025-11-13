.class public Lcom/samsung/android/motionphoto/core/MPSurfaceReader;
.super Ljava/lang/Object;
.source "MPSurfaceReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/motionphoto/core/MPSurfaceReader$HandlerExecutor;,
        Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;,
        Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;
    }
.end annotation


# static fields
.field private static final blacklist ACQUIRE_MAX_IMAGES:I = 0x2

.field private static final blacklist ACQUIRE_NO_BUFS:I = 0x1

.field private static final blacklist ACQUIRE_SUCCESS:I

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist dataSpace:I

.field private final blacklist format:I

.field private final blacklist height:I

.field private final blacklist isReaderValid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist listener:Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;

.field private blacklist listenerExecutor:Ljava/util/concurrent/Executor;

.field private blacklist listenerHandler:Landroid/os/Handler;

.field private final blacklist listenerLock:Ljava/lang/Object;

.field private blacklist mNativeContext:J

.field private final blacklist maxImages:I

.field public blacklist surface:Landroid/view/Surface;

.field private final blacklist usage:J

.field private final blacklist width:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->TAG:Ljava/lang/String;

    const-string v0, "motionphoto_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->nativeClassInit()V

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->dataSpace:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private constructor blacklist <init>(IIIIJ)V
    .locals 16

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, v9, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->dataSpace:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v9, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerLock:Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->TAG:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "MPSurfaceReader: w=%d, h=%d, fmt=0x%x, maxImages=%d, usg=0x%x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v10, p1

    iput v10, v9, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->width:I

    move/from16 v11, p2

    iput v11, v9, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->height:I

    move/from16 v12, p3

    iput v12, v9, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->format:I

    move/from16 v13, p4

    iput v13, v9, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->maxImages:I

    move-wide/from16 v14, p5

    iput-wide v14, v9, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->usage:J

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->nativeInit(Ljava/lang/Object;IIIIIJ)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v9, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->isReaderValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->nativeGetSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v9, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->surface:Landroid/view/Surface;

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->format:I

    return v0
.end method

.method static synthetic blacklist access$100(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->width:I

    return v0
.end method

.method static synthetic blacklist access$200(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->height:I

    return v0
.end method

.method static synthetic blacklist lambda$postEventFromNative$0(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;->onImageAvailable(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)V

    return-void
.end method

.method private static native blacklist nativeClassInit()V
.end method

.method private native blacklist nativeClose()V
.end method

.method private native blacklist nativeGetSurface()Landroid/view/Surface;
.end method

.method private native blacklist nativeImageSetup(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)I
.end method

.method private native blacklist nativeInit(Ljava/lang/Object;IIIIIJ)V
.end method

.method private native blacklist nativeReleaseBuffer(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)V
.end method

.method public static blacklist of(IIIIJ)Lcom/samsung/android/motionphoto/core/MPSurfaceReader;
    .locals 8

    new-instance v7, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

    move-object v0, v7

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;-><init>(IIIIJ)V

    return-object v7
.end method

.method private static blacklist postEventFromNative(Ljava/lang/Object;)V
    .locals 10

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, v1, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listener:Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v1, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->isReaderValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    new-instance v5, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v5, v1}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;-><init>(Lcom/samsung/android/motionphoto/core/MPSurfaceReader;)V

    invoke-direct {v1, v5}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->nativeImageSetup(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    new-instance v7, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown MPSurfaceReader_nativeImageSetup return code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    :pswitch_0
    sget-object v7, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->TAG:Ljava/lang/String;

    const-string v8, "maxImages (%d) has already been acquired, call #close before acquiring more."

    iget v9, v1, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->maxImages:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    new-instance v7, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$$ExternalSyntheticLambda0;

    invoke-direct {v7, v4, v5}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)V

    invoke-interface {v3, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    nop

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->TAG:Ljava/lang/String;

    const-string v1, "close MPSurfaceReader...E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->setOnImageAvailableListener(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->surface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->surface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->isReaderValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->nativeClose()V

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->TAG:Ljava/lang/String;

    const-string v1, "close MPSurfaceReader...X"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public blacklist getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public blacklist releaseBuffer(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->nativeReleaseBuffer(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$MPSurfaceImage;)V

    return-void
.end method

.method public blacklist setOnImageAvailableListener(Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v2, v1, :cond_2

    :cond_1
    invoke-static {v1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$HandlerExecutor;

    iget-object v3, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/samsung/android/motionphoto/core/MPSurfaceReader$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerExecutor:Ljava/util/concurrent/Executor;

    :cond_2
    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "handler is null but the current thread is not a looper"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listenerExecutor:Ljava/util/concurrent/Executor;

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/motionphoto/core/MPSurfaceReader;->listener:Lcom/samsung/android/motionphoto/core/MPSurfaceReader$OnImageAvailableListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
