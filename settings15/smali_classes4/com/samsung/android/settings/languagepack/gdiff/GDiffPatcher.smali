.class public final Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public buf:Ljava/nio/ByteBuffer;

.field public buf2:[B


# virtual methods
.method public final append(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V
    .locals 5

    :goto_0
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->buf2:[B

    array-length v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p3, v0, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    const-string p2, "cannot read "

    const-string p3, " len : "

    invoke-static {p1, v1, p2, p3}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public final copy(JILcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;Ljava/io/BufferedOutputStream;)V
    .locals 5

    iget-object v0, p4, Lcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    if-lez p3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->buf:Ljava/nio/ByteBuffer;

    iget-object v1, p4, Lcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "in copy "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public final patch(Lcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 8

    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance p3, Ljava/io/BufferedInputStream;

    invoke-direct {p3, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p2, Ljava/io/DataOutputStream;

    invoke-direct {p2, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, p3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_2

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_2

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :goto_0
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    return-void

    :cond_0
    const/16 v1, 0xf6

    if-gt v0, v1, :cond_1

    invoke-virtual {p0, v0, p3, v6}, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->append(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V

    goto :goto_0

    :cond_1
    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "command "

    invoke-static {v0, p1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object v0, p0

    move-object v4, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->copy(JILcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;Ljava/io/BufferedOutputStream;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    int-to-long v1, v0

    move-object v0, p0

    move-object v4, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->copy(JILcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;Ljava/io/BufferedOutputStream;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    int-to-long v1, v0

    move-object v0, p0

    move-object v4, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->copy(JILcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;Ljava/io/BufferedOutputStream;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-long v1, v0

    move-object v0, p0

    move-object v4, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->copy(JILcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;Ljava/io/BufferedOutputStream;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    int-to-long v1, v0

    move-object v0, p0

    move-object v4, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->copy(JILcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;Ljava/io/BufferedOutputStream;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    int-to-long v1, v0

    move-object v0, p0

    move-object v4, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->copy(JILcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;Ljava/io/BufferedOutputStream;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    int-to-long v1, v0

    move-object v0, p0

    move-object v4, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->copy(JILcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;Ljava/io/BufferedOutputStream;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0, v0, p3, v6}, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->append(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p0, v0, p3, v6}, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->append(ILjava/io/BufferedInputStream;Ljava/io/BufferedOutputStream;)V

    goto/16 :goto_0

    :cond_2
    new-instance p0, Lcom/samsung/android/settings/languagepack/gdiff/PatchException;

    const-string p1, "magic string not found, aborting!"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/languagepack/gdiff/PatchException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0xf7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final patch(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 2

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Lcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;->raf:Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/samsung/android/settings/languagepack/gdiff/GDiffPatcher;->patch(Lcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {p1}, Lcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {p1}, Lcom/samsung/android/settings/languagepack/gdiff/RandomAccessFileSeekableSource;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    throw p0
.end method
