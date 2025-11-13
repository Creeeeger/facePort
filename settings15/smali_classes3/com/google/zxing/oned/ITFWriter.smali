.class public final Lcom/google/zxing/oned/ITFWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final END_PATTERN:[I

.field public static final PATTERNS:[[I

.field public static final START_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x1

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    const/4 v1, 0x3

    filled-new-array {v1, v0, v0}, [I

    move-result-object v2

    sput-object v2, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    filled-new-array {v0, v0, v1, v1, v0}, [I

    move-result-object v3

    filled-new-array {v1, v0, v0, v0, v1}, [I

    move-result-object v4

    filled-new-array {v0, v1, v0, v0, v1}, [I

    move-result-object v5

    filled-new-array {v1, v1, v0, v0, v0}, [I

    move-result-object v6

    filled-new-array {v0, v0, v1, v0, v1}, [I

    move-result-object v7

    filled-new-array {v1, v0, v1, v0, v0}, [I

    move-result-object v8

    filled-new-array {v0, v1, v1, v0, v0}, [I

    move-result-object v9

    filled-new-array {v0, v0, v0, v1, v1}, [I

    move-result-object v10

    filled-new-array {v1, v0, v0, v1, v0}, [I

    move-result-object v11

    filled-new-array {v0, v1, v0, v1, v0}, [I

    move-result-object v12

    filled-new-array/range {v3 .. v12}, [[I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/ITFWriter;->PATTERNS:[[I

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/String;)[Z
    .locals 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_3

    const/16 v0, 0x50

    if-gt p0, v0, :cond_2

    invoke-static {p1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->checkNumeric(Ljava/lang/String;)V

    mul-int/lit8 v0, p0, 0x9

    add-int/lit8 v0, v0, 0x9

    new-array v0, v0, [Z

    sget-object v1, Lcom/google/zxing/oned/ITFWriter;->START_PATTERN:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v1

    move v4, v2

    :goto_0
    if-ge v4, p0, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    new-array v6, v6, [I

    move v8, v2

    :goto_1
    const/4 v9, 0x5

    if-ge v8, v9, :cond_0

    mul-int/lit8 v9, v8, 0x2

    sget-object v10, Lcom/google/zxing/oned/ITFWriter;->PATTERNS:[[I

    aget-object v11, v10, v5

    aget v11, v11, v8

    aput v11, v6, v9

    add-int/2addr v9, v3

    aget-object v10, v10, v7

    aget v10, v10, v8

    aput v10, v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v0, v1, v6, v3}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/zxing/oned/ITFWriter;->END_PATTERN:[I

    invoke-static {v0, v1, p0, v3}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Requested contents should be less than 80 digits long, but got "

    invoke-static {p0, v0}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The length of the input should be even"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSupportedWriteFormats()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
