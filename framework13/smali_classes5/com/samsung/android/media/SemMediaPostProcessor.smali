.class public final Lcom/samsung/android/media/SemMediaPostProcessor;
.super Ljava/lang/Object;
.source "SemMediaPostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/SemMediaPostProcessor$ColorFormat;,
        Lcom/samsung/android/media/SemMediaPostProcessor$Type;,
        Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;,
        Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;,
        Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;
    }
.end annotation


# static fields
.field public static final blacklist INPUT_FLAG_BY_PASS:I = 0x8

.field public static final blacklist INPUT_FLAG_END_OF_STREAM:I = 0x2

.field public static final blacklist OUTPUT_FLAG_END_OF_STREAM:I = 0x2

.field public static final blacklist PARAMETER_VALUE_OFF:I = 0x0

.field public static final blacklist PARAMETER_VALUE_ON:I = 0x1


# instance fields
.field private blacklist mNativeContext:J

.field private final blacklist mNativeContextLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 530
    const-string/jumbo v0, "semmediapostprocessor_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 531
    invoke-static {}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_init()V

    .line 532
    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor;->mNativeContextLock:Ljava/util/concurrent/locks/Lock;

    .line 547
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_setup(Ljava/lang/Object;I)V

    .line 548
    return-void
.end method

.method public static blacklist createByType(Lcom/samsung/android/media/SemMediaPostProcessor$Type;)Lcom/samsung/android/media/SemMediaPostProcessor;
    .locals 2
    .param p0, "type"    # Lcom/samsung/android/media/SemMediaPostProcessor$Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 543
    new-instance v0, Lcom/samsung/android/media/SemMediaPostProcessor;

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPostProcessor$Type;->getValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/media/SemMediaPostProcessor;-><init>(I)V

    return-object v0
.end method

.method public static blacklist isSupported(Lcom/samsung/android/media/SemMediaPostProcessor$Type;Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;)Z
    .locals 3
    .param p0, "type"    # Lcom/samsung/android/media/SemMediaPostProcessor$Type;
    .param p1, "config"    # Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;

    .line 559
    invoke-static {p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->-$$Nest$fgetformat(Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 560
    .local v0, "keys":[Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->-$$Nest$fgetformat(Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 562
    .local v1, "values":[Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPostProcessor$Type;->getValue()I

    move-result v2

    invoke-static {v2, v0, v1}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_is_supported(I[Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private final blacklist lockAndGetContext()J
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor;->mNativeContextLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 521
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
    .param p1, "context"    # J

    .line 525
    iput-wide p1, p0, Lcom/samsung/android/media/SemMediaPostProcessor;->mNativeContext:J

    .line 526
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPostProcessor;->mNativeContextLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 527
    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;Landroid/view/Surface;)V
    .locals 3
    .param p1, "config"    # Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 595
    invoke-static {p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->-$$Nest$fgetformat(Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 596
    .local v0, "keys":[Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;->-$$Nest$fgetformat(Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 598
    .local v1, "values":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_configure([Ljava/lang/String;[Ljava/lang/Object;Landroid/view/Surface;)V

    .line 599
    return-void
.end method

.method public blacklist createInputSurface()Landroid/view/Surface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 579
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_createInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public blacklist dequeueInputBuffer(Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;J)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "bufferInfo"    # Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;
    .param p2, "timeoutUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 640
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_dequeueInputBuffer(Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;J)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist dequeueOutputBuffer(Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;J)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "bufferInfo"    # Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;
    .param p2, "timeoutUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 670
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_dequeueOutputBuffer(Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;J)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    .line 787
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_finalize()V

    .line 788
    return-void
.end method

.method public blacklist flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 756
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_flush()V

    .line 757
    return-void
.end method

.method public blacklist getInputFormat()Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 695
    new-instance v0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_getOutputFormat()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;-><init>(Ljava/util/Map;Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat-IA;)V

    return-object v0
.end method

.method public blacklist getOutputFormat()Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 683
    new-instance v0, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_getOutputFormat()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat;-><init>(Ljava/util/Map;Lcom/samsung/android/media/SemMediaPostProcessor$ProcessingFormat-IA;)V

    return-object v0
.end method

.method public blacklist queueInputBuffer(Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;)V
    .locals 4
    .param p1, "bufferInfo"    # Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 656
    iget v0, p1, Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;->index:I

    iget-wide v1, p1, Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;->timeUs:J

    iget v3, p1, Lcom/samsung/android/media/SemMediaPostProcessor$BufferInfo;->flags:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_queueInputBuffer(IJI)V

    .line 657
    return-void
.end method

.method public final blacklist release()V
    .locals 0

    .line 768
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_release()V

    .line 769
    return-void
.end method

.method public blacklist releaseOutputBuffer(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 743
    invoke-direct {p0, p1}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_releaseOutputBuffer(I)V

    .line 744
    return-void
.end method

.method public blacklist renderAndReleaseOutputBuffer(IJJ)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "timeUs"    # J
    .param p4, "realTimeNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 726
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_renderAndReleaseOutputBuffer(IJJ)V

    .line 727
    return-void
.end method

.method public blacklist reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 780
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_reset()V

    .line 781
    return-void
.end method

.method public blacklist setParameter(Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;I)V
    .locals 1
    .param p1, "key"    # Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 611
    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;->getValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_setParameter(II)V

    .line 612
    return-void
.end method

.method public blacklist setParameter(Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 625
    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPostProcessor$ParameterKey;->getValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_setParameter(ILjava/lang/String;)V

    .line 626
    return-void
.end method

.method public blacklist signalEndOfInputStream()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 706
    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPostProcessor;->native_signalEndOfInputStream()V

    .line 707
    return-void
.end method
