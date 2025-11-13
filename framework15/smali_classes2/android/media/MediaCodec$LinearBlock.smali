.class public final Landroid/media/MediaCodec$LinearBlock;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinearBlock"
.end annotation


# static fields
.field private static final blacklist sPool:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/media/MediaCodec$LinearBlock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mInternal:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMappable:Z

.field private blacklist mMapped:Ljava/nio/ByteBuffer;

.field private blacklist mNativeContext:J

.field private blacklist mValid:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Landroid/media/MediaCodec$LinearBlock;->sPool:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$LinearBlock;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    iput-boolean v0, p0, Landroid/media/MediaCodec$LinearBlock;->mMappable:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/MediaCodec$LinearBlock;->mNativeContext:J

    iput-boolean v0, p0, Landroid/media/MediaCodec$LinearBlock;->mInternal:Z

    return-void
.end method

.method public static whitelist isCodecCopyFreeCompatible([Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/media/MediaCodec$LinearBlock;->native_checkCompatible([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native blacklist native_checkCompatible([Ljava/lang/String;)Z
.end method

.method private native blacklist native_map()Ljava/nio/ByteBuffer;
.end method

.method private native blacklist native_obtain(I[Ljava/lang/String;)V
.end method

.method private native blacklist native_recycle()V
.end method

.method public static whitelist obtain(I[Ljava/lang/String;)Landroid/media/MediaCodec$LinearBlock;
    .locals 3

    sget-object v0, Landroid/media/MediaCodec$LinearBlock;->sPool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$LinearBlock;

    if-nez v0, :cond_0

    new-instance v1, Landroid/media/MediaCodec$LinearBlock;

    invoke-direct {v1}, Landroid/media/MediaCodec$LinearBlock;-><init>()V

    move-object v0, v1

    :cond_0
    iget-object v1, v0, Landroid/media/MediaCodec$LinearBlock;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {v0, p0, p1}, Landroid/media/MediaCodec$LinearBlock;->native_obtain(I[Ljava/lang/String;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist setInternalStateLocked(JZ)V
    .locals 2

    iput-wide p1, p0, Landroid/media/MediaCodec$LinearBlock;->mNativeContext:J

    iput-boolean p3, p0, Landroid/media/MediaCodec$LinearBlock;->mMappable:Z

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    iput-boolean v1, p0, Landroid/media/MediaCodec$LinearBlock;->mInternal:Z

    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaCodec$LinearBlock;->native_recycle()V

    return-void
.end method

.method public whitelist isMappable()Z
    .locals 3

    iget-object v0, p0, Landroid/media/MediaCodec$LinearBlock;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMappable:Z

    monitor-exit v0

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The linear block is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist map()Ljava/nio/ByteBuffer;
    .locals 3

    iget-object v0, p0, Landroid/media/MediaCodec$LinearBlock;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMappable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/media/MediaCodec$LinearBlock;->native_map()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    :cond_0
    iget-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    monitor-exit v0

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The linear block is not mappable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The linear block is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist recycle()V
    .locals 3

    iget-object v0, p0, Landroid/media/MediaCodec$LinearBlock;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    :cond_0
    invoke-direct {p0}, Landroid/media/MediaCodec$LinearBlock;->native_recycle()V

    iput-boolean v2, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/MediaCodec$LinearBlock;->mNativeContext:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/media/MediaCodec$LinearBlock;->mInternal:Z

    if-nez v0, :cond_1

    sget-object v0, Landroid/media/MediaCodec$LinearBlock;->sPool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The linear block is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
