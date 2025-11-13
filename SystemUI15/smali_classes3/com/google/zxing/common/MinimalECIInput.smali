.class public Lcom/google/zxing/common/MinimalECIInput;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/zxing/common/ECIInput;


# instance fields
.field public final bytes:[I

.field public final fnc1:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v8, v0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    new-instance v9, Lcom/google/zxing/common/ECIEncoderSet;

    move-object/from16 v1, p2

    invoke-direct {v9, v7, v1, v8}, Lcom/google/zxing/common/ECIEncoderSet;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;I)V

    iget-object v1, v9, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v1, v1

    const/4 v10, 0x1

    const/16 v11, 0x3e8

    const/4 v12, 0x0

    if-ne v1, v10, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    :goto_0
    iget-object v1, v0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v1, v1

    if-ge v12, v1, :cond_e

    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, v0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    if-ne v1, v8, :cond_0

    move v1, v11

    :cond_0
    aput v1, v2, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v1, v13, 0x1

    iget-object v2, v9, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v10

    aput v1, v3, v12

    const-class v1, Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [[Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v14

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/common/MinimalECIInput;->addEdges(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;[[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;I)V

    move v15, v10

    :goto_1
    if-gt v15, v13, :cond_5

    move v6, v12

    :goto_2
    iget-object v1, v9, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v1, v1

    if-ge v6, v1, :cond_3

    aget-object v1, v14, v15

    aget-object v5, v1, v6

    if-eqz v5, :cond_2

    if-ge v15, v13, :cond_2

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v14

    move v4, v15

    move/from16 v16, v6

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/common/MinimalECIInput;->addEdges(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;[[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;I)V

    goto :goto_3

    :cond_2
    move/from16 v16, v6

    :goto_3
    add-int/lit8 v6, v16, 0x1

    goto :goto_2

    :cond_3
    move v1, v12

    :goto_4
    iget-object v2, v9, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    add-int/lit8 v2, v15, -0x1

    aget-object v2, v14, v2

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    const v2, 0x7fffffff

    move v3, v12

    :goto_5
    iget-object v4, v9, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v4, v4

    if-ge v3, v4, :cond_7

    aget-object v4, v14, v13

    aget-object v4, v4, v3

    if-eqz v4, :cond_6

    iget v4, v4, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->cachedTotalSize:I

    if-ge v4, v2, :cond_6

    move v1, v3

    move v2, v4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    if-ltz v1, :cond_f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aget-object v3, v14, v13

    aget-object v1, v3, v1

    :cond_8
    :goto_6
    if-eqz v1, :cond_c

    iget v3, v1, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->encoderIndex:I

    iget-char v4, v1, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->c:C

    if-ne v4, v11, :cond_9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v12, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_8

    :cond_9
    iget-object v5, v9, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v5, v5, v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    array-length v5, v4

    sub-int/2addr v5, v10

    :goto_7
    if-ltz v5, :cond_a

    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v12, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_a
    :goto_8
    iget-object v1, v1, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->previous:Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    if-nez v1, :cond_b

    move v4, v12

    goto :goto_9

    :cond_b
    iget v4, v1, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->encoderIndex:I

    :goto_9
    if-eq v4, v3, :cond_8

    iget-object v4, v9, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-static {v3}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECI(Ljava/nio/charset/Charset;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v3

    add-int/lit16 v3, v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [I

    :goto_a
    if-ge v12, v1, :cond_d

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_d
    iput-object v3, v0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    :cond_e
    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to encode \""

    const-string v2, "\""

    invoke-static {v1, v7, v2}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addEdges(Ljava/lang/String;Lcom/google/zxing/common/ECIEncoderSet;[[Lcom/google/zxing/common/MinimalECIInput$InputEdge;ILcom/google/zxing/common/MinimalECIInput$InputEdge;I)V
    .locals 15

    move-object/from16 v7, p1

    move/from16 v8, p3

    move-object v0, p0

    move/from16 v9, p5

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    iget-object v0, v7, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v0, v0

    iget v1, v7, Lcom/google/zxing/common/ECIEncoderSet;->priorityEncoderIndex:I

    if-ltz v1, :cond_1

    if-eq v10, v9, :cond_0

    invoke-virtual {v7, v10, v1}, Lcom/google/zxing/common/ECIEncoderSet;->canEncode(CI)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    :goto_0
    move v11, v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    move v12, v1

    :goto_2
    if-ge v12, v11, :cond_5

    if-eq v10, v9, :cond_2

    invoke-virtual {v7, v10, v12}, Lcom/google/zxing/common/ECIEncoderSet;->canEncode(CI)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    add-int/lit8 v13, v8, 0x1

    new-instance v14, Lcom/google/zxing/common/MinimalECIInput$InputEdge;

    const/4 v6, 0x0

    move-object v0, v14

    move v1, v10

    move-object/from16 v2, p1

    move v3, v12

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/common/MinimalECIInput$InputEdge;-><init>(CLcom/google/zxing/common/ECIEncoderSet;ILcom/google/zxing/common/MinimalECIInput$InputEdge;II)V

    aget-object v0, p2, v13

    iget v1, v14, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->encoderIndex:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    iget v3, v14, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->cachedTotalSize:I

    iget v2, v2, Lcom/google/zxing/common/MinimalECIInput$InputEdge;->cachedTotalSize:I

    if-le v2, v3, :cond_4

    :cond_3
    aput-object v14, v0, v1

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v1, v0

    if-ge p1, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/MinimalECIInput;->isFNC1(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p0, p0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    :goto_0
    int-to-char p0, p0

    goto :goto_1

    :cond_0
    aget p0, v0, p1

    goto :goto_0

    :goto_1
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "value at "

    const-string v1, " is not a character but an ECI"

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getECIValue(I)I
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v1, v0

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result p0

    if-eqz p0, :cond_0

    aget p0, v0, p1

    add-int/lit16 p0, p0, -0x100

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "value at "

    const-string v1, " is not an ECI but a character"

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final haveNCharacters(II)Z
    .locals 4

    add-int v0, p1, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v2, v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    return v3

    :cond_0
    move v0, v3

    :goto_0
    if-ge v0, p2, :cond_2

    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final isECI(I)Z
    .locals 1

    if-ltz p1, :cond_1

    iget-object p0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget p0, p0, p1

    const/16 p1, 0xff

    if-le p0, p1, :cond_0

    const/16 p1, 0x3e7

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isFNC1(I)Z
    .locals 1

    if-ltz p1, :cond_1

    iget-object p0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget p0, p0, p1

    const/16 p1, 0x3e8

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final length()I
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length p0, p0

    return p0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    if-ltz p1, :cond_2

    if-gt p1, p2, :cond_2

    iget-object v0, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v0, v0

    if-gt p2, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value at "

    const-string v0, " is not a character but an ECI"

    invoke-static {p1, p2, v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, ""

    invoke-static {p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ECI("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/MinimalECIInput;->getECIValue(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_2

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
