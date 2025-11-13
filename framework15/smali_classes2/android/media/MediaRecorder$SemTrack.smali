.class public Landroid/media/MediaRecorder$SemTrack;
.super Ljava/lang/Object;
.source "MediaRecorder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemTrack"
.end annotation


# instance fields
.field private blacklist mMime:Ljava/lang/String;

.field private blacklist mNativeContext:J

.field private blacklist mRecorder:Landroid/media/MediaRecorder;

.field final synthetic blacklist this$0:Landroid/media/MediaRecorder;


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Ljava/lang/String;Landroid/media/MediaFormat;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/MediaRecorder$SemTrack;->this$0:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/MediaRecorder$SemTrack;->mRecorder:Landroid/media/MediaRecorder;

    iput-object p3, p0, Landroid/media/MediaRecorder$SemTrack;->mMime:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/media/MediaRecorder$SemTrack;->mRecorder:Landroid/media/MediaRecorder;

    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaRecorder$SemTrack;->native_setup(Landroid/media/MediaRecorder;[Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaRecorder$SemTrack-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaRecorder$SemTrack;-><init>(Landroid/media/MediaRecorder;Landroid/media/MediaRecorder;Ljava/lang/String;Landroid/media/MediaFormat;)V

    return-void
.end method

.method private native blacklist nativeWriteSampleData(JLandroid/media/MediaRecorder;Ljava/nio/ByteBuffer;IIJI)V
.end method

.method private native blacklist native_release()V
.end method

.method private native blacklist native_setup(Landroid/media/MediaRecorder;[Ljava/lang/String;[Ljava/lang/Object;)V
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaRecorder$SemTrack;->release()V

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaRecorder$SemTrack;->release()V

    return-void
.end method

.method public blacklist release()V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaRecorder$SemTrack;->native_release()V

    return-void
.end method

.method public blacklist writeSampleData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 11

    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v0, :cond_1

    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    if-ltz v0, :cond_1

    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-wide v0, p0, Landroid/media/MediaRecorder$SemTrack;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v2, p0, Landroid/media/MediaRecorder$SemTrack;->mNativeContext:J

    iget-object v4, p0, Landroid/media/MediaRecorder$SemTrack;->mRecorder:Landroid/media/MediaRecorder;

    iget v6, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v8, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v10, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v10}, Landroid/media/MediaRecorder$SemTrack;->nativeWriteSampleData(JLandroid/media/MediaRecorder;Ljava/nio/ByteBuffer;IIJI)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source has been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferInfo must specify a valid buffer offset and size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
