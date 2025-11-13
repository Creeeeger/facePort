.class public final Landroid/media/MediaCodec$QueueRequest;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QueueRequest"
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

.field private final blacklist mCodec:Landroid/media/MediaCodec;

.field private final blacklist mCryptoInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$CryptoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFlags:I

.field private blacklist mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private final blacklist mIndex:I

.field private blacklist mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

.field private blacklist mOffset:I

.field private blacklist mPresentationTimeUs:J

.field private blacklist mSize:I

.field private final blacklist mTuningKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTuningValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/media/MediaCodec;


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/MediaCodec$QueueRequest;->this$0:Landroid/media/MediaCodec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/MediaCodec$QueueRequest;->mOffset:I

    iput v1, p0, Landroid/media/MediaCodec$QueueRequest;->mSize:I

    iput-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/MediaCodec$QueueRequest;->mPresentationTimeUs:J

    iput v1, p0, Landroid/media/MediaCodec$QueueRequest;->mFlags:I

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    iput-boolean v1, p0, Landroid/media/MediaCodec$QueueRequest;->mAccessible:Z

    iput-object p2, p0, Landroid/media/MediaCodec$QueueRequest;->mCodec:Landroid/media/MediaCodec;

    iput p3, p0, Landroid/media/MediaCodec$QueueRequest;->mIndex:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;ILandroid/media/MediaCodec$QueueRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec$QueueRequest;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;I)V

    return-void
.end method


# virtual methods
.method blacklist clear()Landroid/media/MediaCodec$QueueRequest;
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/MediaCodec$QueueRequest;->mOffset:I

    iput v1, p0, Landroid/media/MediaCodec$QueueRequest;->mSize:I

    iput-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/MediaCodec$QueueRequest;->mPresentationTimeUs:J

    iput v1, p0, Landroid/media/MediaCodec$QueueRequest;->mFlags:I

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method blacklist isAccessible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaCodec$QueueRequest;->mAccessible:Z

    return v0
.end method

.method public whitelist queue()V
    .locals 9

    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No block is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/MediaCodec$QueueRequest;->setAccessible(Z)Landroid/media/MediaCodec$QueueRequest;

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget v1, p0, Landroid/media/MediaCodec$QueueRequest;->mSize:I

    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v1, p0, Landroid/media/MediaCodec$QueueRequest;->mOffset:I

    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-wide v1, p0, Landroid/media/MediaCodec$QueueRequest;->mPresentationTimeUs:J

    iput-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v1, p0, Landroid/media/MediaCodec$QueueRequest;->mFlags:I

    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v1, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/media/MediaCodec$QueueRequest;->mCodec:Landroid/media/MediaCodec;

    iget v2, p0, Landroid/media/MediaCodec$QueueRequest;->mIndex:I

    iget-object v3, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->toArray()[Ljava/lang/Object;

    move-result-object v0

    :goto_1
    move-object v4, v0

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->toArray()[Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    invoke-static/range {v1 .. v7}, Landroid/media/MediaCodec;->-$$Nest$mnative_queueLinearBlock(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$LinearBlock;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/media/MediaCodec$QueueRequest;->mCodec:Landroid/media/MediaCodec;

    iget v2, p0, Landroid/media/MediaCodec$QueueRequest;->mIndex:I

    iget-object v3, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    iget-wide v4, p0, Landroid/media/MediaCodec$QueueRequest;->mPresentationTimeUs:J

    iget v6, p0, Landroid/media/MediaCodec$QueueRequest;->mFlags:I

    iget-object v7, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    invoke-static/range {v1 .. v8}, Landroid/media/MediaCodec;->-$$Nest$mnative_queueHardwareBuffer(Landroid/media/MediaCodec;ILandroid/hardware/HardwareBuffer;JILjava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->clear()Landroid/media/MediaCodec$QueueRequest;

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist setAccessible(Z)Landroid/media/MediaCodec$QueueRequest;
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaCodec$QueueRequest;->mAccessible:Z

    return-object p0
.end method

.method public whitelist setByteBufferParameter(Ljava/lang/String;Ljava/nio/ByteBuffer;)Landroid/media/MediaCodec$QueueRequest;
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEncryptedLinearBlock(Landroid/media/MediaCodec$LinearBlock;IILandroid/media/MediaCodec$CryptoInfo;)Landroid/media/MediaCodec$QueueRequest;
    .locals 2

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    iput p2, p0, Landroid/media/MediaCodec$QueueRequest;->mOffset:I

    iput p3, p0, Landroid/media/MediaCodec$QueueRequest;->mSize:I

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set block twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFlags(I)Landroid/media/MediaCodec$QueueRequest;
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/media/MediaCodec$QueueRequest;->mFlags:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFloatParameter(Ljava/lang/String;F)Landroid/media/MediaCodec$QueueRequest;
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/media/MediaCodec$QueueRequest;
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set block twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setIntegerParameter(Ljava/lang/String;I)Landroid/media/MediaCodec$QueueRequest;
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLinearBlock(Landroid/media/MediaCodec$LinearBlock;II)Landroid/media/MediaCodec$QueueRequest;
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    iput p2, p0, Landroid/media/MediaCodec$QueueRequest;->mOffset:I

    iput p3, p0, Landroid/media/MediaCodec$QueueRequest;->mSize:I

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set block twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLongParameter(Ljava/lang/String;J)Landroid/media/MediaCodec$QueueRequest;
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMultiFrameEncryptedLinearBlock(Landroid/media/MediaCodec$LinearBlock;Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;)Landroid/media/MediaCodec$QueueRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaCodec$LinearBlock;",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$CryptoInfo;",
            ">;)",
            "Landroid/media/MediaCodec$QueueRequest;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p3}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set block twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMultiFrameLinearBlock(Landroid/media/MediaCodec$LinearBlock;Ljava/util/ArrayDeque;)Landroid/media/MediaCodec$QueueRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaCodec$LinearBlock;",
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;)",
            "Landroid/media/MediaCodec$QueueRequest;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/media/MediaCodec$QueueRequest;->mLinearBlock:Landroid/media/MediaCodec$LinearBlock;

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mBufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mCryptoInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set block twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPresentationTimeUs(J)Landroid/media/MediaCodec$QueueRequest;
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroid/media/MediaCodec$QueueRequest;->mPresentationTimeUs:J

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setStringParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaCodec$QueueRequest;
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/media/MediaCodec$QueueRequest;->mTuningValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The request is stale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
