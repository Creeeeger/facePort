.class public final Lcom/samsung/android/media/SemMediaPostProcessor;
.super Ljava/lang/Object;
.source "SemMediaPostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;,
        Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;,
        Lcom/samsung/android/media/SemMediaPostProcessor$ParameterValue;,
        Lcom/samsung/android/media/SemMediaPostProcessor$OutputFlag;,
        Lcom/samsung/android/media/SemMediaPostProcessor$InputFlag;,
        Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;,
        Lcom/samsung/android/media/SemMediaPostProcessor$Type;,
        Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;
    }
.end annotation


# instance fields
.field private blacklist mNativeContext:J

.field private final blacklist mNativeContextLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "semmediapostprocessor_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_init()V

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor;->mNativeContextLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_setup(Ljava/lang/Object;I)V

    return-void
.end method

.method public static whitelist createByType(I)Lcom/samsung/android/media/SemMediaPostProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/media/SemMediaPostProcessor;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/SemMediaPostProcessor;-><init>(I)V

    return-object v0
.end method

.method public static whitelist isSupported(ILcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;)Z
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->-$$Nest$fgetformat(Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->-$$Nest$fgetformat(Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_is_supported(I[Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private final blacklist lockAndGetContext()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor;->mNativeContextLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-wide v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor;->mNativeContext:J

    return-wide v0
.end method

.method private final native blacklist native_configure([Ljava/lang/String;[Ljava/lang/Object;Landroid/view/Surface;)V
.end method

.method private final native blacklist native_createInputSurface()Landroid/view/Surface;
.end method

.method private final native blacklist native_dequeueInputBuffer(Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;J)Ljava/nio/ByteBuffer;
.end method

.method private final native blacklist native_dequeueOutputBuffer(Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;J)Ljava/nio/ByteBuffer;
.end method

.method private final native blacklist native_finalize()V
.end method

.method private final native blacklist native_flush()V
.end method

.method private final native blacklist native_getInputFormat()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private final native blacklist native_getOutputFormat()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private static final native blacklist native_init()V
.end method

.method private static final native blacklist native_is_supported(I[Ljava/lang/String;[Ljava/lang/Object;)Z
.end method

.method private final native blacklist native_queueInputBuffer(IJI)V
.end method

.method private final native blacklist native_release()V
.end method

.method private final native blacklist native_releaseOutputBuffer(I)V
.end method

.method private final native blacklist native_renderAndReleaseOutputBuffer(IJJ)V
.end method

.method private final native blacklist native_reset()V
.end method

.method private final native blacklist native_setParameter(II)V
.end method

.method private final native blacklist native_setParameter(ILjava/lang/String;)V
.end method

.method private final native blacklist native_setup(Ljava/lang/Object;I)V
.end method

.method private final native blacklist native_signalEndOfInputStream()V
.end method

.method private final blacklist setAndUnlockContext(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/media/SemMediaPostProcessor;->mNativeContext:J

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor;->mNativeContextLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method


# virtual methods
.method public whitelist configure(Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;Landroid/view/Surface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->-$$Nest$fgetformat(Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->-$$Nest$fgetformat(Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_configure([Ljava/lang/String;[Ljava/lang/Object;Landroid/view/Surface;)V

    return-void
.end method

.method public whitelist createInputSurface()Landroid/view/Surface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_createInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public whitelist dequeueInputBuffer(Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;J)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_dequeueInputBuffer(Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;J)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist dequeueOutputBuffer(Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;J)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_dequeueOutputBuffer(Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;J)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_finalize()V

    return-void
.end method

.method public whitelist flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_flush()V

    return-void
.end method

.method public whitelist getInputFormat()Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_getInputFormat()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;-><init>(Ljava/util/Map;Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat-IA;)V

    return-object v0
.end method

.method public whitelist getOutputFormat()Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_getOutputFormat()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;-><init>(Ljava/util/Map;Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat-IA;)V

    return-object v0
.end method

.method public whitelist queueInputBuffer(Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p1, Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;->index:I

    iget-wide v1, p1, Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;->timeUs:J

    iget v3, p1, Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;->flags:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_queueInputBuffer(IJI)V

    return-void
.end method

.method public final whitelist release()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_release()V

    return-void
.end method

.method public whitelist releaseOutputBuffer(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_releaseOutputBuffer(I)V

    return-void
.end method

.method public whitelist renderAndReleaseOutputBuffer(IJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_renderAndReleaseOutputBuffer(IJJ)V

    return-void
.end method

.method public whitelist reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_reset()V

    return-void
.end method

.method public whitelist setParameter(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_setParameter(II)V

    return-void
.end method

.method public whitelist setParameter(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_setParameter(ILjava/lang/String;)V

    return-void
.end method

.method public whitelist signalEndOfInputStream()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_signalEndOfInputStream()V

    return-void
.end method
