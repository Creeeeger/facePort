.class public Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;


# instance fields
.field public final dataCapacity:I

.field public final dataRegions:I

.field public final errorCodewords:I

.field public final matrixHeight:I

.field public final matrixWidth:I

.field public final rectangular:Z

.field public final rsBlockData:I

.field public final rsBlockError:I


# direct methods
.method static constructor <clinit>()V
    .locals 49

    new-instance v9, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x5

    const/16 v4, 0x8

    move-object v0, v9

    move v2, v7

    move v3, v8

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v15, 0xa

    const/16 v16, 0x1

    const/4 v11, 0x0

    const/16 v17, 0x5

    const/16 v18, 0x7

    const/16 v14, 0xa

    move-object v10, v1

    move/from16 v12, v17

    move/from16 v13, v18

    invoke-direct/range {v10 .. v18}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v2, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v24, 0x6

    const/16 v25, 0x1

    const/16 v20, 0x1

    const/16 v26, 0x5

    const/16 v27, 0x7

    const/16 v23, 0x10

    move-object/from16 v19, v2

    move/from16 v21, v26

    move/from16 v22, v27

    invoke-direct/range {v19 .. v27}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v3, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v15, 0xc

    const/16 v16, 0x1

    const/4 v11, 0x0

    const/16 v17, 0x8

    const/16 v18, 0xa

    const/16 v14, 0xc

    move-object v10, v3

    move/from16 v12, v17

    move/from16 v13, v18

    invoke-direct/range {v10 .. v18}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v4, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v24, 0x6

    const/16 v25, 0x2

    const/16 v20, 0x1

    const/16 v26, 0xa

    const/16 v27, 0xb

    const/16 v23, 0xe

    move-object/from16 v19, v4

    move/from16 v21, v26

    move/from16 v22, v27

    invoke-direct/range {v19 .. v27}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v5, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v15, 0xe

    const/16 v16, 0x1

    const/4 v11, 0x0

    const/16 v17, 0xc

    const/16 v18, 0xc

    const/16 v14, 0xe

    move-object v10, v5

    move/from16 v12, v17

    move/from16 v13, v18

    invoke-direct/range {v10 .. v18}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v6, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v24, 0xa

    const/16 v25, 0x1

    const/16 v20, 0x1

    const/16 v26, 0x10

    const/16 v27, 0xe

    const/16 v23, 0x18

    move-object/from16 v19, v6

    move/from16 v21, v26

    move/from16 v22, v27

    invoke-direct/range {v19 .. v27}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v7, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v15, 0x10

    const/16 v16, 0x1

    const/4 v11, 0x0

    const/16 v17, 0x12

    const/16 v18, 0xe

    const/16 v14, 0x10

    move-object v10, v7

    move/from16 v12, v17

    move/from16 v13, v18

    invoke-direct/range {v10 .. v18}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v8, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v24, 0x12

    const/16 v25, 0x1

    const/16 v20, 0x0

    const/16 v26, 0x16

    const/16 v27, 0x12

    const/16 v23, 0x12

    move-object/from16 v19, v8

    move/from16 v21, v26

    move/from16 v22, v27

    invoke-direct/range {v19 .. v27}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v19, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v15, 0xa

    const/16 v16, 0x2

    const/4 v11, 0x1

    const/16 v17, 0x16

    const/16 v18, 0x12

    const/16 v14, 0x10

    move-object/from16 v10, v19

    move/from16 v12, v17

    move/from16 v13, v18

    invoke-direct/range {v10 .. v18}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v10, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v25, 0x14

    const/16 v26, 0x1

    const/16 v21, 0x0

    const/16 v27, 0x1e

    const/16 v28, 0x14

    const/16 v24, 0x14

    move-object/from16 v20, v10

    move/from16 v22, v27

    move/from16 v23, v28

    invoke-direct/range {v20 .. v28}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v11, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v34, 0xe

    const/16 v35, 0x2

    const/16 v30, 0x1

    const/16 v36, 0x20

    const/16 v37, 0x18

    const/16 v33, 0x10

    move-object/from16 v29, v11

    move/from16 v31, v36

    move/from16 v32, v37

    invoke-direct/range {v29 .. v37}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v12, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v25, 0x16

    const/16 v26, 0x1

    const/16 v21, 0x0

    const/16 v27, 0x24

    const/16 v28, 0x18

    const/16 v24, 0x16

    move-object/from16 v20, v12

    move/from16 v22, v27

    move/from16 v23, v28

    invoke-direct/range {v20 .. v28}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v13, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v34, 0x18

    const/16 v35, 0x1

    const/16 v30, 0x0

    const/16 v36, 0x2c

    const/16 v37, 0x1c

    const/16 v33, 0x18

    move-object/from16 v29, v13

    move/from16 v31, v36

    move/from16 v32, v37

    invoke-direct/range {v29 .. v37}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v14, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v25, 0xe

    const/16 v26, 0x2

    const/16 v21, 0x1

    const/16 v27, 0x31

    const/16 v28, 0x1c

    const/16 v24, 0x16

    move-object/from16 v20, v14

    move/from16 v22, v27

    move/from16 v23, v28

    invoke-direct/range {v20 .. v28}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v15, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v34, 0xe

    const/16 v35, 0x4

    const/16 v30, 0x0

    const/16 v36, 0x3e

    const/16 v37, 0x24

    const/16 v33, 0xe

    move-object/from16 v29, v15

    move/from16 v31, v36

    move/from16 v32, v37

    invoke-direct/range {v29 .. v37}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v16, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v25, 0x10

    const/16 v26, 0x4

    const/16 v21, 0x0

    const/16 v27, 0x56

    const/16 v28, 0x2a

    const/16 v24, 0x10

    move-object/from16 v20, v16

    move/from16 v22, v27

    move/from16 v23, v28

    invoke-direct/range {v20 .. v28}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v17, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v34, 0x12

    const/16 v35, 0x4

    const/16 v30, 0x0

    const/16 v36, 0x72

    const/16 v37, 0x30

    const/16 v33, 0x12

    move-object/from16 v29, v17

    move/from16 v31, v36

    move/from16 v32, v37

    invoke-direct/range {v29 .. v37}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v18, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v25, 0x14

    const/16 v26, 0x4

    const/16 v21, 0x0

    const/16 v27, 0x90

    const/16 v28, 0x38

    const/16 v24, 0x14

    move-object/from16 v20, v18

    move/from16 v22, v27

    move/from16 v23, v28

    invoke-direct/range {v20 .. v28}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v20, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v34, 0x16

    const/16 v35, 0x4

    const/16 v30, 0x0

    const/16 v36, 0xae

    const/16 v37, 0x44

    const/16 v33, 0x16

    move-object/from16 v29, v20

    move/from16 v31, v36

    move/from16 v32, v37

    invoke-direct/range {v29 .. v37}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v30, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v26, 0x18

    const/16 v27, 0x4

    const/16 v28, 0x66

    const/16 v29, 0x2a

    const/16 v22, 0x0

    const/16 v23, 0xcc

    const/16 v24, 0x54

    const/16 v25, 0x18

    move-object/from16 v21, v30

    invoke-direct/range {v21 .. v29}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v21, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v36, 0xe

    const/16 v37, 0x10

    const/16 v38, 0x8c

    const/16 v39, 0x38

    const/16 v32, 0x0

    const/16 v33, 0x118

    const/16 v34, 0x70

    const/16 v35, 0xe

    move-object/from16 v31, v21

    invoke-direct/range {v31 .. v39}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v22, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v45, 0x10

    const/16 v46, 0x10

    const/16 v47, 0x5c

    const/16 v48, 0x24

    const/16 v41, 0x0

    const/16 v42, 0x170

    const/16 v43, 0x90

    const/16 v44, 0x10

    move-object/from16 v40, v22

    invoke-direct/range {v40 .. v48}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v23, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v36, 0x12

    const/16 v38, 0x72

    const/16 v39, 0x30

    const/16 v33, 0x1c8

    const/16 v34, 0xc0

    const/16 v35, 0x12

    move-object/from16 v31, v23

    invoke-direct/range {v31 .. v39}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v24, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v45, 0x14

    const/16 v47, 0x90

    const/16 v48, 0x38

    const/16 v42, 0x240

    const/16 v43, 0xe0

    const/16 v44, 0x14

    move-object/from16 v40, v24

    invoke-direct/range {v40 .. v48}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v25, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v36, 0x16

    const/16 v38, 0xae

    const/16 v39, 0x44

    const/16 v33, 0x2b8

    const/16 v34, 0x110

    const/16 v35, 0x16

    move-object/from16 v31, v25

    invoke-direct/range {v31 .. v39}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v26, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v45, 0x18

    const/16 v47, 0x88

    const/16 v42, 0x330

    const/16 v43, 0x150

    const/16 v44, 0x18

    move-object/from16 v40, v26

    invoke-direct/range {v40 .. v48}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v27, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v36, 0x12

    const/16 v37, 0x24

    const/16 v38, 0xaf

    const/16 v33, 0x41a

    const/16 v34, 0x198

    const/16 v35, 0x12

    move-object/from16 v31, v27

    invoke-direct/range {v31 .. v39}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v28, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/16 v45, 0x14

    const/16 v46, 0x24

    const/16 v47, 0xa3

    const/16 v48, 0x3e

    const/16 v42, 0x518

    const/16 v43, 0x1f0

    const/16 v44, 0x14

    move-object/from16 v40, v28

    invoke-direct/range {v40 .. v48}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    new-instance v29, Lcom/google/zxing/datamatrix/encoder/DataMatrixSymbolInfo144;

    const/16 v38, -0x1

    const/16 v39, 0x3e

    const/16 v32, 0x0

    const/16 v33, 0x616

    const/16 v34, 0x26c

    const/16 v35, 0x16

    const/16 v36, 0x16

    const/16 v37, 0x24

    move-object/from16 v31, v29

    invoke-direct/range {v31 .. v39}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    move-object v0, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v30

    filled-new-array/range {v0 .. v29}, [Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    return-void
.end method

.method public constructor <init>(ZIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    iput p2, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    iput p3, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    iput p4, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    iput p5, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    iput p6, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    iput p7, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    iput p8, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockError:I

    return-void
.end method

.method public static lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 4

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    if-ne p1, v3, :cond_0

    iget-boolean v3, v2, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_RECTANGLE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    if-ne p1, v3, :cond_1

    iget-boolean v3, v2, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget v3, v2, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    if-gt p0, v3, :cond_2

    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t find a symbol arrangement that matches the message. Data codewords: "

    invoke-static {p0, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDataLengthForInterleavedBlock(I)I
    .locals 0

    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    return p0
.end method

.method public final getHorizontalDataRegions()I
    .locals 2

    const/4 v0, 0x1

    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x24

    if-ne p0, v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot handle this number of data regions"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public getInterleavedBlockCount()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    div-int/2addr v0, p0

    return v0
.end method

.method public final getVerticalDataRegions()I
    .locals 2

    const/4 v0, 0x1

    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/16 v1, 0x10

    if-eq p0, v1, :cond_1

    const/16 v0, 0x24

    if-ne p0, v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot handle this number of data regions"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    if-eqz v1, :cond_0

    const-string v1, "Rectangular Symbol:"

    goto :goto_0

    :cond_0
    const-string v1, "Square Symbol:"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data region "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", symbol size "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v4

    mul-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v4

    mul-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", symbol data size "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v4

    mul-int/2addr v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v1

    mul-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", codewords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
