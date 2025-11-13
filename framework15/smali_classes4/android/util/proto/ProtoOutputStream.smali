.class public final Landroid/util/proto/ProtoOutputStream;
.super Landroid/util/proto/ProtoStream;
.source "ProtoOutputStream.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "ProtoOutputStream"


# instance fields
.field private greylist-max-o mBuffer:Landroid/util/proto/EncodedBuffer;

.field private greylist-max-o mCompacted:Z

.field private greylist-max-o mCopyBegin:I

.field private greylist-max-o mDepth:I

.field private greylist-max-o mExpectedObjectToken:J

.field private greylist-max-o mNextObjectId:I

.field private greylist-max-o mStream:Ljava/io/OutputStream;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/util/proto/ProtoStream;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    new-instance v0, Landroid/util/proto/EncodedBuffer;

    invoke-direct {v0, p1}, Landroid/util/proto/EncodedBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    iput-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    return-void
.end method

.method private greylist-max-o assertNotCompacted()V
    .locals 2

    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "write called after compact"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist checkFieldId(JJ)I
    .locals 20

    move-wide/from16 v0, p0

    const-wide v2, 0xf0000000000L

    and-long v4, v0, v2

    const-wide v6, 0xff00000000L

    and-long v8, v0, v6

    and-long v2, p2, v2

    and-long v6, p2, v6

    long-to-int v10, v0

    if-eqz v10, :cond_7

    cmp-long v10, v8, v6

    const-wide v11, 0x50000000000L

    if-nez v10, :cond_1

    cmp-long v10, v4, v2

    if-eqz v10, :cond_0

    cmp-long v10, v4, v11

    if-nez v10, :cond_1

    const-wide v13, 0x20000000000L

    cmp-long v10, v2, v13

    if-eqz v10, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v10, v0

    return v10

    :cond_1
    :goto_0
    invoke-static {v4, v5}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "start"

    const-string/jumbo v14, "write"

    const-wide v16, 0xb00000000L

    if-eqz v13, :cond_5

    if-eqz v10, :cond_5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v18

    cmp-long v18, v6, v16

    if-nez v18, :cond_2

    move-object/from16 v11, v19

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move-object/from16 v11, v19

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-static {v2, v3}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " called for field "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " which should be used with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v12, v8, v16

    if-nez v12, :cond_3

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v14, 0x50000000000L

    cmp-long v12, v4, v14

    if-nez v12, :cond_4

    const-string v12, " or writeRepeated"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/16 v12, 0x2e

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v12, v6, v16

    if-nez v12, :cond_6

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-static {v2, v3}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " called with an invalid fieldId: 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ". The proto field ID might be "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v12, 0x2e

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_7
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid proto field "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    long-to-int v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " fieldId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private greylist-max-o compactIfNecessary()V
    .locals 4

    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->rewindRead()V

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    iget v3, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    sub-int v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    :cond_0
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to compact with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " missing calls to endObject"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private greylist-max-o compactSizes(I)V
    .locals 9

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    add-int v1, v0, p1

    :goto_0
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v2}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v2

    move v3, v2

    if-ge v2, v1, :cond_2

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    move-result v2

    and-int/lit8 v4, v2, 0x7

    packed-switch v4, :pswitch_data_0

    new-instance v5, Landroid/util/proto/ProtoParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compactSizes Bad tag tag=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wireType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_2

    :pswitch_1
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "groups not supported at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_2
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget v6, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    iget v8, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v5}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v5

    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v6}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v6

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7, v6}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    iput v7, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    if-ltz v5, :cond_0

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_2

    :cond_0
    neg-int v7, v5

    invoke-direct {p0, v7}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    goto :goto_2

    :pswitch_3
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_2

    :goto_1
    :pswitch_4
    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v5}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o editEncodedSize(I)I
    .locals 12

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    add-int v1, v0, p1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v3}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v3

    move v4, v3

    if-ge v3, v1, :cond_3

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    move-result v3

    invoke-static {v3}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v5

    add-int/2addr v2, v5

    and-int/lit8 v5, v3, 0x7

    packed-switch v5, :pswitch_data_0

    new-instance v6, Landroid/util/proto/ProtoParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "editEncodedSize Bad tag tag=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " wireType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v8}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    add-int/lit8 v2, v2, 0x4

    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto/16 :goto_3

    :pswitch_1
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "groups not supported at index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_2
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v6}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v6

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    iget-object v8, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v8}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v8

    if-ltz v6, :cond_1

    if-ne v8, v6, :cond_0

    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9, v6}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_1

    :cond_0
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pre-computed size where the precomputed size and the raw size in the buffer don\'t match! childRawSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " childEncodedSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " childEncodedSizePos="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    neg-int v9, v6

    invoke-direct {p0, v9}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    move-result v8

    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9, v7, v8}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    :goto_1
    invoke-static {v8}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v9

    add-int/2addr v9, v8

    add-int/2addr v2, v9

    goto :goto_3

    :pswitch_3
    add-int/lit8 v2, v2, 0x8

    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_3

    :pswitch_4
    add-int/lit8 v2, v2, 0x1

    :goto_2
    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v6}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    goto/16 :goto_0

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o endObjectImpl(JZ)V
    .locals 10

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getDepthFromToken(J)I

    move-result v0

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    move-result v1

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getOffsetFromToken(J)I

    move-result v2

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v3}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x8

    if-eq p3, v1, :cond_1

    if-eqz p3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "endRepeatedObject called where endObject should have been"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "endObject called where endRepeatedObject should have been"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    and-int/lit16 v4, v4, 0x1ff

    if-ne v4, v0, :cond_4

    iget-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v4, v2}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v7, v2, 0x4

    invoke-virtual {v6, v7}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-lez v3, :cond_2

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    neg-int v5, v3

    invoke-virtual {v4, v2, v5}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v5, v2, 0x4

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v6, v2, 0x4

    invoke-virtual {v4, v6, v5}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getTagSizeFromToken(J)I

    move-result v5

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->rewindWriteTo(I)V

    :goto_0
    return-void

    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mismatched startObject/endObject calls. Current depth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " expectedToken="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static greylist-max-o getTagSize(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    invoke-static {v0}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static whitelist makeFieldId(IJ)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr v0, p1

    return-wide v0
.end method

.method private greylist-max-o readRawTag()I
    .locals 2

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->readRawUnsigned()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private greylist-max-o startObjectImpl(IZ)J
    .locals 6

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v0

    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-wide v2, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-wide v2, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    iget-wide v1, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    invoke-static {p1}, Landroid/util/proto/ProtoOutputStream;->getTagSize(I)I

    move-result v3

    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    iget v5, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    invoke-static {v3, p2, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->makeToken(IZIII)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    iget-wide v3, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    return-wide v3
.end method

.method private greylist-max-o writeBoolImpl(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    :cond_0
    return-void
.end method

.method private greylist-max-o writeBytesImpl(I[B)V
    .locals 1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    :cond_0
    return-void
.end method

.method private greylist-max-o writeDoubleImpl(ID)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    :cond_0
    return-void
.end method

.method private greylist-max-o writeEnumImpl(II)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o writeFixed32Impl(II)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o writeFixed64Impl(IJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    :cond_0
    return-void
.end method

.method private greylist-max-o writeFloatImpl(IF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o writeInt32Impl(II)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o writeInt64Impl(IJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    :cond_0
    return-void
.end method

.method private greylist-max-o writeKnownLengthHeader(II)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    return-void
.end method

.method private greylist-max-o writeRepeatedBoolImpl(IZ)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    return-void
.end method

.method private greylist-max-o writeRepeatedBytesImpl(I[B)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    return-void
.end method

.method private greylist-max-o writeRepeatedDoubleImpl(ID)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    return-void
.end method

.method private greylist-max-o writeRepeatedEnumImpl(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    return-void
.end method

.method private greylist-max-o writeRepeatedFixed32Impl(II)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    return-void
.end method

.method private greylist-max-o writeRepeatedFixed64Impl(IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    return-void
.end method

.method private greylist-max-o writeRepeatedFloatImpl(IF)V
    .locals 2

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    return-void
.end method

.method private greylist-max-o writeRepeatedInt32Impl(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    return-void
.end method

.method private greylist-max-o writeRepeatedInt64Impl(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    return-void
.end method

.method private greylist-max-o writeRepeatedSFixed32Impl(II)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    return-void
.end method

.method private greylist-max-o writeRepeatedSFixed64Impl(IJ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    return-void
.end method

.method private greylist-max-o writeRepeatedSInt32Impl(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    return-void
.end method

.method private greylist-max-o writeRepeatedSInt64Impl(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    return-void
.end method

.method private greylist-max-o writeRepeatedStringImpl(ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    :goto_1
    return-void
.end method

.method private greylist-max-o writeRepeatedUInt32Impl(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    return-void
.end method

.method private greylist-max-o writeRepeatedUInt64Impl(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    return-void
.end method

.method private greylist-max-o writeSFixed32Impl(II)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o writeSFixed64Impl(IJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    :cond_0
    return-void
.end method

.method private greylist-max-o writeSInt32Impl(II)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o writeSInt64Impl(IJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    :cond_0
    return-void
.end method

.method private greylist-max-o writeStringImpl(ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private greylist-max-o writeUInt32Impl(II)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o writeUInt64Impl(IJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    :cond_0
    return-void
.end method

.method private greylist-max-o writeUnsignedVarintFromSignedInt(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    :goto_0
    return-void
.end method

.method private greylist-max-o writeUtf8String(ILjava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1, v0}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "not possible"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist dump(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->dumpBuffers(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist end(J)V
    .locals 1

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    return-void
.end method

.method public blacklist endObject(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    return-void
.end method

.method public blacklist endRepeatedObject(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    return-void
.end method

.method public whitelist flush()V
    .locals 4

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error flushing proto to stream"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist getBytes()[B
    .locals 2

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRawSize()I
    .locals 1

    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getSize()I

    move-result v0

    return v0
.end method

.method public whitelist start(J)J
    .locals 5

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xff00000000L

    and-long/2addr v1, p1

    const-wide v3, 0xb00000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    const-wide v1, 0xf0000000000L

    and-long/2addr v1, p1

    const-wide v3, 0x10000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v3

    return-wide v3

    :cond_0
    const-wide v3, 0x20000000000L

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    const-wide v3, 0x50000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v3

    return-wide v3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call start(long) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist startObject(J)J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist startRepeatedObject(J)J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist write(JD)V
    .locals 6

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, double) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto/16 :goto_2

    :sswitch_1
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto/16 :goto_2

    :sswitch_2
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto/16 :goto_2

    :sswitch_3
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto/16 :goto_2

    :sswitch_4
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto/16 :goto_2

    :sswitch_5
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto/16 :goto_2

    :sswitch_6
    cmpl-double v1, p3, v4

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto/16 :goto_2

    :sswitch_7
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto/16 :goto_2

    :sswitch_8
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto/16 :goto_2

    :sswitch_9
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto/16 :goto_2

    :sswitch_a
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto/16 :goto_2

    :sswitch_b
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto :goto_2

    :sswitch_c
    double-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_2

    :sswitch_d
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_2

    :sswitch_e
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_2

    :sswitch_f
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_2

    :sswitch_10
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_2

    :sswitch_11
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_2

    :sswitch_12
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    goto :goto_2

    :sswitch_13
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_2

    :sswitch_14
    cmpl-double v1, p3, v4

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_2

    :sswitch_15
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_2

    :sswitch_16
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_2

    :sswitch_17
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_2

    :sswitch_18
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_2

    :sswitch_19
    double-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_2

    :sswitch_1a
    double-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_2

    :sswitch_1b
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    nop

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_1b
        0x102 -> :sswitch_1a
        0x103 -> :sswitch_19
        0x104 -> :sswitch_18
        0x105 -> :sswitch_17
        0x106 -> :sswitch_16
        0x107 -> :sswitch_15
        0x108 -> :sswitch_14
        0x10d -> :sswitch_13
        0x10e -> :sswitch_12
        0x10f -> :sswitch_11
        0x110 -> :sswitch_10
        0x111 -> :sswitch_f
        0x112 -> :sswitch_e
        0x201 -> :sswitch_d
        0x202 -> :sswitch_c
        0x203 -> :sswitch_b
        0x204 -> :sswitch_a
        0x205 -> :sswitch_9
        0x206 -> :sswitch_8
        0x207 -> :sswitch_7
        0x208 -> :sswitch_6
        0x20d -> :sswitch_5
        0x20e -> :sswitch_4
        0x20f -> :sswitch_3
        0x210 -> :sswitch_2
        0x211 -> :sswitch_1
        0x212 -> :sswitch_0
        0x501 -> :sswitch_d
        0x502 -> :sswitch_c
        0x503 -> :sswitch_b
        0x504 -> :sswitch_a
        0x505 -> :sswitch_9
        0x506 -> :sswitch_8
        0x507 -> :sswitch_7
        0x508 -> :sswitch_6
        0x50d -> :sswitch_5
        0x50e -> :sswitch_4
        0x50f -> :sswitch_3
        0x510 -> :sswitch_2
        0x511 -> :sswitch_1
        0x512 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist write(JF)V
    .locals 5

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, float) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto/16 :goto_2

    :sswitch_1
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto/16 :goto_2

    :sswitch_2
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto/16 :goto_2

    :sswitch_3
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto/16 :goto_2

    :sswitch_4
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto/16 :goto_2

    :sswitch_5
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto/16 :goto_2

    :sswitch_6
    cmpl-float v1, p3, v4

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto/16 :goto_2

    :sswitch_7
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto/16 :goto_2

    :sswitch_8
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto/16 :goto_2

    :sswitch_9
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto/16 :goto_2

    :sswitch_a
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto/16 :goto_2

    :sswitch_b
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto :goto_2

    :sswitch_c
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_2

    :sswitch_d
    float-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_2

    :sswitch_e
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_2

    :sswitch_f
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_2

    :sswitch_10
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_2

    :sswitch_11
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_2

    :sswitch_12
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    goto :goto_2

    :sswitch_13
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_2

    :sswitch_14
    cmpl-float v1, p3, v4

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_2

    :sswitch_15
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_2

    :sswitch_16
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_2

    :sswitch_17
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_2

    :sswitch_18
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_2

    :sswitch_19
    float-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_2

    :sswitch_1a
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_2

    :sswitch_1b
    float-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    nop

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_1b
        0x102 -> :sswitch_1a
        0x103 -> :sswitch_19
        0x104 -> :sswitch_18
        0x105 -> :sswitch_17
        0x106 -> :sswitch_16
        0x107 -> :sswitch_15
        0x108 -> :sswitch_14
        0x10d -> :sswitch_13
        0x10e -> :sswitch_12
        0x10f -> :sswitch_11
        0x110 -> :sswitch_10
        0x111 -> :sswitch_f
        0x112 -> :sswitch_e
        0x201 -> :sswitch_d
        0x202 -> :sswitch_c
        0x203 -> :sswitch_b
        0x204 -> :sswitch_a
        0x205 -> :sswitch_9
        0x206 -> :sswitch_8
        0x207 -> :sswitch_7
        0x208 -> :sswitch_6
        0x20d -> :sswitch_5
        0x20e -> :sswitch_4
        0x20f -> :sswitch_3
        0x210 -> :sswitch_2
        0x211 -> :sswitch_1
        0x212 -> :sswitch_0
        0x501 -> :sswitch_d
        0x502 -> :sswitch_c
        0x503 -> :sswitch_b
        0x504 -> :sswitch_a
        0x505 -> :sswitch_9
        0x506 -> :sswitch_8
        0x507 -> :sswitch_7
        0x508 -> :sswitch_6
        0x50d -> :sswitch_5
        0x50e -> :sswitch_4
        0x50f -> :sswitch_3
        0x510 -> :sswitch_2
        0x511 -> :sswitch_1
        0x512 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist write(JI)V
    .locals 4

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, int) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto/16 :goto_2

    :sswitch_1
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto/16 :goto_2

    :sswitch_2
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto/16 :goto_2

    :sswitch_3
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto/16 :goto_2

    :sswitch_4
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto/16 :goto_2

    :sswitch_5
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto/16 :goto_2

    :sswitch_6
    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto/16 :goto_2

    :sswitch_7
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto/16 :goto_2

    :sswitch_8
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto/16 :goto_2

    :sswitch_9
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto/16 :goto_2

    :sswitch_a
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto :goto_2

    :sswitch_b
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto :goto_2

    :sswitch_c
    int-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_2

    :sswitch_d
    int-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_2

    :sswitch_e
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_2

    :sswitch_f
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_2

    :sswitch_10
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_2

    :sswitch_11
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_2

    :sswitch_12
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    goto :goto_2

    :sswitch_13
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_2

    :sswitch_14
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_2

    :sswitch_15
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_2

    :sswitch_16
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_2

    :sswitch_17
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_2

    :sswitch_18
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_2

    :sswitch_19
    int-to-long v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_2

    :sswitch_1a
    int-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_2

    :sswitch_1b
    int-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    nop

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_1b
        0x102 -> :sswitch_1a
        0x103 -> :sswitch_19
        0x104 -> :sswitch_18
        0x105 -> :sswitch_17
        0x106 -> :sswitch_16
        0x107 -> :sswitch_15
        0x108 -> :sswitch_14
        0x10d -> :sswitch_13
        0x10e -> :sswitch_12
        0x10f -> :sswitch_11
        0x110 -> :sswitch_10
        0x111 -> :sswitch_f
        0x112 -> :sswitch_e
        0x201 -> :sswitch_d
        0x202 -> :sswitch_c
        0x203 -> :sswitch_b
        0x204 -> :sswitch_a
        0x205 -> :sswitch_9
        0x206 -> :sswitch_8
        0x207 -> :sswitch_7
        0x208 -> :sswitch_6
        0x20d -> :sswitch_5
        0x20e -> :sswitch_4
        0x20f -> :sswitch_3
        0x210 -> :sswitch_2
        0x211 -> :sswitch_1
        0x212 -> :sswitch_0
        0x501 -> :sswitch_d
        0x502 -> :sswitch_c
        0x503 -> :sswitch_b
        0x504 -> :sswitch_a
        0x505 -> :sswitch_9
        0x506 -> :sswitch_8
        0x507 -> :sswitch_7
        0x508 -> :sswitch_6
        0x50d -> :sswitch_5
        0x50e -> :sswitch_4
        0x50f -> :sswitch_3
        0x510 -> :sswitch_2
        0x511 -> :sswitch_1
        0x512 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist write(JJ)V
    .locals 6

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, long) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto/16 :goto_2

    :sswitch_1
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto/16 :goto_2

    :sswitch_2
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto/16 :goto_2

    :sswitch_3
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto/16 :goto_2

    :sswitch_4
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto/16 :goto_2

    :sswitch_5
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto/16 :goto_2

    :sswitch_6
    cmp-long v1, p3, v4

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto/16 :goto_2

    :sswitch_7
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto/16 :goto_2

    :sswitch_8
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto/16 :goto_2

    :sswitch_9
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto/16 :goto_2

    :sswitch_a
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto :goto_2

    :sswitch_b
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto :goto_2

    :sswitch_c
    long-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_2

    :sswitch_d
    long-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_2

    :sswitch_e
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_2

    :sswitch_f
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_2

    :sswitch_10
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_2

    :sswitch_11
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_2

    :sswitch_12
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    goto :goto_2

    :sswitch_13
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_2

    :sswitch_14
    cmp-long v1, p3, v4

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_2

    :sswitch_15
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_2

    :sswitch_16
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_2

    :sswitch_17
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_2

    :sswitch_18
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_2

    :sswitch_19
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_2

    :sswitch_1a
    long-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_2

    :sswitch_1b
    long-to-double v1, p3

    invoke-direct {p0, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    nop

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_1b
        0x102 -> :sswitch_1a
        0x103 -> :sswitch_19
        0x104 -> :sswitch_18
        0x105 -> :sswitch_17
        0x106 -> :sswitch_16
        0x107 -> :sswitch_15
        0x108 -> :sswitch_14
        0x10d -> :sswitch_13
        0x10e -> :sswitch_12
        0x10f -> :sswitch_11
        0x110 -> :sswitch_10
        0x111 -> :sswitch_f
        0x112 -> :sswitch_e
        0x201 -> :sswitch_d
        0x202 -> :sswitch_c
        0x203 -> :sswitch_b
        0x204 -> :sswitch_a
        0x205 -> :sswitch_9
        0x206 -> :sswitch_8
        0x207 -> :sswitch_7
        0x208 -> :sswitch_6
        0x20d -> :sswitch_5
        0x20e -> :sswitch_4
        0x20f -> :sswitch_3
        0x210 -> :sswitch_2
        0x211 -> :sswitch_1
        0x212 -> :sswitch_0
        0x501 -> :sswitch_d
        0x502 -> :sswitch_c
        0x503 -> :sswitch_b
        0x504 -> :sswitch_a
        0x505 -> :sswitch_9
        0x506 -> :sswitch_8
        0x507 -> :sswitch_7
        0x508 -> :sswitch_6
        0x50d -> :sswitch_5
        0x50e -> :sswitch_4
        0x50f -> :sswitch_3
        0x510 -> :sswitch_2
        0x511 -> :sswitch_1
        0x512 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist write(JLjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, String) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    nop

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x109 -> :sswitch_1
        0x209 -> :sswitch_0
        0x509 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist write(JZ)V
    .locals 4

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, boolean) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    nop

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x108 -> :sswitch_1
        0x208 -> :sswitch_0
        0x508 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist write(J[B)V
    .locals 4

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v1, 0xfff00000000L

    and-long/2addr v1, p1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to call write(long, byte[]) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    nop

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10b -> :sswitch_3
        0x10c -> :sswitch_2
        0x20b -> :sswitch_1
        0x20c -> :sswitch_0
        0x50b -> :sswitch_1
        0x50c -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist writeBool(JZ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    return-void
.end method

.method public blacklist writeBytes(J[B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10c00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    return-void
.end method

.method public blacklist writeDouble(JD)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    return-void
.end method

.method public blacklist writeEnum(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    return-void
.end method

.method public blacklist writeFixed32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    return-void
.end method

.method public blacklist writeFixed64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    return-void
.end method

.method public blacklist writeFloat(JF)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    return-void
.end method

.method public blacklist writeInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    return-void
.end method

.method public blacklist writeInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    return-void
.end method

.method public blacklist writeObject(J[B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    return-void
.end method

.method greylist-max-o writeObjectImpl(I[B)V
    .locals 1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    :cond_0
    return-void
.end method

.method public blacklist writePackedBool(J[Z)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_1

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-boolean v4, p3, v2

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public blacklist writePackedDouble(J[D)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_1

    mul-int/lit8 v2, v1, 0x8

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public blacklist writePackedEnum(J[I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget v4, p3, v3

    if-ltz v4, :cond_1

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v5

    goto :goto_2

    :cond_1
    const/16 v5, 0xa

    :goto_2
    add-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_3

    aget v4, p3, v3

    invoke-direct {p0, v4}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public blacklist writePackedFixed32(J[I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_1

    mul-int/lit8 v2, v1, 0x4

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v2

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public blacklist writePackedFixed64(J[J)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_1

    mul-int/lit8 v2, v1, 0x8

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public blacklist writePackedFloat(J[F)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_1

    mul-int/lit8 v2, v1, 0x4

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v2

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public blacklist writePackedInt32(J[I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget v4, p3, v3

    if-ltz v4, :cond_1

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v5

    goto :goto_2

    :cond_1
    const/16 v5, 0xa

    :goto_2
    add-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_3

    aget v4, p3, v3

    invoke-direct {p0, v4}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public blacklist writePackedInt64(J[J)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v5, p3, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public blacklist writePackedSFixed32(J[I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_1

    mul-int/lit8 v2, v1, 0x4

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v2

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public blacklist writePackedSFixed64(J[J)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x51000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_1

    mul-int/lit8 v2, v1, 0x8

    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public blacklist writePackedSInt32(J[I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x51100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget v4, p3, v3

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawZigZag32Size(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v5, p3, v3

    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public blacklist writePackedSInt64(J[J)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x51200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Landroid/util/proto/EncodedBuffer;->getRawZigZag64Size(J)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v5, p3, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public blacklist writePackedUInt32(J[I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget v4, p3, v3

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v5, p3, v3

    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public blacklist writePackedUInt64(J[J)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x50400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    if-eqz p3, :cond_0

    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v5, p3, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public blacklist writeRepeatedBool(JZ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20800000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    return-void
.end method

.method public blacklist writeRepeatedBytes(J[B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20c00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    return-void
.end method

.method public blacklist writeRepeatedDouble(JD)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    return-void
.end method

.method public blacklist writeRepeatedEnum(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20e00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    return-void
.end method

.method public blacklist writeRepeatedFixed32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20700000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    return-void
.end method

.method public blacklist writeRepeatedFixed64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20600000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    return-void
.end method

.method public blacklist writeRepeatedFloat(JF)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    return-void
.end method

.method public blacklist writeRepeatedInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20500000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    return-void
.end method

.method public blacklist writeRepeatedInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20300000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    return-void
.end method

.method public blacklist writeRepeatedObject(J[B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20b00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    return-void
.end method

.method greylist-max-o writeRepeatedObjectImpl(I[B)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p2

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    return-void
.end method

.method public blacklist writeRepeatedSFixed32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    return-void
.end method

.method public blacklist writeRepeatedSFixed64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x21000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    return-void
.end method

.method public blacklist writeRepeatedSInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x21100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    return-void
.end method

.method public blacklist writeRepeatedSInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x21200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    return-void
.end method

.method public blacklist writeRepeatedString(JLjava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20900000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist writeRepeatedUInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    return-void
.end method

.method public blacklist writeRepeatedUInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x20400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    return-void
.end method

.method public blacklist writeSFixed32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10f00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    return-void
.end method

.method public blacklist writeSFixed64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x11000000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    return-void
.end method

.method public blacklist writeSInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x11100000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    return-void
.end method

.method public blacklist writeSInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x11200000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    return-void
.end method

.method public blacklist writeString(JLjava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10900000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    return-void
.end method

.method public whitelist writeTag(II)V
    .locals 2

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    shl-int/lit8 v1, p1, 0x3

    or-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    return-void
.end method

.method public blacklist writeUInt32(JI)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10d00000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    return-void
.end method

.method public blacklist writeUInt64(JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v0, 0x10400000000L

    invoke-static {p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    return-void
.end method
