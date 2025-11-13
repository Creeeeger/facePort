.class public final Landroid/media/MediaCodec$OutputFrame;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputFrame"
.end annotation


# instance fields
.field private blacklist mAccessible:Z

.field private final blacklist mBufferInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mChangedKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFlags:I

.field private blacklist mFormat:Landroid/media/MediaFormat;

.field private blacklist mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private final blacklist mIndex:I

.field private final blacklist mKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

.field private blacklist mLoaded:Z

.field private blacklist mPresentationTimeUs:J


# direct methods
.method constructor blacklist <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/MediaCodec$OutputFrame;->mPresentationTimeUs:J

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/MediaCodec$OutputFrame;->mFlags:I

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFormat:Landroid/media/MediaFormat;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mBufferInfos:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mChangedKeys:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    iput-boolean v1, p0, Landroid/media/MediaCodec$OutputFrame;->mAccessible:Z

    iput-boolean v1, p0, Landroid/media/MediaCodec$OutputFrame;->mLoaded:Z

    iput p1, p0, Landroid/media/MediaCodec$OutputFrame;->mIndex:I

    return-void
.end method


# virtual methods
.method blacklist clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFormat:Landroid/media/MediaFormat;

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mChangedKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLoaded:Z

    return-void
.end method

.method public whitelist getBufferInfos()Ljava/util/ArrayDeque;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-wide v4, p0, Landroid/media/MediaCodec$OutputFrame;->mPresentationTimeUs:J

    iget v6, p0, Landroid/media/MediaCodec$OutputFrame;->mFlags:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget-object v1, p0, Landroid/media/MediaCodec$OutputFrame;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mBufferInfos:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public whitelist getChangedKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mChangedKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    iget-object v1, p0, Landroid/media/MediaCodec$OutputFrame;->mChangedKeys:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mKeySet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFlags()I
    .locals 1

    iget v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFlags:I

    return v0
.end method

.method public whitelist getFormat()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 2

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This output frame is not graphic"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLinearBlock()Landroid/media/MediaCodec$LinearBlock;
    .locals 2

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This output frame is not linear"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPresentationTimeUs()J
    .locals 2

    iget-wide v0, p0, Landroid/media/MediaCodec$OutputFrame;->mPresentationTimeUs:J

    return-wide v0
.end method

.method blacklist isAccessible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaCodec$OutputFrame;->mAccessible:Z

    return v0
.end method

.method blacklist isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaCodec$OutputFrame;->mLoaded:Z

    return v0
.end method

.method blacklist setAccessible(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaCodec$OutputFrame;->mAccessible:Z

    return-void
.end method

.method blacklist setBufferInfo(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Landroid/media/MediaCodec$OutputFrame;->mPresentationTimeUs:J

    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v0, p0, Landroid/media/MediaCodec$OutputFrame;->mFlags:I

    return-void
.end method

.method blacklist setBufferInfos(Ljava/util/ArrayDeque;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Landroid/media/MediaCodec$OutputFrame;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method blacklist setLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaCodec$OutputFrame;->mLoaded:Z

    return-void
.end method
