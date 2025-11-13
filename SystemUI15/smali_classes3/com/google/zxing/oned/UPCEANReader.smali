.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final END_PATTERN:[I

.field public static final L_AND_G_PATTERNS:[[I

.field public static final L_PATTERNS:[[I

.field public static final MIDDLE_PATTERN:[I

.field public static final START_END_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x1

    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    filled-new-array {v0, v0, v0, v0, v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/oned/UPCEANReader;->END_PATTERN:[I

    const/4 v1, 0x3

    const/4 v2, 0x2

    filled-new-array {v1, v2, v0, v0}, [I

    move-result-object v3

    filled-new-array {v2, v2, v2, v0}, [I

    move-result-object v4

    filled-new-array {v2, v0, v2, v2}, [I

    move-result-object v5

    const/4 v6, 0x4

    filled-new-array {v0, v6, v0, v0}, [I

    move-result-object v7

    filled-new-array {v0, v0, v1, v2}, [I

    move-result-object v8

    filled-new-array {v0, v2, v1, v0}, [I

    move-result-object v9

    filled-new-array {v0, v0, v0, v6}, [I

    move-result-object v10

    filled-new-array {v0, v1, v0, v2}, [I

    move-result-object v11

    filled-new-array {v0, v2, v0, v1}, [I

    move-result-object v12

    filled-new-array {v1, v0, v0, v2}, [I

    move-result-object v1

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v1

    filled-new-array/range {v3 .. v12}, [[I

    move-result-object v1

    sput-object v1, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    const/16 v2, 0x14

    new-array v3, v2, [[I

    sput-object v3, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-static {v1, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v5

    :goto_0
    if-ge v1, v2, :cond_1

    sget-object v3, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    add-int/lit8 v6, v1, -0xa

    aget-object v3, v3, v6

    array-length v6, v3

    new-array v6, v6, [I

    move v7, v4

    :goto_1
    array-length v8, v3

    if-ge v7, v8, :cond_0

    array-length v8, v3

    sub-int/2addr v8, v7

    sub-int/2addr v8, v0

    aget v8, v3, v8

    aput v8, v6, v7

    add-int/2addr v7, v0

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aput-object v6, v3, v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    new-instance p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;-><init>()V

    new-instance p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    invoke-direct {p0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;-><init>()V

    return-void
.end method

.method public static checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I

    move-result p0

    if-ne p0, v3, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public static getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x9

    if-ltz v1, :cond_1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    if-ltz v4, :cond_0

    if-gt v4, v3, :cond_0

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_1
    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v0, -0x2

    :goto_1
    if-ltz v0, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    if-ltz v1, :cond_2

    if-gt v1, v3, :cond_2

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_3
    rsub-int p0, v2, 0x3e8

    rem-int/lit8 p0, p0, 0xa

    return p0
.end method
