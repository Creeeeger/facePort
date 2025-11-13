.class public final Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final C40_SHIFT2_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->C40_SHIFT2_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V
    .locals 3

    iget v0, p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    iget v1, p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    add-int/2addr v1, v0

    aget-object v0, p0, v1

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    aget-object v0, p0, v1

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v0, v0, v2

    iget v0, v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    if-le v0, v2, :cond_1

    :cond_0
    aget-object p0, p0, v1

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aput-object p1, p0, v0

    :cond_1
    return-void
.end method

.method public static addEdges(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;[[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;ILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual {v7, v9}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v10, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;I)V

    invoke-static {v8, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    return-void

    :cond_0
    invoke-virtual {v7, v9}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v0

    const/4 v10, 0x3

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v1, v2, :cond_7

    :cond_1
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v0

    const/4 v13, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {v7, v9, v13}, Lcom/google/zxing/common/MinimalECIInput;->haveNCharacters(II)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v7, v0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v14, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;I)V

    invoke-static {v8, v14}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    goto :goto_0

    :cond_2
    new-instance v14, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;I)V

    invoke-static {v8, v14}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    :goto_0
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    filled-new-array {v0, v1}, [Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object v14

    move v15, v12

    :goto_1
    if-ge v15, v13, :cond_5

    aget-object v2, v14, v15

    new-array v0, v11, [I

    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v2, v1, :cond_3

    move v1, v11

    goto :goto_2

    :cond_3
    move v1, v12

    :goto_2
    invoke-static {v7, v9, v1, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->getNumberOfC40Words(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;IZ[I)I

    move-result v1

    if-lez v1, :cond_4

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    aget v4, v0, v12

    const/16 v16, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    move-object v12, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;I)V

    invoke-static {v8, v12}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    :cond_4
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v7, v9, v10}, Lcom/google/zxing/common/MinimalECIInput;->haveNCharacters(II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v7, v9}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v7, v0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, v9, 0x2

    invoke-virtual {v7, v0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v12, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x3

    const/4 v6, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;I)V

    invoke-static {v8, v12}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    :cond_6
    new-instance v12, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;I)V

    invoke-static {v8, v12}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    :cond_7
    const/4 v12, 0x0

    :goto_3
    if-ge v12, v10, :cond_8

    add-int v0, v9, v12

    invoke-virtual {v7, v0, v11}, Lcom/google/zxing/common/MinimalECIInput;->haveNCharacters(II)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v7, v0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v13, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v3, p2

    move v4, v12

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;I)V

    invoke-static {v8, v13}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    goto :goto_3

    :cond_8
    if-ne v12, v10, :cond_9

    const/4 v0, 0x4

    invoke-virtual {v7, v9, v0}, Lcom/google/zxing/common/MinimalECIInput;->haveNCharacters(II)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v0, v9, 0x3

    invoke-virtual {v7, v0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v10, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;-><init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;I)V

    invoke-static {v8, v10}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->addEdge([[Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V

    :cond_9
    return-void
.end method

.method public static getNumberOfC40Words(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;IZ[I)I
    .locals 5

    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v3, v3

    if-ge v1, v3, :cond_a

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result v3

    if-eqz v3, :cond_0

    aput v0, p3, v0

    return v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v3

    if-eqz p2, :cond_1

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-nez p2, :cond_3

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    invoke-static {v3, v4}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_4
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x80

    if-lt v3, v4, :cond_7

    if-eqz p2, :cond_5

    add-int/lit8 v4, v3, -0x80

    int-to-char v4, v4

    invoke-static {v4}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    if-nez p2, :cond_7

    add-int/lit8 v3, v3, -0x80

    int-to-char v3, v3

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v2, 0x4

    :goto_1
    rem-int/lit8 v3, v2, 0x3

    if-eqz v3, :cond_9

    add-int/lit8 v3, v2, -0x2

    rem-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_8

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v4, v4

    if-ne v3, v4, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    :goto_2
    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, p3, v0

    int-to-double p0, v2

    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0

    :cond_a
    aput v0, p3, v0

    return v0
.end method

.method public static isExtendedASCII(CI)Z
    .locals 0

    if-eq p0, p1, :cond_0

    const/16 p1, 0x80

    if-lt p0, p1, :cond_0

    const/16 p1, 0xff

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
