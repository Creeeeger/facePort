.class public Lcom/samsung/android/motionphoto/utils/HEIFParser;
.super Ljava/lang/Object;
.source "HEIFParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;,
        Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;,
        Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "HEIFParser"


# instance fields
.field blacklist locationList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mCoverImageID:I

.field blacklist mData:Ljava/io/InputStream;

.field blacklist mFileSize:J

.field blacklist mFlags:I

.field blacklist mFoundiinfChunk:I

.field blacklist mFoundilocChunk:I

.field blacklist mFoundirefChunk:I

.field blacklist mFoundpitmChunk:I

.field blacklist mOffset:J

.field blacklist mRemainChunkSize:I

.field blacklist mVersion:I

.field blacklist mXMPMetadataIDs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mXMPOffset:J

.field blacklist mXMPSize:J

.field blacklist referenceList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPMetadataIDs:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->referenceList:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->locationList:Ljava/util/Vector;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mCoverImageID:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPOffset:J

    iput-wide v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPSize:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFlags:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    iput-wide v1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFileSize:J

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundiinfChunk:I

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundpitmChunk:I

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundirefChunk:I

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundilocChunk:I

    return-void
.end method

.method private blacklist byte2toUInt32([B)J
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-gez v1, :cond_0

    aget-byte v0, p1, v0

    add-int/lit16 v0, v0, 0x100

    goto :goto_0

    :cond_0
    aget-byte v0, p1, v0

    :goto_0
    int-to-long v0, v0

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    if-gez v3, :cond_1

    aget-byte v2, p1, v2

    add-int/lit16 v2, v2, 0x100

    goto :goto_1

    :cond_1
    aget-byte v2, p1, v2

    :goto_1
    int-to-long v2, v2

    const/4 v4, 0x2

    aget-byte v5, p1, v4

    if-gez v5, :cond_2

    aget-byte v4, p1, v4

    add-int/lit16 v4, v4, 0x100

    goto :goto_2

    :cond_2
    aget-byte v4, p1, v4

    :goto_2
    int-to-long v4, v4

    const/4 v6, 0x3

    aget-byte v7, p1, v6

    if-gez v7, :cond_3

    aget-byte p1, p1, v6

    add-int/lit16 p1, p1, 0x100

    goto :goto_3

    :cond_3
    aget-byte p1, p1, v6

    :goto_3
    int-to-long v6, p1

    const/16 p1, 0x18

    shl-long/2addr v0, p1

    const/16 p1, 0x10

    shl-long/2addr v2, p1

    add-long/2addr v0, v2

    const/16 p1, 0x8

    shl-long v2, v4, p1

    add-long/2addr v0, v2

    add-long/2addr v0, v6

    return-wide v0
.end method

.method private blacklist bytetoUInt16([B)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-gez v1, :cond_0

    aget-byte v1, p1, v0

    add-int/lit16 v1, v1, 0x100

    goto :goto_0

    :cond_0
    aget-byte v1, p1, v0

    :goto_0
    const/4 v2, 0x1

    aget-byte v3, p1, v2

    if-gez v3, :cond_1

    aget-byte p1, p1, v2

    add-int/lit16 p1, p1, 0x100

    goto :goto_1

    :cond_1
    aget-byte p1, p1, v2

    :goto_1
    shl-int/lit8 v1, v1, 0x8

    shl-int/2addr p1, v0

    add-int/2addr v1, p1

    return v1
.end method

.method private blacklist parseFullBoxHeader()I
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v0, :cond_0

    return v2

    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v5, 0x4

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    invoke-direct {p0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v0

    long-to-int v0, v0

    shr-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    return v4

    :catch_0
    move-exception v0

    return v2
.end method

.method private blacklist parseIinfBox()I
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseFullBoxHeader()I

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    const/4 v3, 0x4

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    new-array v1, v3, [B

    iget v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    const/4 v5, 0x2

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    :try_start_0
    iget-object v6, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    if-eq v6, v4, :cond_2

    return v2

    :cond_2
    iget-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v10, v4

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    iget v6, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    sub-int/2addr v6, v4

    iput v6, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    if-ne v4, v5, :cond_3

    invoke-direct {v0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v4

    goto :goto_1

    :cond_3
    invoke-direct {v0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v8

    long-to-int v4, v8

    :goto_1
    move v6, v7

    :goto_2
    const-string v8, "HEIFParser"

    if-ge v6, v4, :cond_e

    :try_start_1
    iget-object v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v9, v1, v7, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-eq v9, v3, :cond_4

    return v2

    :cond_4
    invoke-direct {v0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v13, 0x4

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    iget v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    int-to-long v11, v11

    sub-long/2addr v11, v9

    long-to-int v11, v11

    iput v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    sub-long/2addr v9, v13

    :try_start_2
    iget-object v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v11, v1, v7, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-eq v11, v3, :cond_5

    return v2

    :cond_5
    iget-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v11, v13

    iput-wide v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v9, v13

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>([B)V

    const-string v12, "infe"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "Exception: "

    if-nez v11, :cond_6

    iget-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v13, v9

    iput-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    :try_start_3
    iget-object v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v11, v9, v10}, Ljava/io/InputStream;->skip(J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v11, v6

    move v6, v3

    goto/16 :goto_6

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseFullBoxHeader()I

    move-result v11

    if-eqz v11, :cond_7

    return v2

    :cond_7
    sub-long/2addr v9, v13

    iget v11, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    if-ge v11, v5, :cond_8

    return v2

    :cond_8
    if-ne v11, v5, :cond_9

    move v11, v5

    goto :goto_3

    :cond_9
    move v11, v3

    :goto_3
    :try_start_4
    iget-object v15, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v15, v1, v7, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-eq v15, v11, :cond_a

    return v2

    :cond_a
    iget-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v2, v11

    add-long/2addr v13, v2

    iput-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v9, v2

    if-ne v11, v5, :cond_b

    invoke-direct {v0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v2

    goto :goto_4

    :cond_b
    invoke-direct {v0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v2

    long-to-int v2, v2

    :goto_4
    iget-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    move v11, v6

    const-wide/16 v5, 0x2

    add-long/2addr v13, v5

    iput-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v9, v5

    :try_start_5
    iget-object v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v13, v5, v6}, Ljava/io/InputStream;->skip(J)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    iget-object v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v6, 0x4

    invoke-virtual {v5, v1, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-eq v5, v6, :cond_c

    const/4 v1, -0x1

    return v1

    :cond_c
    iget-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v15, 0x4

    add-long/2addr v13, v15

    iput-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v9, v15

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    const-string v13, "mime"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPMetadataIDs:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v13, v9

    iput-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    goto :goto_5

    :cond_d
    iget-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v13, v9

    iput-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    :goto_5
    :try_start_7
    iget-object v2, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v2, v9, v10}, Ljava/io/InputStream;->skip(J)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :goto_6
    nop

    add-int/lit8 v2, v11, 0x1

    move v3, v6

    const/4 v5, 0x2

    move v6, v2

    const/4 v2, -0x1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :catch_2
    move-exception v0

    const/4 v1, -0x1

    return v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :catch_4
    move-exception v0

    move v1, v2

    return v1

    :catch_5
    move-exception v0

    move v1, v2

    return v1

    :catch_6
    move-exception v0

    move v1, v2

    return v1

    :cond_e
    nop

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundiinfChunk:I

    const-string v0, "Found iinf Chunk"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :catch_7
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method private blacklist parseIlocBox()I
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v2, v1, [B

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseFullBoxHeader()I

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    return v4

    :cond_0
    iget v3, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    const/4 v5, 0x2

    if-le v3, v5, :cond_1

    return v4

    :cond_1
    :try_start_0
    iget-object v3, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    aget-byte v8, v2, v7

    if-eq v3, v6, :cond_2

    return v4

    :cond_2
    iget-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    and-int/lit8 v3, v8, 0xf

    shr-int/2addr v8, v1

    :try_start_1
    iget-object v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v9, v2, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    aget-byte v10, v2, v7

    if-eq v9, v6, :cond_3

    return v4

    :cond_3
    iget-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v13, v11

    iput-wide v13, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    iget v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    if-eqz v9, :cond_5

    if-ne v9, v6, :cond_4

    goto :goto_0

    :cond_4
    move v11, v7

    goto :goto_1

    :cond_5
    :goto_0
    and-int/lit8 v11, v10, 0xf

    :goto_1
    shr-int/2addr v10, v1

    if-ge v9, v5, :cond_6

    move v1, v5

    :cond_6
    :try_start_2
    iget-object v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v9, v2, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    if-eq v9, v1, :cond_7

    return v4

    :cond_7
    iget-wide v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v14, v1

    add-long/2addr v12, v14

    iput-wide v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    if-ne v1, v5, :cond_8

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v9

    goto :goto_2

    :cond_8
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v12

    long-to-int v9, v12

    :goto_2
    const-wide/16 v12, 0x0

    move v6, v7

    :goto_3
    const-string v5, "HEIFParser"

    if-ge v6, v9, :cond_15

    :try_start_3
    iget-object v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v4, v2, v7, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    if-eq v4, v1, :cond_9

    const/4 v1, -0x1

    return v1

    :cond_9
    move/from16 v16, v8

    iget-wide v7, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v7, v14

    iput-wide v7, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const/4 v7, 0x2

    if-ne v1, v7, :cond_a

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v7

    goto :goto_4

    :cond_a
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v7

    long-to-int v7, v7

    :goto_4
    iget v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    const-string v4, "Exception: "

    move-wide/from16 v18, v12

    const/4 v12, 0x1

    if-eq v8, v12, :cond_c

    const/4 v12, 0x2

    if-ne v8, v12, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v21, v9

    const-wide/16 v8, 0x2

    goto :goto_6

    :cond_c
    :goto_5
    iget-wide v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    move/from16 v21, v9

    const-wide/16 v8, 0x2

    add-long/2addr v12, v8

    iput-wide v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    :try_start_4
    iget-object v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v12, v8, v9}, Ljava/io/InputStream;->skip(J)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :goto_6
    iget-wide v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v12, v8

    iput-wide v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    :try_start_5
    iget-object v12, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v12, v8, v9}, Ljava/io/InputStream;->skip(J)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    if-lez v10, :cond_f

    :try_start_6
    iget-object v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_d

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v5

    int-to-long v12, v5

    goto :goto_7

    :cond_d
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v12

    :goto_7
    if-eq v8, v10, :cond_e

    const/4 v1, -0x1

    return v1

    :cond_e
    iget-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v4, v10

    add-long/2addr v8, v4

    iput-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    goto :goto_8

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1

    :cond_f
    move-wide/from16 v12, v18

    :goto_8
    :try_start_7
    iget-object v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v5, 0x2

    const/4 v8, 0x0

    invoke-virtual {v4, v2, v8, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v8

    if-eq v9, v5, :cond_10

    const/4 v9, -0x1

    return v9

    :cond_10
    const/4 v9, -0x1

    iget-wide v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v18, 0x2

    add-long v4, v4, v18

    iput-wide v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const/4 v4, 0x1

    if-eq v8, v4, :cond_11

    return v9

    :cond_11
    :try_start_8
    iget-object v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    if-eq v8, v11, :cond_12

    return v9

    :cond_12
    iget-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v4, v11

    add-long/2addr v8, v4

    iput-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    :try_start_9
    iget-object v4, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    move/from16 v5, v16

    const/4 v8, 0x0

    invoke-virtual {v4, v2, v8, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move/from16 v16, v10

    move v8, v11

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v10

    if-eq v9, v5, :cond_13

    const/4 v1, -0x1

    return v1

    :cond_13
    move/from16 v17, v8

    iget-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    move-wide/from16 v18, v14

    int-to-long v14, v5

    add-long/2addr v8, v14

    iput-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    :try_start_a
    iget-object v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v14

    if-eq v8, v3, :cond_14

    const/4 v1, -0x1

    return v1

    :cond_14
    iget-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    move/from16 v20, v5

    int-to-long v4, v3

    add-long/2addr v8, v4

    iput-wide v8, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    new-instance v4, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;

    invoke-direct {v4, v0}, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;-><init>(Lcom/samsung/android/motionphoto/utils/HEIFParser;)V

    iput-wide v12, v4, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->base_offset:J

    int-to-long v7, v7

    iput-wide v7, v4, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->itemID:J

    iput-wide v10, v4, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->offset:J

    iput-wide v14, v4, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->length:J

    iget-object v5, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->locationList:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move/from16 v10, v16

    move/from16 v11, v17

    move-wide/from16 v14, v18

    move/from16 v8, v20

    move/from16 v9, v21

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    const/4 v1, -0x1

    return v1

    :catch_2
    move-exception v0

    const/4 v1, -0x1

    return v1

    :catch_3
    move-exception v0

    move v1, v9

    return v1

    :catch_4
    move-exception v0

    const/4 v1, -0x1

    return v1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, -0x1

    return v1

    :cond_15
    nop

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundilocChunk:I

    const-string v0, "Found iloc Chunk"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :catch_8
    move-exception v0

    const/4 v1, -0x1

    return v1

    :catch_9
    move-exception v0

    move v1, v4

    return v1

    :catch_a
    move-exception v0

    move v1, v4

    return v1
.end method

.method private blacklist parseIrefBox(J)I
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunk_size"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v2, v1, [B

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseFullBoxHeader()I

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    return v4

    :cond_0
    const-wide/16 v5, 0x4

    sub-long v7, p1, v5

    iget v3, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    if-nez v3, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v10, v7, v10

    const-string v11, "HEIFParser"

    const/4 v12, 0x0

    if-lez v10, :cond_a

    :try_start_0
    iget-object v10, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v10, v2, v12, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eq v10, v1, :cond_2

    return v4

    :cond_2
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v13

    iget-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v9, v5

    iput-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v7, v5

    :try_start_1
    iget-object v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v9, v2, v12, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eq v9, v1, :cond_3

    return v4

    :cond_3
    iget-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v9, v5

    iput-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v7, v5

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>([B)V

    const-string v10, "cdsc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    :try_start_2
    iget-object v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v9, v2, v12, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eq v9, v3, :cond_4

    return v4

    :cond_4
    iget-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v13, v3

    add-long/2addr v9, v13

    iput-wide v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v7, v13

    const/4 v9, 0x2

    if-ne v3, v9, :cond_5

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v9

    goto :goto_1

    :cond_5
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v9

    long-to-int v9, v9

    :goto_1
    iget-wide v10, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v15, 0x2

    add-long/2addr v10, v15

    iput-wide v10, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v7, v15

    :try_start_3
    iget-object v10, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v11, 0x2

    invoke-virtual {v10, v2, v12, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eq v10, v11, :cond_6

    return v4

    :cond_6
    :try_start_4
    iget-object v10, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v10, v2, v12, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eq v10, v3, :cond_7

    return v4

    :cond_7
    iget-wide v10, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v10, v13

    iput-wide v10, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v7, v13

    const/4 v10, 0x2

    if-ne v3, v10, :cond_8

    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v11

    goto :goto_2

    :cond_8
    invoke-direct {v0, v2}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v11

    long-to-int v11, v11

    :goto_2
    new-instance v12, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;

    invoke-direct {v12, v0}, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;-><init>(Lcom/samsung/android/motionphoto/utils/HEIFParser;)V

    iput v9, v12, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;->itemID:I

    iget-object v9, v12, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;->referenceItems:Ljava/util/Vector;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v9, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->referenceList:Ljava/util/Vector;

    invoke-virtual {v9, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v15, v2

    goto :goto_3

    :catch_0
    move-exception v0

    return v4

    :catch_1
    move-exception v0

    return v4

    :catch_2
    move-exception v0

    return v4

    :cond_9
    const/4 v10, 0x2

    move-object v15, v2

    iget-wide v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v16, 0x8

    sub-long v13, v13, v16

    add-long/2addr v1, v13

    iput-wide v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v7, v13

    :try_start_5
    iget-object v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v1, v13, v14}, Ljava/io/InputStream;->skip(J)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    move-object v2, v15

    const/4 v1, 0x4

    goto/16 :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_4
    move-exception v0

    return v4

    :catch_5
    move-exception v0

    return v4

    :cond_a
    if-gez v10, :cond_b

    return v4

    :cond_b
    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundirefChunk:I

    const-string v0, "Found iref Chunk"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v12
.end method

.method private blacklist parsePitmBox()I
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [B

    invoke-direct {p0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseFullBoxHeader()I

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mVersion:I

    const/4 v4, 0x2

    if-nez v2, :cond_1

    move v0, v4

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v0, :cond_2

    return v3

    :cond_2
    iget-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    int-to-long v6, v0

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mRemainChunkSize:I

    if-ne v0, v4, :cond_3

    invoke-direct {p0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->bytetoUInt16([B)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mCoverImageID:I

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mCoverImageID:I

    :goto_0
    nop

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundpitmChunk:I

    return v5

    :catch_0
    move-exception v0

    return v3
.end method


# virtual methods
.method public blacklist getCoverImageXMPOffsetAndSize(Ljava/io/InputStream;)Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    const-string v0, "HEIFParser"

    iput-object p1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    const/4 p1, 0x4

    new-array v1, p1, [B

    :goto_0
    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundiinfChunk:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_5

    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundpitmChunk:I

    if-ne v2, v4, :cond_5

    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundirefChunk:I

    if-ne v2, v4, :cond_5

    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mFoundilocChunk:I

    if-eq v2, v4, :cond_0

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPMetadataIDs:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_1

    return-object v5

    :cond_1
    move p1, v3

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->referenceList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->referenceList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;

    iget-object v1, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;->referenceItems:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v0, v0, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemReference;->itemID:I

    iget v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mCoverImageID:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mXMPMetadataIDs:Ljava/util/Vector;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->locationList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->locationList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;

    iget-wide v6, v2, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->itemID:J

    int-to-long v8, v0

    cmp-long v4, v6, v8

    if-nez v4, :cond_2

    new-instance p1, Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;

    iget-wide v0, v2, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->base_offset:J

    iget-wide v3, v2, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->offset:J

    add-long v8, v0, v3

    iget-wide v10, v2, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->length:J

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;-><init>(Lcom/samsung/android/motionphoto/utils/HEIFParser;JJ)V

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-object v5

    :cond_5
    :goto_3
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v2, v1, v3, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eq v2, p1, :cond_6

    return-object v5

    :cond_6
    iget-wide v6, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    const-wide/16 v8, 0x4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    invoke-direct {p0, v1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->byte2toUInt32([B)J

    move-result-wide v6

    sub-long/2addr v6, v8

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v2, v1, v3, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eq v2, p1, :cond_7

    return-object v5

    :cond_7
    iget-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    sub-long/2addr v6, v8

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v3, "iinf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseIinfBox()I

    goto/16 :goto_0

    :cond_8
    nop

    const-string v3, "iref"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseIrefBox(J)I

    goto/16 :goto_0

    :cond_9
    nop

    const-string v3, "pitm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parsePitmBox()I

    goto/16 :goto_0

    :cond_a
    nop

    const-string v3, "iloc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->parseIlocBox()I

    goto/16 :goto_0

    :cond_b
    nop

    const-string v3, "meta"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Exception: "

    if-eqz v2, :cond_c

    iget-wide v6, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v2, v8, v9}, Ljava/io/InputStream;->skip(J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_c
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mData:Ljava/io/InputStream;

    invoke-virtual {v2, v6, v7}, Ljava/io/InputStream;->skip(J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    iget-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser;->mOffset:J

    goto/16 :goto_0

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catch_2
    move-exception p1

    const-string p1, "read fail"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :catch_3
    move-exception p1

    return-object v5
.end method
