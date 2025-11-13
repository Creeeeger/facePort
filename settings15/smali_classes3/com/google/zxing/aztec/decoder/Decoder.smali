.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field public static final DIGIT_TABLE:[Ljava/lang/String;

.field public static final LOWER_TABLE:[Ljava/lang/String;

.field public static final MIXED_TABLE:[Ljava/lang/String;

.field public static final PUNCT_TABLE:[Ljava/lang/String;

.field public static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field public ddata:Lcom/google/zxing/aztec/AztecDetectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    const-string v30, "CTRL_DL"

    const-string v31, "CTRL_BS"

    const-string v0, "CTRL_PS"

    const-string v1, " "

    const-string v2, "A"

    const-string v3, "B"

    const-string v4, "C"

    const-string v5, "D"

    const-string v6, "E"

    const-string v7, "F"

    const-string v8, "G"

    const-string v9, "H"

    const-string v10, "I"

    const-string v11, "J"

    const-string v12, "K"

    const-string v13, "L"

    const-string v14, "M"

    const-string v15, "N"

    const-string v16, "O"

    const-string v17, "P"

    const-string v18, "Q"

    const-string v19, "R"

    const-string v20, "S"

    const-string v21, "T"

    const-string v22, "U"

    const-string v23, "V"

    const-string v24, "W"

    const-string v25, "X"

    const-string v26, "Y"

    const-string v27, "Z"

    const-string v28, "CTRL_LL"

    const-string v29, "CTRL_ML"

    filled-new-array/range {v0 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    const-string v31, "CTRL_DL"

    const-string v32, "CTRL_BS"

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "a"

    const-string v4, "b"

    const-string v5, "c"

    const-string v6, "d"

    const-string v7, "e"

    const-string v8, "f"

    const-string v9, "g"

    const-string v10, "h"

    const-string v11, "i"

    const-string v12, "j"

    const-string v13, "k"

    const-string v14, "l"

    const-string v15, "m"

    const-string v16, "n"

    const-string v17, "o"

    const-string v18, "p"

    const-string v19, "q"

    const-string v20, "r"

    const-string/jumbo v21, "s"

    const-string/jumbo v22, "t"

    const-string/jumbo v23, "u"

    const-string/jumbo v24, "v"

    const-string/jumbo v25, "w"

    const-string/jumbo v26, "x"

    const-string/jumbo v27, "y"

    const-string/jumbo v28, "z"

    const-string v29, "CTRL_US"

    const-string v30, "CTRL_ML"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    const-string v31, "CTRL_PL"

    const-string v32, "CTRL_BS"

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "\u0001"

    const-string v4, "\u0002"

    const-string v5, "\u0003"

    const-string v6, "\u0004"

    const-string v7, "\u0005"

    const-string v8, "\u0006"

    const-string v9, "\u0007"

    const-string v10, "\u0008"

    const-string v11, "\t"

    const-string v12, "\n"

    const-string v13, "\u000b"

    const-string v14, "\u000c"

    const-string v15, "\r"

    const-string v16, "\u001b"

    const-string v17, "\u001c"

    const-string v18, "\u001d"

    const-string v19, "\u001e"

    const-string v20, "\u001f"

    const-string v21, "@"

    const-string v22, "\\"

    const-string v23, "^"

    const-string v24, "_"

    const-string v25, "`"

    const-string/jumbo v26, "|"

    const-string/jumbo v27, "~"

    const-string/jumbo v28, "\u007f"

    const-string v29, "CTRL_LL"

    const-string v30, "CTRL_UL"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    const-string/jumbo v31, "}"

    const-string v32, "CTRL_UL"

    const-string v1, "FLG(n)"

    const-string v2, "\r"

    const-string v3, "\r\n"

    const-string v4, ". "

    const-string v5, ", "

    const-string v6, ": "

    const-string v7, "!"

    const-string v8, "\""

    const-string v9, "#"

    const-string v10, "$"

    const-string v11, "%"

    const-string v12, "&"

    const-string v13, "\'"

    const-string v14, "("

    const-string v15, ")"

    const-string v16, "*"

    const-string v17, "+"

    const-string v18, ","

    const-string v19, "-"

    const-string v20, "."

    const-string v21, "/"

    const-string v22, ":"

    const-string v23, ";"

    const-string v24, "<"

    const-string v25, "="

    const-string v26, ">"

    const-string v27, "?"

    const-string v28, "["

    const-string v29, "]"

    const-string/jumbo v30, "{"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    const-string v15, "CTRL_UL"

    const-string v16, "CTRL_US"

    const-string v1, "CTRL_PS"

    const-string v2, " "

    const-string v3, "0"

    const-string v4, "1"

    const-string v5, "2"

    const-string v6, "3"

    const-string v7, "4"

    const-string v8, "5"

    const-string v9, "6"

    const-string v10, "7"

    const-string v11, "8"

    const-string v12, "9"

    const-string v13, ","

    const-string v14, "."

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static readCode([ZII)I
    .locals 3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    shl-int/lit8 v0, v0, 0x1

    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    iput-object v1, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    iget-boolean v11, v1, Lcom/google/zxing/aztec/AztecDetectorResult;->compact:Z

    if-eqz v11, :cond_0

    const/16 v13, 0xb

    goto :goto_0

    :cond_0
    const/16 v13, 0xe

    :goto_0
    iget v14, v1, Lcom/google/zxing/aztec/AztecDetectorResult;->nbLayers:I

    mul-int/lit8 v15, v14, 0x4

    add-int/2addr v15, v13

    new-array v13, v15, [I

    if-eqz v11, :cond_1

    const/16 v16, 0x58

    goto :goto_1

    :cond_1
    const/16 v16, 0x70

    :goto_1
    mul-int/lit8 v17, v14, 0x10

    add-int v17, v17, v16

    mul-int v4, v17, v14

    new-array v2, v4, [Z

    if-eqz v11, :cond_2

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v15, :cond_3

    aput v12, v13, v12

    add-int/2addr v12, v10

    goto :goto_2

    :cond_2
    add-int/lit8 v12, v15, 0x1

    div-int/lit8 v6, v15, 0x2

    add-int/lit8 v19, v6, -0x1

    div-int/lit8 v19, v19, 0xf

    mul-int/lit8 v19, v19, 0x2

    add-int v19, v19, v12

    div-int/lit8 v19, v19, 0x2

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v6, :cond_3

    div-int/lit8 v20, v12, 0xf

    add-int v20, v20, v12

    sub-int v21, v6, v12

    add-int/lit8 v21, v21, -0x1

    sub-int v22, v19, v20

    add-int/lit8 v22, v22, -0x1

    aput v22, v13, v21

    add-int v21, v6, v12

    add-int v20, v19, v20

    add-int/lit8 v20, v20, 0x1

    aput v20, v13, v21

    add-int/2addr v12, v10

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_4
    const/16 v19, 0xc

    if-ge v6, v14, :cond_7

    sub-int v20, v14, v6

    mul-int/lit8 v20, v20, 0x4

    if-eqz v11, :cond_4

    const/16 v19, 0x9

    :cond_4
    add-int v3, v20, v19

    mul-int/lit8 v19, v6, 0x2

    add-int/lit8 v20, v15, -0x1

    sub-int v20, v20, v19

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v3, :cond_6

    mul-int/lit8 v23, v7, 0x2

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_5

    add-int v25, v12, v23

    add-int v25, v25, v10

    add-int v26, v19, v10

    aget v5, v13, v26

    add-int v27, v19, v7

    aget v8, v13, v27

    iget-object v9, v1, Lcom/google/zxing/aztec/AztecDetectorResult;->bits:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v9, v5, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    aput-boolean v5, v2, v25

    const/4 v5, 0x2

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v12

    add-int v8, v8, v23

    add-int/2addr v8, v10

    aget v5, v13, v27

    sub-int v25, v20, v10

    aget v1, v13, v25

    invoke-virtual {v9, v5, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    aput-boolean v1, v2, v8

    const/4 v1, 0x4

    mul-int/lit8 v8, v3, 0x4

    add-int/2addr v8, v12

    add-int v8, v8, v23

    add-int/2addr v8, v10

    aget v1, v13, v25

    sub-int v5, v20, v7

    move/from16 v25, v11

    aget v11, v13, v5

    invoke-virtual {v9, v1, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    aput-boolean v1, v2, v8

    const/4 v1, 0x6

    mul-int/lit8 v8, v3, 0x6

    add-int/2addr v8, v12

    add-int v8, v8, v23

    add-int/2addr v8, v10

    aget v1, v13, v5

    aget v5, v13, v26

    invoke-virtual {v9, v1, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    aput-boolean v1, v2, v8

    const/4 v1, 0x1

    add-int/2addr v10, v1

    move-object/from16 v1, p1

    move/from16 v11, v25

    const/4 v8, 0x4

    const/4 v9, 0x2

    goto :goto_6

    :cond_5
    move/from16 v25, v11

    const/4 v1, 0x1

    add-int/2addr v7, v1

    move v10, v1

    const/4 v8, 0x4

    const/4 v9, 0x2

    move-object/from16 v1, p1

    goto :goto_5

    :cond_6
    move v1, v10

    move/from16 v25, v11

    const/16 v5, 0x8

    mul-int/2addr v3, v5

    add-int/2addr v12, v3

    add-int/2addr v6, v1

    const/4 v8, 0x4

    const/4 v9, 0x2

    move-object/from16 v1, p1

    goto/16 :goto_4

    :cond_7
    const/16 v5, 0x8

    iget-object v0, v0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    iget v1, v0, Lcom/google/zxing/aztec/AztecDetectorResult;->nbLayers:I

    const/4 v3, 0x2

    if-gt v1, v3, :cond_8

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/4 v3, 0x6

    goto :goto_7

    :cond_8
    if-gt v1, v5, :cond_9

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v3, 0x8

    goto :goto_7

    :cond_9
    const/16 v3, 0x16

    if-gt v1, v3, :cond_a

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v3, 0xa

    goto :goto_7

    :cond_a
    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move/from16 v3, v19

    :goto_7
    div-int v5, v4, v3

    iget v0, v0, Lcom/google/zxing/aztec/AztecDetectorResult;->nbDatablocks:I

    if-lt v5, v0, :cond_36

    rem-int/2addr v4, v3

    new-array v6, v5, [I

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v5, :cond_b

    invoke-static {v2, v4, v3}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v8

    aput v8, v6, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    add-int/2addr v4, v3

    goto :goto_8

    :cond_b
    const/4 v8, 0x1

    :try_start_0
    new-instance v2, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-direct {v2, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    sub-int v1, v5, v0

    invoke-virtual {v2, v1, v6}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decodeWithECCount(I[I)I

    move-result v2
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_2

    shl-int v4, v8, v3

    add-int/lit8 v7, v4, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_9
    if-ge v9, v0, :cond_f

    aget v11, v6, v9

    if-eqz v11, :cond_e

    if-eq v11, v7, :cond_e

    if-eq v11, v8, :cond_c

    const/4 v12, 0x2

    add-int/lit8 v13, v4, -0x2

    if-ne v11, v13, :cond_d

    :cond_c
    add-int/2addr v10, v8

    :cond_d
    add-int/2addr v9, v8

    goto :goto_9

    :cond_e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_f
    mul-int v7, v0, v3

    sub-int/2addr v7, v10

    new-array v8, v7, [Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_a
    if-ge v9, v0, :cond_15

    aget v11, v6, v9

    const/4 v12, 0x1

    if-eq v11, v12, :cond_12

    const/4 v13, 0x2

    add-int/lit8 v14, v4, -0x2

    if-ne v11, v14, :cond_10

    goto :goto_d

    :cond_10
    add-int/lit8 v13, v3, -0x1

    :goto_b
    if-ltz v13, :cond_14

    add-int/lit8 v14, v10, 0x1

    shl-int v15, v12, v13

    and-int/2addr v15, v11

    if-eqz v15, :cond_11

    move/from16 v24, v12

    goto :goto_c

    :cond_11
    const/16 v24, 0x0

    :goto_c
    aput-boolean v24, v8, v10

    add-int/lit8 v13, v13, -0x1

    move v10, v14

    goto :goto_b

    :cond_12
    :goto_d
    add-int v13, v10, v3

    sub-int/2addr v13, v12

    if-le v11, v12, :cond_13

    move v11, v12

    goto :goto_e

    :cond_13
    const/4 v11, 0x0

    :goto_e
    invoke-static {v8, v10, v13, v11}, Ljava/util/Arrays;->fill([ZIIZ)V

    add-int/lit8 v11, v3, -0x1

    add-int/2addr v11, v10

    move v10, v11

    :cond_14
    add-int/2addr v9, v12

    goto :goto_a

    :cond_15
    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v5

    const/4 v0, 0x7

    add-int/lit8 v3, v7, 0x7

    const/16 v0, 0x8

    div-int/2addr v3, v0

    new-array v4, v3, [B

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v3, :cond_17

    mul-int/lit8 v6, v5, 0x8

    sub-int v9, v7, v6

    if-lt v9, v0, :cond_16

    invoke-static {v8, v6, v0}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v6

    int-to-byte v6, v6

    goto :goto_10

    :cond_16
    invoke-static {v8, v6, v9}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v6

    rsub-int/lit8 v9, v9, 0x8

    shl-int v0, v6, v9

    int-to-byte v6, v0

    :goto_10
    aput-byte v6, v4, v5

    const/4 v0, 0x1

    add-int/2addr v5, v0

    const/16 v0, 0x8

    goto :goto_f

    :cond_17
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    add-int/lit8 v6, v7, -0x5

    const/4 v9, 0x4

    div-int/2addr v6, v9

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v9, Lcom/google/zxing/aztec/decoder/Decoder;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    move-object v11, v0

    move-object v12, v11

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v7, :cond_34

    sget-object v13, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v11, v13, :cond_1d

    sub-int v11, v7, v10

    if-ge v11, v5, :cond_18

    goto/16 :goto_1c

    :cond_18
    invoke-static {v8, v10, v5}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v11

    add-int/lit8 v13, v10, 0x5

    if-nez v11, :cond_1a

    sub-int v5, v7, v13

    const/16 v11, 0xb

    if-ge v5, v11, :cond_19

    goto/16 :goto_1c

    :cond_19
    invoke-static {v8, v13, v11}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v5

    add-int/lit8 v11, v5, 0x1f

    add-int/lit8 v13, v10, 0x10

    :cond_1a
    const/4 v5, 0x0

    :goto_12
    if-ge v5, v11, :cond_1c

    sub-int v10, v7, v13

    const/16 v14, 0x8

    if-ge v10, v14, :cond_1b

    move v10, v7

    goto :goto_13

    :cond_1b
    invoke-static {v8, v13, v14}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v6, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/2addr v13, v14

    const/4 v10, 0x1

    add-int/2addr v5, v10

    goto :goto_12

    :cond_1c
    const/16 v14, 0x8

    move v10, v13

    :goto_13
    move-object v11, v12

    const/4 v5, 0x5

    goto :goto_11

    :cond_1d
    const/16 v14, 0x8

    sget-object v5, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    if-ne v11, v5, :cond_1e

    const/4 v15, 0x4

    goto :goto_14

    :cond_1e
    const/4 v15, 0x5

    :goto_14
    sub-int v14, v7, v10

    if-ge v14, v15, :cond_1f

    goto/16 :goto_1c

    :cond_1f
    invoke-static {v8, v10, v15}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v14

    add-int/2addr v10, v15

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    if-eqz v15, :cond_24

    move-object/from16 p0, v0

    const/4 v0, 0x1

    if-eq v15, v0, :cond_23

    const/4 v0, 0x2

    if-eq v15, v0, :cond_22

    const/4 v0, 0x3

    if-eq v15, v0, :cond_21

    const/4 v0, 0x4

    if-ne v15, v0, :cond_20

    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, v14

    goto :goto_15

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    aget-object v0, v0, v14

    goto :goto_15

    :cond_22
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    aget-object v0, v0, v14

    goto :goto_15

    :cond_23
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, v14

    goto :goto_15

    :cond_24
    move-object/from16 p0, v0

    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    aget-object v0, v0, v14

    :goto_15
    const-string v14, "FLG(n)"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    sub-int v0, v7, v10

    const/4 v14, 0x3

    if-ge v0, v14, :cond_25

    goto/16 :goto_1c

    :cond_25
    invoke-static {v8, v10, v14}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v0

    add-int/2addr v10, v14

    :try_start_1
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    if-eqz v0, :cond_2b

    const/4 v15, 0x7

    if-eq v0, v15, :cond_2a

    sub-int v5, v7, v10

    const/4 v11, 0x4

    mul-int/lit8 v13, v0, 0x4

    if-ge v5, v13, :cond_26

    const/16 v11, 0xb

    const/4 v13, 0x2

    const/16 v16, 0xa

    goto :goto_17

    :cond_26
    const/4 v5, 0x0

    :goto_16
    add-int/lit8 v9, v0, -0x1

    if-lez v0, :cond_28

    invoke-static {v8, v10, v11}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    move-result v0

    add-int/2addr v10, v11

    const/4 v13, 0x2

    if-lt v0, v13, :cond_27

    const/16 v11, 0xb

    if-gt v0, v11, :cond_27

    const/16 v16, 0xa

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v0, v13

    add-int/2addr v5, v0

    move v0, v9

    const/4 v11, 0x4

    goto :goto_16

    :cond_27
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_28
    const/16 v11, 0xb

    const/4 v13, 0x2

    const/16 v16, 0xa

    invoke-static {v5}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    goto :goto_17

    :cond_29
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_2a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_2b
    const/16 v11, 0xb

    const/4 v13, 0x2

    const/4 v15, 0x7

    const/16 v16, 0xa

    const/16 v0, 0x1d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_17
    move-object v11, v12

    move/from16 v18, v13

    const/4 v5, 0x6

    const/4 v13, 0x0

    const/16 v19, 0x4

    goto :goto_1b

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2c
    move-object/from16 v17, v11

    const/4 v14, 0x3

    const/4 v15, 0x7

    const/16 v16, 0xa

    const/16 v18, 0x2

    const/16 v19, 0x4

    const-string v11, "CTRL_"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_33

    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v11, 0x42

    const/16 v14, 0x4c

    if-eq v12, v11, :cond_2d

    const/16 v11, 0x44

    if-eq v12, v11, :cond_31

    const/16 v5, 0x50

    if-eq v12, v5, :cond_30

    if-eq v12, v14, :cond_2f

    const/16 v5, 0x4d

    if-eq v12, v5, :cond_2e

    move-object/from16 v13, p0

    :cond_2d
    :goto_18
    const/4 v5, 0x6

    goto :goto_19

    :cond_2e
    sget-object v13, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_18

    :cond_2f
    sget-object v13, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_18

    :cond_30
    sget-object v13, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    goto :goto_18

    :cond_31
    move-object v13, v5

    goto :goto_18

    :goto_19
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move-object v11, v13

    if-ne v0, v14, :cond_32

    move-object v12, v11

    :goto_1a
    const/4 v13, 0x0

    goto :goto_1b

    :cond_32
    move-object/from16 v12, v17

    goto :goto_1a

    :cond_33
    const/4 v5, 0x6

    sget-object v11, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v11, v0

    const/4 v13, 0x0

    invoke-virtual {v6, v0, v13, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move-object v11, v12

    :goto_1b
    const/4 v5, 0x5

    move-object/from16 v0, p0

    goto/16 :goto_11

    :cond_34
    :goto_1c
    :try_start_2
    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/google/zxing/common/DecoderResult;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "%d%%"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v4, v1}, Lcom/google/zxing/common/DecoderResult;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v3, Lcom/google/zxing/common/DecoderResult;->errorsCorrected:Ljava/lang/Integer;

    return-object v3

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    sget-object v1, Lcom/google/zxing/FormatException;->INSTANCE:Lcom/google/zxing/FormatException;

    sget-boolean v1, Lcom/google/zxing/ReaderException;->isStackTrace:Z

    if-eqz v1, :cond_35

    new-instance v1, Lcom/google/zxing/FormatException;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1d

    :cond_35
    sget-object v1, Lcom/google/zxing/FormatException;->INSTANCE:Lcom/google/zxing/FormatException;

    :goto_1d
    throw v1

    :cond_36
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
