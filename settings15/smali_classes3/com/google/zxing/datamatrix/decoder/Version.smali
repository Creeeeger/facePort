.class public final Lcom/google/zxing/datamatrix/decoder/Version;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final VERSIONS:[Lcom/google/zxing/datamatrix/decoder/Version;


# instance fields
.field public final dataRegionSizeColumns:I

.field public final dataRegionSizeRows:I

.field public final ecBlocks:Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

.field public final symbolSizeColumns:I

.field public final symbolSizeRows:I

.field public final totalCodewords:I

.field public final versionNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 72

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object v7, v0

    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/4 v2, 0x5

    invoke-direct {v6, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v9, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object v8, v9

    new-instance v15, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/4 v1, 0x7

    invoke-direct {v15, v1, v0}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v11, 0xc

    const/16 v12, 0xc

    const/16 v13, 0xa

    const/16 v14, 0xa

    const/4 v10, 0x2

    invoke-direct/range {v9 .. v15}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object v9, v0

    new-instance v6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0xa

    invoke-direct {v6, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xc

    const/16 v5, 0xc

    const/4 v1, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v11, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object v10, v11

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0xc

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v13, 0x10

    const/16 v14, 0x10

    const/16 v15, 0xe

    const/16 v16, 0xe

    const/4 v12, 0x4

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v17, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v11, v17

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x12

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v19, 0x12

    const/16 v20, 0x12

    const/16 v21, 0x10

    const/16 v22, 0x10

    const/16 v18, 0x5

    move-object/from16 v23, v0

    invoke-direct/range {v17 .. v23}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v23, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v12, v23

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x16

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x12

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v25, 0x14

    const/16 v26, 0x14

    const/16 v27, 0x12

    const/16 v28, 0x12

    const/16 v24, 0x6

    move-object/from16 v29, v0

    invoke-direct/range {v23 .. v29}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v14, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object v13, v14

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x1e

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x14

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v16, 0x16

    const/16 v17, 0x16

    const/16 v18, 0x14

    const/16 v19, 0x14

    const/4 v15, 0x7

    move-object/from16 v20, v0

    invoke-direct/range {v14 .. v20}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v20, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v14, v20

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x24

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x18

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v22, 0x18

    const/16 v23, 0x18

    const/16 v24, 0x16

    const/16 v25, 0x16

    const/16 v21, 0x8

    move-object/from16 v26, v0

    invoke-direct/range {v20 .. v26}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v26, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v15, v26

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x2c

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x1c

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v28, 0x1a

    const/16 v29, 0x1a

    const/16 v30, 0x18

    const/16 v31, 0x18

    const/16 v27, 0x9

    move-object/from16 v32, v0

    invoke-direct/range {v26 .. v32}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v17, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v16, v17

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x3e

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x24

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v19, 0x20

    const/16 v20, 0x20

    const/16 v21, 0xe

    const/16 v22, 0xe

    const/16 v18, 0xa

    move-object/from16 v23, v0

    invoke-direct/range {v17 .. v23}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v23, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v17, v23

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x56

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x2a

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v25, 0x24

    const/16 v26, 0x24

    const/16 v27, 0x10

    const/16 v28, 0x10

    const/16 v24, 0xb

    move-object/from16 v29, v0

    invoke-direct/range {v23 .. v29}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v29, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v18, v29

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x72

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x30

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v31, 0x28

    const/16 v32, 0x28

    const/16 v33, 0x12

    const/16 v34, 0x12

    const/16 v30, 0xc

    move-object/from16 v35, v0

    invoke-direct/range {v29 .. v35}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v20, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v19, v20

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x90

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x38

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v22, 0x2c

    const/16 v23, 0x2c

    const/16 v24, 0x14

    const/16 v25, 0x14

    const/16 v21, 0xd

    move-object/from16 v26, v0

    invoke-direct/range {v20 .. v26}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v26, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v20, v26

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0xae

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x44

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v28, 0x30

    const/16 v29, 0x30

    const/16 v30, 0x16

    const/16 v31, 0x16

    const/16 v27, 0xe

    move-object/from16 v32, v0

    invoke-direct/range {v26 .. v32}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v32, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v21, v32

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x66

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x2a

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v34, 0x34

    const/16 v35, 0x34

    const/16 v36, 0x18

    const/16 v37, 0x18

    const/16 v33, 0xf

    move-object/from16 v38, v0

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v23, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v22, v23

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x8c

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x38

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v25, 0x40

    const/16 v26, 0x40

    const/16 v28, 0xe

    const/16 v24, 0x10

    move-object/from16 v29, v0

    invoke-direct/range {v23 .. v29}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v29, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v23, v29

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x5c

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x24

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v31, 0x48

    const/16 v32, 0x48

    const/16 v33, 0x10

    const/16 v34, 0x10

    const/16 v30, 0x11

    move-object/from16 v35, v0

    invoke-direct/range {v29 .. v35}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v35, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v24, v35

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x72

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x30

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v37, 0x50

    const/16 v38, 0x50

    const/16 v39, 0x12

    const/16 v40, 0x12

    const/16 v36, 0x12

    move-object/from16 v41, v0

    invoke-direct/range {v35 .. v41}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v26, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v25, v26

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x90

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x38

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v28, 0x58

    const/16 v29, 0x58

    const/16 v30, 0x14

    const/16 v31, 0x14

    const/16 v27, 0x13

    move-object/from16 v32, v0

    invoke-direct/range {v26 .. v32}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v32, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v26, v32

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0xae

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x44

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v34, 0x60

    const/16 v35, 0x60

    const/16 v36, 0x16

    const/16 v37, 0x16

    const/16 v33, 0x14

    move-object/from16 v38, v0

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v38, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v27, v38

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x88

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x38

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v40, 0x68

    const/16 v41, 0x68

    const/16 v42, 0x18

    const/16 v43, 0x18

    const/16 v39, 0x15

    move-object/from16 v44, v0

    invoke-direct/range {v38 .. v44}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v29, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v28, v29

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0xaf

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x44

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v31, 0x78

    const/16 v32, 0x78

    const/16 v33, 0x12

    const/16 v34, 0x12

    const/16 v30, 0x16

    move-object/from16 v35, v0

    invoke-direct/range {v29 .. v35}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v35, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v29, v35

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0xa3

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x3e

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v37, 0x84

    const/16 v38, 0x84

    const/16 v39, 0x14

    const/16 v40, 0x14

    const/16 v36, 0x17

    move-object/from16 v41, v0

    invoke-direct/range {v35 .. v41}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v41, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v30, v41

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x9c

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v3, 0x9b

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(Lcom/google/zxing/datamatrix/decoder/Version$ECB;Lcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v43, 0x90

    const/16 v44, 0x90

    const/16 v45, 0x16

    const/16 v46, 0x16

    move-object/from16 v47, v0

    invoke-direct/range {v41 .. v47}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v32, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v31, v32

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v34, 0x8

    const/16 v35, 0x12

    const/16 v36, 0x6

    const/16 v37, 0x10

    const/16 v33, 0x19

    move-object/from16 v38, v0

    invoke-direct/range {v32 .. v38}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v38, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v32, v38

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0xa

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v40, 0x8

    const/16 v41, 0x20

    const/16 v42, 0x6

    const/16 v43, 0xe

    const/16 v39, 0x1a

    move-object/from16 v44, v0

    invoke-direct/range {v38 .. v44}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v44, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v33, v44

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x10

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v46, 0xc

    const/16 v47, 0x1a

    const/16 v48, 0xa

    const/16 v49, 0x18

    const/16 v45, 0x1b

    move-object/from16 v50, v0

    invoke-direct/range {v44 .. v50}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v35, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v34, v35

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x16

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x12

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v37, 0xc

    const/16 v38, 0x24

    const/16 v39, 0xa

    const/16 v40, 0x10

    const/16 v36, 0x1c

    move-object/from16 v41, v0

    invoke-direct/range {v35 .. v41}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v41, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v35, v41

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x20

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x18

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v43, 0x10

    const/16 v44, 0x24

    const/16 v45, 0xe

    const/16 v46, 0x10

    const/16 v42, 0x1d

    move-object/from16 v47, v0

    invoke-direct/range {v41 .. v47}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v47, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v36, v47

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x31

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x1c

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v49, 0x10

    const/16 v50, 0x30

    const/16 v51, 0xe

    const/16 v52, 0x16

    const/16 v48, 0x1e

    move-object/from16 v53, v0

    invoke-direct/range {v47 .. v53}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v38, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v37, v38

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x12

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0xf

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v40, 0x8

    const/16 v41, 0x30

    const/16 v42, 0x6

    const/16 v43, 0x16

    const/16 v39, 0x1f

    move-object/from16 v44, v0

    invoke-direct/range {v38 .. v44}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v44, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v38, v44

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x18

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x12

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v46, 0x8

    const/16 v47, 0x40

    const/16 v48, 0x6

    const/16 v49, 0xe

    const/16 v45, 0x20

    move-object/from16 v50, v0

    invoke-direct/range {v44 .. v50}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v50, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v39, v50

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x20

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x16

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v52, 0x8

    const/16 v53, 0x50

    const/16 v54, 0x6

    const/16 v55, 0x12

    const/16 v51, 0x21

    move-object/from16 v56, v0

    invoke-direct/range {v50 .. v56}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v41, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v40, v41

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x26

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x1c

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v43, 0x8

    const/16 v44, 0x60

    const/16 v45, 0x6

    const/16 v46, 0x16

    const/16 v42, 0x22

    move-object/from16 v47, v0

    invoke-direct/range {v41 .. v47}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v47, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v41, v47

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x31

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x20

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v49, 0x8

    const/16 v50, 0x78

    const/16 v51, 0x6

    const/16 v52, 0x12

    const/16 v48, 0x23

    move-object/from16 v53, v0

    invoke-direct/range {v47 .. v53}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v53, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v42, v53

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x3f

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x24

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v55, 0x8

    const/16 v56, 0x90

    const/16 v57, 0x6

    const/16 v58, 0x16

    const/16 v54, 0x24

    move-object/from16 v59, v0

    invoke-direct/range {v53 .. v59}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v44, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v43, v44

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x2b

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x1b

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v46, 0xc

    const/16 v47, 0x40

    const/16 v48, 0xa

    const/16 v49, 0xe

    const/16 v45, 0x25

    move-object/from16 v50, v0

    invoke-direct/range {v44 .. v50}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v50, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v44, v50

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x40

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x24

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v52, 0xc

    const/16 v53, 0x58

    const/16 v54, 0xa

    const/16 v55, 0x14

    const/16 v51, 0x26

    move-object/from16 v56, v0

    invoke-direct/range {v50 .. v56}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v56, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v45, v56

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x3e

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x24

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v58, 0x10

    const/16 v59, 0x40

    const/16 v60, 0xe

    const/16 v61, 0xe

    const/16 v57, 0x27

    move-object/from16 v62, v0

    invoke-direct/range {v56 .. v62}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v47, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v46, v47

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x2c

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x1c

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v49, 0x14

    const/16 v50, 0x24

    const/16 v51, 0x12

    const/16 v52, 0x10

    const/16 v48, 0x28

    move-object/from16 v53, v0

    invoke-direct/range {v47 .. v53}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v53, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v47, v53

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x38

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x22

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v56, 0x2c

    const/16 v57, 0x12

    const/16 v58, 0x14

    const/16 v54, 0x29

    move-object/from16 v59, v0

    invoke-direct/range {v53 .. v59}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v59, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v48, v59

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x54

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x2a

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v61, 0x14

    const/16 v62, 0x40

    const/16 v63, 0x12

    const/16 v64, 0xe

    const/16 v60, 0x2a

    move-object/from16 v65, v0

    invoke-direct/range {v59 .. v65}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v50, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v49, v50

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x48

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x26

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v52, 0x16

    const/16 v53, 0x30

    const/16 v54, 0x14

    const/16 v55, 0x16

    const/16 v51, 0x2b

    move-object/from16 v56, v0

    invoke-direct/range {v50 .. v56}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v56, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v50, v56

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x50

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x29

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v58, 0x18

    const/16 v59, 0x30

    const/16 v60, 0x16

    const/16 v61, 0x16

    const/16 v57, 0x2c

    move-object/from16 v62, v0

    invoke-direct/range {v56 .. v62}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v62, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v51, v62

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x6c

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x2e

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v64, 0x18

    const/16 v65, 0x40

    const/16 v66, 0x16

    const/16 v67, 0xe

    const/16 v63, 0x2d

    move-object/from16 v68, v0

    invoke-direct/range {v62 .. v68}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v53, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v52, v53

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x46

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x26

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v55, 0x1a

    const/16 v56, 0x28

    const/16 v57, 0x18

    const/16 v58, 0x12

    const/16 v54, 0x2e

    move-object/from16 v59, v0

    invoke-direct/range {v53 .. v59}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v59, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v53, v59

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x5a

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x2a

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v61, 0x1a

    const/16 v62, 0x30

    const/16 v63, 0x18

    const/16 v64, 0x16

    const/16 v60, 0x2f

    move-object/from16 v65, v0

    invoke-direct/range {v59 .. v65}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    new-instance v65, Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v54, v65

    new-instance v0, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    new-instance v1, Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    const/16 v2, 0x76

    invoke-direct {v1, v3, v2}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;-><init>(II)V

    const/16 v2, 0x32

    invoke-direct {v0, v2, v1}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;-><init>(ILcom/google/zxing/datamatrix/decoder/Version$ECB;)V

    const/16 v67, 0x1a

    const/16 v68, 0x40

    const/16 v69, 0x18

    const/16 v70, 0xe

    const/16 v66, 0x30

    move-object/from16 v71, v0

    invoke-direct/range {v65 .. v71}, Lcom/google/zxing/datamatrix/decoder/Version;-><init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V

    filled-new-array/range {v7 .. v54}, [Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/datamatrix/decoder/Version;->VERSIONS:[Lcom/google/zxing/datamatrix/decoder/Version;

    return-void
.end method

.method public constructor <init>(IIIIILcom/google/zxing/datamatrix/decoder/Version$ECBlocks;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/datamatrix/decoder/Version;->versionNumber:I

    iput p2, p0, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeRows:I

    iput p3, p0, Lcom/google/zxing/datamatrix/decoder/Version;->symbolSizeColumns:I

    iput p4, p0, Lcom/google/zxing/datamatrix/decoder/Version;->dataRegionSizeRows:I

    iput p5, p0, Lcom/google/zxing/datamatrix/decoder/Version;->dataRegionSizeColumns:I

    iput-object p6, p0, Lcom/google/zxing/datamatrix/decoder/Version;->ecBlocks:Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    iget-object p1, p6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    array-length p2, p1

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object p5, p1, p3

    iget v0, p5, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->count:I

    iget p5, p5, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->dataCodewords:I

    iget v1, p6, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->ecCodewords:I

    add-int/2addr p5, v1

    mul-int/2addr p5, v0

    add-int/2addr p4, p5

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iput p4, p0, Lcom/google/zxing/datamatrix/decoder/Version;->totalCodewords:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/google/zxing/datamatrix/decoder/Version;->versionNumber:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
