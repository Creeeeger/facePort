.class public Lcom/samsung/android/motionphoto/core/MPRecorder;
.super Ljava/lang/Object;
.source "MPRecorder.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mListener:Lcom/samsung/android/motionphoto/core/MPRecorderListener;

.field private final blacklist mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mNativeContext:J

.field private final blacklist mToken:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "apex_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/motionphoto/core/MPRecorder;->native_init()V

    const-class v0, Lcom/samsung/android/motionphoto/core/MPRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/motionphoto/core/MPRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/motionphoto/core/MPRecorderListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mListener:Lcom/samsung/android/motionphoto/core/MPRecorderListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/motionphoto/core/MPRecorder;->native_setup(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mToken:I

    iget v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mToken:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->setToken(I)V

    return-void
.end method

.method private native blacklist native_finalize()V
.end method

.method private static native blacklist native_init()V
.end method

.method private native blacklist native_setup(Ljava/lang/Object;Ljava/lang/String;)I
.end method

.method private native blacklist native_start(Ljava/lang/String;)V
.end method

.method private native blacklist native_stop()V
.end method

.method private native blacklist native_store(J)I
.end method

.method private native blacklist native_store(Ljava/lang/String;)I
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/core/MPRecorder;->release()V
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

.method public blacklist getToken()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mToken:I

    return v0
.end method

.method public blacklist release()V
    .locals 4

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorder;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mListener:Lcom/samsung/android/motionphoto/core/MPRecorderListener;

    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPRecorder;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public blacklist setErrorListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mListener:Lcom/samsung/android/motionphoto/core/MPRecorderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mListener:Lcom/samsung/android/motionphoto/core/MPRecorderListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->setOnErrorListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;)V

    :cond_0
    return-void
.end method

.method public blacklist setInfoListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mListener:Lcom/samsung/android/motionphoto/core/MPRecorderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mListener:Lcom/samsung/android/motionphoto/core/MPRecorderListener;

    invoke-virtual {v0, p1}, Lcom/samsung/android/motionphoto/core/MPRecorderListener;->setOnInfoListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;)V

    :cond_0
    return-void
.end method

.method public blacklist start(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/motionphoto/core/MPRecorder;->native_start(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public blacklist stop()V
    .locals 4

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecorder;->TAG:Ljava/lang/String;

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPRecorder;->native_stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public blacklist store(Lcom/samsung/android/motionphoto/core/Flattenable;)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/motionphoto/core/Flattenable;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/motionphoto/core/MPRecorder;->native_store(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_0
    nop

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public blacklist store(J)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/motionphoto/core/MPRecorder;->native_store(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public blacklist store(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/motionphoto/core/MPRecorder;->native_store(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecorder;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
