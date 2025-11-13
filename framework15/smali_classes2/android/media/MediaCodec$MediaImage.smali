.class public Landroid/media/MediaCodec$MediaImage;
.super Landroid/media/Image;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$MediaImage$MediaPlane;
    }
.end annotation


# static fields
.field private static final greylist-max-o TYPE_YUV:I = 0x1


# instance fields
.field private final greylist-max-o mBuffer:Ljava/nio/ByteBuffer;

.field private final blacklist mBufferContext:J

.field private final greylist-max-o mFormat:I

.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mInfo:Ljava/nio/ByteBuffer;

.field private final greylist-max-o mIsReadOnly:Z

.field private final greylist-max-o mPlanes:[Landroid/media/Image$Plane;

.field private final greylist-max-o mScalingMode:I

.field private greylist-max-o mTimestamp:J

.field private final greylist-max-o mTransform:I

.field private final greylist-max-o mWidth:I

.field private final greylist-max-o mXOffset:I

.field private final greylist-max-o mYOffset:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZJIILandroid/graphics/Rect;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-direct/range {p0 .. p0}, Landroid/media/Image;-><init>()V

    const/4 v4, 0x0

    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mTransform:I

    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mScalingMode:I

    move-wide/from16 v5, p4

    iput-wide v5, v0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    const/4 v7, 0x1

    iput-boolean v7, v0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v8

    iput-boolean v8, v0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    iput v2, v0, Landroid/media/MediaCodec$MediaImage;->mXOffset:I

    iput v3, v0, Landroid/media/MediaCodec$MediaImage;->mYOffset:I

    move-object/from16 v8, p2

    iput-object v8, v0, Landroid/media/MediaCodec$MediaImage;->mInfo:Ljava/nio/ByteBuffer;

    const-wide/16 v9, 0x0

    iput-wide v9, v0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    const/16 v14, 0x68

    if-ne v13, v14, :cond_16

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    if-ne v13, v7, :cond_15

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_14

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    iput v15, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    iput v15, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    const-string v4, "x"

    if-lt v15, v7, :cond_13

    iget v15, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    if-lt v15, v7, :cond_13

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    const/16 v7, 0x8

    if-eq v15, v7, :cond_1

    const/16 v7, 0xa

    if-ne v15, v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported bit depth: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    const/16 v6, 0x10

    const/16 v7, 0x8

    if-eq v5, v7, :cond_3

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported allocated bit depth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    :goto_1
    const/16 v7, 0x23

    const/16 v6, 0x8

    if-ne v15, v6, :cond_4

    if-ne v5, v6, :cond_4

    iput v7, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/4 v6, 0x1

    const/4 v11, 0x2

    goto :goto_2

    :cond_4
    const/16 v6, 0xa

    if-ne v15, v6, :cond_12

    const/16 v6, 0x10

    if-ne v5, v6, :cond_12

    const/16 v6, 0x36

    iput v6, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/4 v6, 0x2

    const/4 v11, 0x4

    :goto_2
    new-array v12, v14, [Landroid/media/MediaCodec$MediaImage$MediaPlane;

    iput-object v12, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v14, :cond_d

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    move/from16 v19, v13

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    move/from16 v20, v14

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    if-ne v13, v14, :cond_b

    move/from16 v21, v5

    if-nez v12, :cond_5

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x2

    :goto_4
    if-ne v13, v5, :cond_c

    const/4 v5, 0x1

    if-lt v7, v5, :cond_a

    if-lt v8, v5, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v5, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int v5, v5, v18

    div-int v22, v2, v13

    mul-int v22, v22, v7

    add-int v5, v5, v22

    div-int v22, v3, v14

    mul-int v22, v22, v8

    add-int v5, v5, v22

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    const/16 v3, 0x8

    invoke-static {v15, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v17

    add-int v5, v5, v17

    iget v3, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    div-int/2addr v3, v14

    const/16 v16, 0x1

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v8

    add-int/2addr v5, v3

    iget v3, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    div-int/2addr v3, v13

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v7

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    new-instance v5, Landroid/media/MediaCodec$MediaImage$MediaPlane;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v5, v0, v1, v8, v7}, Landroid/media/MediaCodec$MediaImage$MediaPlane;-><init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V

    aput-object v5, v3, v12

    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v3, 0x23

    if-eq v1, v3, :cond_6

    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v3, 0x36

    if-ne v1, v3, :cond_7

    :cond_6
    const/4 v1, 0x1

    if-ne v12, v1, :cond_7

    move/from16 v1, v18

    move v9, v1

    const/16 v3, 0x23

    goto :goto_5

    :cond_7
    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v3, 0x23

    if-eq v1, v3, :cond_8

    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v5, 0x36

    if-ne v1, v5, :cond_9

    :cond_8
    const/4 v1, 0x2

    if-ne v12, v1, :cond_9

    move/from16 v1, v18

    move v10, v1

    :cond_9
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move v7, v3

    move/from16 v13, v19

    move/from16 v14, v20

    move/from16 v5, v21

    move/from16 v3, p7

    goto/16 :goto_3

    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected strides: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pixel, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " row on plane "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    move/from16 v21, v5

    :cond_c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected subsampling: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on plane "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    move/from16 v21, v5

    move/from16 v19, v13

    move/from16 v20, v14

    nop

    iget v1, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    const/16 v3, 0x36

    if-ne v1, v3, :cond_10

    add-int v1, v9, v6

    if-ne v10, v1, :cond_f

    iget-object v1, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-ne v1, v11, :cond_e

    iget-object v1, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-ne v1, v11, :cond_e

    goto :goto_6

    :cond_e
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Invalid pixelStride"

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid plane offsets cbPlaneOffset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " crPlaneOffset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_6
    if-nez p8, :cond_11

    new-instance v1, Landroid/graphics/Rect;

    iget v3, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    iget v4, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    const/4 v5, 0x0

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_7

    :cond_11
    move-object/from16 v1, p8

    :goto_7
    neg-int v3, v2

    move/from16 v5, p7

    neg-int v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    invoke-super {v0, v1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    return-void

    :cond_12
    move/from16 v21, v5

    move/from16 v19, v13

    move/from16 v20, v14

    move v5, v3

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t infer ImageFormat bitDepth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bitDepthAllocated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, v21

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    move v5, v3

    move/from16 v19, v13

    move/from16 v20, v14

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported size: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    move v5, v3

    move/from16 v20, v14

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected number of planes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    move v5, v3

    move/from16 v19, v13

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v4, v19

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    move v5, v3

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported info length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>([Ljava/nio/ByteBuffer;[I[IIIIZJIILandroid/graphics/Rect;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p10

    move/from16 v5, p11

    invoke-direct/range {p0 .. p0}, Landroid/media/Image;-><init>()V

    const/4 v6, 0x0

    iput v6, v0, Landroid/media/MediaCodec$MediaImage;->mTransform:I

    iput v6, v0, Landroid/media/MediaCodec$MediaImage;->mScalingMode:I

    array-length v7, v1

    array-length v8, v2

    if-ne v7, v8, :cond_2

    array-length v7, v1

    array-length v8, v3

    if-ne v7, v8, :cond_2

    move/from16 v7, p4

    iput v7, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    move/from16 v8, p5

    iput v8, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    move/from16 v9, p6

    iput v9, v0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    move-wide/from16 v10, p8

    iput-wide v10, v0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    const/4 v12, 0x1

    iput-boolean v12, v0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    move/from16 v12, p7

    iput-boolean v12, v0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    const/4 v13, 0x0

    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mInfo:Ljava/nio/ByteBuffer;

    array-length v13, v1

    new-array v13, v13, [Landroid/media/MediaCodec$MediaImage$MediaPlane;

    iput-object v13, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    const/4 v13, 0x0

    :goto_0
    array-length v14, v1

    if-ge v13, v14, :cond_0

    iget-object v14, v0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    new-instance v15, Landroid/media/MediaCodec$MediaImage$MediaPlane;

    aget-object v6, v1, v13

    aget v1, v2, v13

    aget v2, v3, v13

    invoke-direct {v15, v0, v6, v1, v2}, Landroid/media/MediaCodec$MediaImage$MediaPlane;-><init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V

    aput-object v15, v14, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    iput v4, v0, Landroid/media/MediaCodec$MediaImage;->mXOffset:I

    iput v5, v0, Landroid/media/MediaCodec$MediaImage;->mYOffset:I

    if-nez p12, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    iget v6, v0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    const/4 v13, 0x0

    invoke-direct {v1, v13, v13, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_1

    :cond_1
    move-object/from16 v1, p12

    :goto_1
    neg-int v2, v4

    neg-int v6, v5

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    invoke-super {v0, v1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    return-void

    :cond_2
    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v12, p7

    move-wide/from16 v10, p8

    move-wide/from16 v13, p13

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "buffers, rowStrides and pixelStrides should have the same length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 4

    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_0
    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mBufferContext:J

    invoke-static {v0, v1}, Landroid/media/MediaCodec;->-$$Nest$smnative_closeMediaImage(J)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsImageValid:Z

    :cond_2
    return-void
.end method

.method public whitelist getFormat()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mFormat:I

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mHeight:I

    return v0
.end method

.method public whitelist getPlanes()[Landroid/media/Image$Plane;
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    iget-object v1, p0, Landroid/media/MediaCodec$MediaImage;->mPlanes:[Landroid/media/Image$Plane;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0
.end method

.method public greylist-max-o getScalingMode()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTimestamp()J
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget-wide v0, p0, Landroid/media/MediaCodec$MediaImage;->mTimestamp:J

    return-wide v0
.end method

.method public greylist-max-o getTransform()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getWidth()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/MediaCodec$MediaImage;->mWidth:I

    return v0
.end method

.method public whitelist setCropRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaCodec$MediaImage;->mIsReadOnly:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method
