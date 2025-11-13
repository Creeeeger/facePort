.class public final Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final allCodewordCapacities:[I

.field public static final rectangularCodewordCapacities:[I

.field public static final squareCodewordCapacities:[I


# instance fields
.field public final cachedTotalSize:I

.field public final characterLength:I

.field public final fromPosition:I

.field public final input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

.field public final mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

.field public final previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->allCodewordCapacities:[I

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->squareCodewordCapacities:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->rectangularCodewordCapacities:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x5
        0x8
        0xa
        0xc
        0x10
        0x12
        0x16
        0x1e
        0x20
        0x24
        0x2c
        0x31
        0x3e
        0x56
        0x72
        0x90
        0xae
        0xcc
        0x118
        0x170
        0x1c8
        0x240
        0x2b8
        0x330
        0x41a
        0x518
        0x616
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x5
        0x8
        0xc
        0x12
        0x16
        0x1e
        0x24
        0x2c
        0x3e
        0x56
        0x72
        0x90
        0xae
        0xcc
        0x118
        0x170
        0x1c8
        0x240
        0x2b8
        0x330
        0x41a
        0x518
        0x616
    .end array-data

    :array_2
    .array-data 4
        0x5
        0xa
        0x10
        0x21
        0x20
        0x31
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;IILcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iput-object p2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    iput p3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    iput p4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    iput-object p5, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    const/4 p4, 0x0

    if-eqz p5, :cond_0

    iget v0, p5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    sget-object v1, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-nez p5, :cond_1

    move-object p5, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    move-result-object p5

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v4, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    sget-object v5, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eqz v2, :cond_12

    sget-object v6, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->B256:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_e

    if-eq v2, v7, :cond_e

    const/4 v9, 0x3

    if-eq v2, v9, :cond_e

    const/4 p1, 0x4

    if-eq v2, p1, :cond_9

    const/4 p1, 0x5

    if-eq v2, p1, :cond_2

    goto/16 :goto_c

    :cond_2
    add-int/lit8 p1, v0, 0x1

    if-eq p5, v6, :cond_3

    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_3
    move-object p2, p0

    :goto_3
    const/16 p3, 0xfa

    if-eqz p2, :cond_4

    iget-object v2, p2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v2, v6, :cond_4

    if-gt p4, p3, :cond_4

    add-int/lit8 p4, p4, 0x1

    iget-object p2, p2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->previous:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;

    goto :goto_3

    :cond_4
    if-ne p4, p3, :cond_5

    goto :goto_2

    :cond_5
    move v0, p1

    :goto_4
    if-ne p5, v1, :cond_7

    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    :cond_7
    if-eq p5, v5, :cond_8

    if-eq p5, v4, :cond_8

    if-ne p5, v3, :cond_15

    :cond_8
    :goto_6
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_c

    :cond_9
    add-int/lit8 p1, v0, 0x3

    if-eq p5, v1, :cond_d

    if-ne p5, v6, :cond_a

    goto :goto_8

    :cond_a
    if-eq p5, v5, :cond_c

    if-eq p5, v4, :cond_c

    if-ne p5, v3, :cond_b

    goto :goto_7

    :cond_b
    move v0, p1

    goto :goto_c

    :cond_c
    :goto_7
    add-int/lit8 v0, v0, 0x5

    goto :goto_c

    :cond_d
    :goto_8
    add-int/lit8 v0, v0, 0x4

    goto :goto_c

    :cond_e
    if-ne p2, v3, :cond_f

    add-int/lit8 v0, v0, 0x2

    goto :goto_9

    :cond_f
    new-array v2, v8, [I

    if-ne p2, v5, :cond_10

    move p4, v8

    :cond_10
    invoke-static {p1, p3, p4, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->getNumberOfC40Words(Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;IZ[I)I

    move-result p1

    mul-int/2addr p1, v7

    add-int/2addr p1, v0

    move v0, p1

    :goto_9
    if-eq p5, v1, :cond_6

    if-ne p5, v6, :cond_11

    goto :goto_5

    :cond_11
    if-eq p5, p2, :cond_15

    if-eq p5, v5, :cond_8

    if-eq p5, v4, :cond_8

    if-ne p5, v3, :cond_15

    goto :goto_6

    :cond_12
    add-int/lit8 p2, v0, 0x1

    invoke-virtual {p1, p3}, Lcom/google/zxing/common/MinimalECIInput;->isECI(I)Z

    move-result p4

    if-nez p4, :cond_14

    invoke-virtual {p1, p3}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result p3

    iget p1, p1, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    invoke-static {p3, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_a

    :cond_13
    move v0, p2

    goto :goto_b

    :cond_14
    :goto_a
    add-int/lit8 v0, v0, 0x2

    :goto_b
    if-eq p5, v5, :cond_6

    if-eq p5, v4, :cond_6

    if-ne p5, v3, :cond_15

    goto :goto_5

    :cond_15
    :goto_c
    iput v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    return-void
.end method

.method public static getC40Value(ZICI)I
    .locals 9

    if-ne p2, p3, :cond_0

    const/16 p0, 0x1b

    return p0

    :cond_0
    const/16 p3, 0x40

    const/16 v0, 0x7f

    const/16 v1, 0x5f

    const/16 v2, 0x5a

    const/16 v3, 0x39

    const/16 v4, 0x2f

    const/16 v5, 0x20

    const/16 v6, 0x1f

    const/4 v7, 0x3

    if-eqz p0, :cond_9

    if-gt p2, v6, :cond_1

    goto :goto_0

    :cond_1
    if-ne p2, v5, :cond_2

    move p2, v7

    goto :goto_0

    :cond_2
    if-gt p2, v4, :cond_3

    add-int/lit8 p2, p2, -0x21

    goto :goto_0

    :cond_3
    if-gt p2, v3, :cond_4

    add-int/lit8 p2, p2, -0x2c

    goto :goto_0

    :cond_4
    if-gt p2, p3, :cond_5

    add-int/lit8 p2, p2, -0x2b

    goto :goto_0

    :cond_5
    if-gt p2, v2, :cond_6

    add-int/lit8 p2, p2, -0x33

    goto :goto_0

    :cond_6
    if-gt p2, v1, :cond_7

    add-int/lit8 p2, p2, -0x45

    goto :goto_0

    :cond_7
    if-gt p2, v0, :cond_8

    add-int/lit8 p2, p2, -0x60

    :cond_8
    :goto_0
    return p2

    :cond_9
    const/4 p0, 0x0

    if-nez p2, :cond_a

    :goto_1
    move p2, p0

    goto/16 :goto_2

    :cond_a
    if-nez p1, :cond_b

    if-gt p2, v7, :cond_b

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_b
    const/4 v8, 0x1

    if-ne p1, v8, :cond_c

    if-gt p2, v6, :cond_c

    goto :goto_2

    :cond_c
    if-ne p2, v5, :cond_d

    move p2, v7

    goto :goto_2

    :cond_d
    const/16 p1, 0x21

    if-lt p2, p1, :cond_e

    if-gt p2, v4, :cond_e

    add-int/lit8 p2, p2, -0x21

    goto :goto_2

    :cond_e
    const/16 p1, 0x30

    if-lt p2, p1, :cond_f

    if-gt p2, v3, :cond_f

    add-int/lit8 p2, p2, -0x2c

    goto :goto_2

    :cond_f
    const/16 p1, 0x3a

    if-lt p2, p1, :cond_10

    if-gt p2, p3, :cond_10

    add-int/lit8 p2, p2, -0x2b

    goto :goto_2

    :cond_10
    const/16 p1, 0x41

    if-lt p2, p1, :cond_11

    if-gt p2, v2, :cond_11

    add-int/lit8 p2, p2, -0x40

    goto :goto_2

    :cond_11
    const/16 p1, 0x5b

    if-lt p2, p1, :cond_12

    if-gt p2, v1, :cond_12

    add-int/lit8 p2, p2, -0x45

    goto :goto_2

    :cond_12
    const/16 p1, 0x60

    if-ne p2, p1, :cond_13

    goto :goto_1

    :cond_13
    const/16 p0, 0x61

    if-lt p2, p0, :cond_14

    const/16 p0, 0x7a

    if-gt p2, p0, :cond_14

    add-int/lit8 p2, p2, -0x53

    goto :goto_2

    :cond_14
    const/16 p0, 0x7b

    if-lt p2, p0, :cond_15

    if-gt p2, v0, :cond_15

    add-int/lit8 p2, p2, -0x60

    :cond_15
    :goto_2
    return p2
.end method

.method public static getShiftValue(CZI)I
    .locals 5

    const/16 v0, 0x1f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-gt p0, v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez p1, :cond_1

    if-gt p0, v0, :cond_1

    goto :goto_3

    :cond_1
    const/16 v0, 0x1b

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->C40_SHIFT2_CHARS:[C

    if-eqz p1, :cond_4

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    aget-char v4, v2, v3

    if-ne v4, p0, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-ne p0, p2, :cond_4

    goto :goto_2

    :cond_4
    if-nez p1, :cond_7

    :goto_1
    if-ge v1, v0, :cond_6

    aget-char p1, v2, v1

    if-ne p1, p0, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    if-ne p0, p2, :cond_7

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x2

    :goto_3
    return v1
.end method

.method public static getX12Value(C)I
    .locals 1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x20

    if-ne p0, v0, :cond_3

    const/4 p0, 0x3

    goto :goto_0

    :cond_3
    const/16 v0, 0x30

    if-lt p0, v0, :cond_4

    const/16 v0, 0x39

    if-gt p0, v0, :cond_4

    add-int/lit8 p0, p0, -0x2c

    goto :goto_0

    :cond_4
    const/16 v0, 0x41

    if-lt p0, v0, :cond_5

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_5

    add-int/lit8 p0, p0, -0x33

    :cond_5
    :goto_0
    return p0
.end method

.method public static setC40Word([BIIII)V
    .locals 0

    and-int/lit16 p2, p2, 0xff

    mul-int/lit16 p2, p2, 0x640

    and-int/lit16 p3, p3, 0xff

    mul-int/lit8 p3, p3, 0x28

    add-int/2addr p3, p2

    and-int/lit16 p2, p4, 0xff

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, 0x1

    div-int/lit16 p2, p3, 0x100

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    rem-int/lit16 p3, p3, 0x100

    int-to-byte p2, p3

    aput-byte p2, p0, p1

    return-void
.end method


# virtual methods
.method public final getC40Words(IZ)[B
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    if-ge v2, v3, :cond_7

    iget v3, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    invoke-virtual {v4, v3}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v3

    if-eqz p2, :cond_0

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-nez p2, :cond_2

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-static {p2, v1, v3, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Value(ZICI)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    invoke-static {v3, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v3, p2, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getShiftValue(CZI)I

    move-result v4

    int-to-byte v5, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2, v4, v3, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Value(ZICI)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x80

    int-to-char v3, v3

    const/4 v4, 0x1

    const/16 v5, 0x1e

    if-eqz p2, :cond_4

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    if-nez p2, :cond_6

    invoke-static {v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2, v1, v3, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Value(ZICI)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, p2, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getShiftValue(CZI)I

    move-result v4

    int-to-byte v5, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2, v4, v3, p1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getC40Value(ZICI)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    rem-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_8

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    mul-int/lit8 p0, p0, 0x2

    new-array p0, p0, [B

    move p1, v1

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p0, p1, p2, v2, v3}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->setC40Word([BIIII)V

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, v1, 0x3

    goto :goto_2

    :cond_9
    return-object p0
.end method

.method public final getEndMode()Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;
    .locals 7

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->EDF:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    sget-object v3, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->ASCII:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    iget-object v4, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v4, v0, :cond_1

    const/4 v0, 0x4

    if-ge v1, v0, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getLastASCII()I

    move-result v0

    if-lez v0, :cond_1

    add-int v5, v2, v0

    invoke-virtual {p0, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getMinSymbolSize(I)I

    move-result v6

    sub-int/2addr v6, v5

    rsub-int/lit8 v0, v0, 0x2

    if-gt v6, v0, :cond_1

    return-object v3

    :cond_1
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->C40:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v4, v0, :cond_2

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->TEXT:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-eq v4, v0, :cond_2

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;->X12:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Mode;

    if-ne v4, v0, :cond_4

    :cond_2
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget-object v1, v1, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v1, v1

    if-lt v0, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getMinSymbolSize(I)I

    move-result v0

    sub-int/2addr v0, v2

    if-nez v0, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getLastASCII()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->getMinSymbolSize(I)I

    move-result p0

    sub-int/2addr p0, v2

    if-nez p0, :cond_4

    return-object v3

    :cond_4
    return-object v4
.end method

.method public final getLastASCII()I
    .locals 7

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget-object v1, v0, Lcom/google/zxing/common/MinimalECIInput;->bytes:[I

    array-length v1, v1

    iget v2, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->fromPosition:I

    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->characterLength:I

    add-int/2addr v2, p0

    sub-int p0, v1, v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-gt p0, v3, :cond_a

    if-lt v2, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result p0

    iget v0, v0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    invoke-static {p0, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result p0

    if-eqz p0, :cond_1

    return v4

    :cond_1
    return v1

    :cond_2
    const/4 v3, 0x2

    if-ne p0, v3, :cond_6

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result p0

    iget v5, v0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    invoke-static {p0, v5}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result p0

    if-nez p0, :cond_5

    add-int/lit8 p0, v2, 0x1

    invoke-virtual {v0, p0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v5

    iget v6, v0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    invoke-static {v5, v6}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, p0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v3

    :cond_5
    :goto_0
    return v4

    :cond_6
    const/4 v1, 0x3

    if-ne p0, v1, :cond_9

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_7

    add-int/lit8 p0, v2, 0x1

    invoke-virtual {v0, p0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_7

    add-int/lit8 p0, v2, 0x2

    invoke-virtual {v0, p0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result p0

    iget v1, v0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    invoke-static {p0, v1}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result p0

    if-nez p0, :cond_7

    return v3

    :cond_7
    add-int/lit8 p0, v2, 0x1

    invoke-virtual {v0, p0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_8

    add-int/lit8 p0, v2, 0x2

    invoke-virtual {v0, p0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result p0

    iget v0, v0, Lcom/google/zxing/common/MinimalECIInput;->fnc1:I

    invoke-static {p0, v0}, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder;->isExtendedASCII(CI)Z

    move-result p0

    if-nez p0, :cond_8

    return v3

    :cond_8
    return v4

    :cond_9
    invoke-virtual {v0, v2}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_a

    add-int/lit8 p0, v2, 0x1

    invoke-virtual {v0, p0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_a

    add-int/lit8 p0, v2, 0x2

    invoke-virtual {v0, p0}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_a

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/MinimalECIInput;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_a

    return v3

    :cond_a
    :goto_1
    return v4
.end method

.method public final getMinSymbolSize(I)I
    .locals 3

    iget-object p0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->input:Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;

    iget-object p0, p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Input;->shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->rectangularCodewordCapacities:[I

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_4

    aget v2, p0, v1

    if-lt v2, p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->squareCodewordCapacities:[I

    move v1, v0

    :goto_1
    const/16 v2, 0x18

    if-ge v1, v2, :cond_4

    aget v2, p0, v1

    if-lt v2, p1, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    sget-object p0, Lcom/google/zxing/datamatrix/encoder/MinimalEncoder$Edge;->allCodewordCapacities:[I

    :goto_3
    const/16 v1, 0x1c

    if-ge v0, v1, :cond_6

    aget v1, p0, v0

    if-lt v1, p1, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/16 p1, 0x1b

    aget p0, p0, p1

    return p0
.end method
