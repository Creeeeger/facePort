.class public Lcom/samsung/android/motionphoto/core/MPRecordingProxy;
.super Ljava/lang/Object;
.source "MPRecordingProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;
    }
.end annotation


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

    invoke-static {}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_init()V

    const-class v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "preview"

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_setup(Ljava/lang/Object;ILjava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mToken:I

    return-void
.end method

.method public constructor blacklist <init>(ILcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;->PREVIEW:Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;

    if-ne p2, v0, :cond_0

    const-string v0, "preview"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;->VIDEOOUT:Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;

    if-ne p2, v0, :cond_1

    const-string v0, "video-out"

    goto :goto_0

    :cond_1
    const-string v0, "surface"

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_setup(Ljava/lang/Object;ILjava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mToken:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/motionphoto/core/MPRecorderListener;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "preview"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_setup(Ljava/lang/Object;ILjava/lang/String;)I

    iput p2, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mToken:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/motionphoto/core/MPRecorderListener;ILcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;->PREVIEW:Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;

    if-ne p3, v0, :cond_0

    const-string v0, "preview"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;->VIDEOOUT:Lcom/samsung/android/motionphoto/core/MPRecordingProxy$BufferMode;

    if-ne p3, v0, :cond_1

    const-string v0, "video-out"

    goto :goto_0

    :cond_1
    const-string v0, "surface"

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_setup(Ljava/lang/Object;ILjava/lang/String;)I

    iput p2, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mToken:I

    return-void
.end method

.method private native blacklist native_finalize()V
.end method

.method private native blacklist native_getMetaBuffers()[Ljava/lang/Object;
.end method

.method private static native blacklist native_init()V
.end method

.method private native blacklist native_notifyEvent(I)V
.end method

.method private native blacklist native_sendByteBuffer(Ljava/nio/ByteBuffer;IIIJ)V
.end method

.method private native blacklist native_sendHardwareBuffer(Landroid/hardware/HardwareBuffer;J)V
.end method

.method private native blacklist native_sendVdisMetadataBuffer(ILjava/lang/String;)V
.end method

.method private native blacklist native_setup(Ljava/lang/Object;ILjava/lang/String;)I
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
    invoke-virtual {p0}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->release()V
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

.method public blacklist getMetaBuffers()[Ljava/nio/ByteBuffer;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_getMetaBuffers()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_0
    nop

    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public blacklist notifyEvent(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_notifyEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public blacklist release()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public blacklist sendBuffer(Landroid/hardware/HardwareBuffer;J)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_sendHardwareBuffer(Landroid/hardware/HardwareBuffer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public blacklist sendBuffer(Ljava/nio/ByteBuffer;IIIJ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_sendByteBuffer(Ljava/nio/ByteBuffer;IIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public blacklist sendMetadata(ILjava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-wide v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->native_sendVdisMetadataBuffer(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/motionphoto/core/MPRecordingProxy;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
