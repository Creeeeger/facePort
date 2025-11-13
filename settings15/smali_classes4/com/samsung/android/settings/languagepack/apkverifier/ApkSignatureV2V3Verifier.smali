.class public abstract Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static findSignature(Ljava/io/RandomAccessFile;I)Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureInfo;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x16

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0, v3}, Lcom/samsung/android/settings/languagepack/apkverifier/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0xffff

    invoke-static {v0, v2}, Lcom/samsung/android/settings/languagepack/apkverifier/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Landroid/util/Pair;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_15

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x14

    sub-long v7, v5, v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const v7, 0x504b0607

    if-eq v2, v7, :cond_14

    :goto_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const-string v8, "ByteBuffer byte order must be little endian"

    if-ne v2, v7, :cond_13

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/16 v11, 0x10

    add-int/2addr v2, v11

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v12, v2

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    cmp-long v2, v12, v5

    if-gtz v2, :cond_12

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v2, v7, :cond_11

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v9, v2

    and-long/2addr v9, v14

    add-long/2addr v9, v12

    cmp-long v2, v9, v5

    if-nez v2, :cond_10

    const-wide/16 v4, 0x20

    cmp-long v2, v12, v4

    if-ltz v2, :cond_f

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    int-to-long v5, v5

    sub-long v5, v12, v5

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    invoke-virtual {v0, v5, v6, v9}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v9

    const-wide v14, 0x20676953204b5041L

    cmp-long v6, v9, v14

    if-nez v6, :cond_e

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v9

    const-wide v14, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v6, v9, v14

    if-nez v6, :cond_e

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    int-to-long v14, v4

    cmp-long v4, v9, v14

    if-ltz v4, :cond_d

    const-wide/32 v14, 0x7ffffff7

    cmp-long v4, v9, v14

    if-gtz v4, :cond_d

    const-wide/16 v14, 0x8

    add-long/2addr v14, v9

    long-to-int v4, v14

    int-to-long v14, v4

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-ltz v6, :cond_c

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v14

    invoke-virtual {v0, v6, v11, v14}, Ljava/io/RandomAccessFile;->readFully([BII)V

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v14

    cmp-long v0, v14, v9

    if-nez v0, :cond_b

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    if-ne v0, v7, :cond_a

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sub-int/2addr v0, v2

    if-lt v0, v5, :cond_9

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    if-gt v0, v6, :cond_8

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    :try_start_0
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v5, :cond_6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    const-wide/16 v8, 0x4

    cmp-long v2, v6, v8

    const-string v4, " size out of range: "

    const-string v8, "APK Signing Block entry #"

    if-ltz v2, :cond_5

    const-wide/32 v9, 0x7fffffff

    cmp-long v2, v6, v9

    if-gtz v2, :cond_5

    long-to-int v2, v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-gt v2, v7, :cond_4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    if-ne v4, v1, :cond_3

    add-int/lit8 v2, v2, -0x4

    invoke-static {v2, v0}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSigningBlockUtils;->getByteBuffer(ILjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureInfo;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1

    :cond_3
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;

    const-string v5, ", available: "

    invoke-static {v8, v4, v3, v2, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;

    const-string v1, "Insufficient data to read size of APK Signing Block entry #"

    invoke-static {v3, v1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;

    const-string v2, "No block with ID "

    const-string v3, " in APK Signing Block."

    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "end > capacity: "

    const-string v4, " > "

    invoke-static {v0, v2, v3, v4}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "end < start: "

    const-string v3, " < 8"

    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;

    const-string v1, "APK Signing Block sizes in header and footer do not match: "

    const-string v2, " vs "

    invoke-static {v14, v15, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;

    const-string v1, "APK Signing Block offset out of range: "

    invoke-static {v12, v13, v1}, Landroidx/viewpager2/widget/ViewPager2$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;

    const-string v1, "APK Signing Block size out of range: "

    invoke-static {v9, v10, v1}, Landroidx/viewpager2/widget/ViewPager2$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;

    const-string v1, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;

    const-string v1, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-static {v12, v13, v1}, Landroidx/viewpager2/widget/ViewPager2$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;

    const-string v1, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;

    const-string v1, "ZIP Central Directory offset out of range: "

    const-string v2, ". ZIP End of Central Directory offset: "

    invoke-static {v12, v13, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;

    const-string v1, "Not an APK file: ZIP End of Central Directory record not found"

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasSignature(ILjava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0, p0}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier;->findSignature(Ljava/io/RandomAccessFile;I)Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static readContentDigest(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1, p0}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier;->findSignature(Ljava/io/RandomAccessFile;I)Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureInfo;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    move-object v3, v0

    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :try_start_4
    invoke-static {p1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier;->verifyContentDigest(ILjava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :try_start_5
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse/verify signer #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " block"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const/4 p0, 0x1

    if-lt v2, p0, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez p0, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v3

    :cond_1
    :try_start_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No content digests found"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "No signers found"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/SecurityException;

    const-string v2, "Failed to read list of signers"

    invoke-direct {p1, v2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_4
    move-exception p0

    move-object v1, v0

    :goto_2
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_3
    return-object v0

    :goto_4
    if-eqz v0, :cond_4

    :try_start_a
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_5
    throw p0
.end method

.method public static verifyContentDigest(ILjava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 16

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, -0xfac9740

    move/from16 v2, p0

    if-ne v2, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_0

    if-gt v3, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$PlatformNotSupportedException;

    const-string v4, "Signer not supported by this platform version. This platform: "

    const-string v5, ", signer minSdkVersion: "

    const-string v6, ", maxSdkVersion: "

    invoke-static {v4, v5, v3, v1, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSignatureV2V3Verifier$PlatformNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    const/16 v7, 0x8

    const/4 v8, -0x1

    const/16 v9, 0x425

    const/16 v10, 0x423

    const/16 v11, 0x421

    const/16 v12, 0x301

    const/16 v13, 0x202

    const/16 v14, 0x201

    const/4 v15, 0x0

    if-eqz v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lt v4, v7, :cond_3

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v4, v14, :cond_2

    if-eq v4, v13, :cond_2

    if-eq v4, v12, :cond_2

    if-eq v4, v11, :cond_2

    if-eq v4, v10, :cond_2

    if-eq v4, v9, :cond_2

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :cond_2
    :pswitch_0
    invoke-static {v6}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Signature record too short"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to parse signature record #"

    invoke-static {v5, v2}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move v4, v8

    move-object v1, v15

    :goto_3
    if-ne v4, v8, :cond_6

    if-nez v5, :cond_5

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No signatures found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No supported signatures found"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v3, "Unknown signature algorithm: 0x"

    if-eq v4, v14, :cond_9

    if-eq v4, v13, :cond_9

    if-eq v4, v12, :cond_8

    if-eq v4, v11, :cond_7

    if-eq v4, v10, :cond_9

    if-eq v4, v9, :cond_8

    packed-switch v4, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :pswitch_1
    const-string v5, "RSA"

    goto :goto_4

    :cond_8
    const-string v5, "DSA"

    goto :goto_4

    :cond_9
    const-string v5, "EC"

    :goto_4
    if-eq v4, v14, :cond_d

    if-eq v4, v13, :cond_c

    if-eq v4, v12, :cond_b

    if-eq v4, v11, :cond_a

    if-eq v4, v10, :cond_d

    if-eq v4, v9, :cond_b

    packed-switch v4, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    const-string v3, "SHA512withRSA"

    invoke-static {v3, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_5

    :pswitch_3
    new-instance v3, Ljava/security/spec/PSSParameterSpec;

    sget-object v9, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v10, 0x40

    const/4 v11, 0x1

    const-string v7, "SHA-512"

    const-string v8, "MGF1"

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v6, "SHA512withRSA/PSS"

    invoke-static {v6, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_5

    :pswitch_4
    new-instance v3, Ljava/security/spec/PSSParameterSpec;

    sget-object v9, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v10, 0x20

    const/4 v11, 0x1

    const-string v7, "SHA-256"

    const-string v8, "MGF1"

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v6, "SHA256withRSA/PSS"

    invoke-static {v6, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_5

    :cond_a
    :pswitch_5
    const-string v3, "SHA256withRSA"

    invoke-static {v3, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_5

    :cond_b
    const-string v3, "SHA256withDSA"

    invoke-static {v3, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_5

    :cond_c
    const-string v3, "SHA512withECDSA"

    invoke-static {v3, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_5

    :cond_d
    const-string v3, "SHA256withECDSA"

    invoke-static {v3, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_5
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/security/spec/AlgorithmParameterSpec;

    :try_start_1
    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    new-instance v7, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v7, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v5, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v3, :cond_e

    invoke-virtual {v5, v3}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_9

    :cond_e
    :goto_6
    invoke-virtual {v5, v0}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    const-string/jumbo v2, "sig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "signedData = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :cond_f
    :goto_7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_11

    add-int/lit8 v2, v2, 0x1

    :try_start_2
    invoke-static {v0}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_10

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v5, v4, :cond_f

    invoke-static {v3}, Lcom/samsung/android/settings/languagepack/apkverifier/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    move-object v15, v3

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_8

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Record too short"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_8
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Failed to parse digest record #"

    invoke-static {v2, v3}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_11
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v15, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, " signature did not verify"

    invoke-static {v6, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_9
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Failed to verify "

    const-string v3, " signature"

    invoke-static {v2, v6, v3}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x101
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
