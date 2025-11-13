.class public final Lcom/google/zxing/oned/UPCEANExtensionSupport;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final EXTENSION_START_PATTERN:[I


# instance fields
.field public final fiveSupport:Lcom/google/zxing/oned/UPCEANExtension5Support;

.field public final twoSupport:Lcom/google/zxing/oned/UPCEANExtension2Support;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    filled-new-array {v0, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->EXTENSION_START_PATTERN:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/zxing/oned/UPCEANExtension2Support;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEANExtension2Support;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->twoSupport:Lcom/google/zxing/oned/UPCEANExtension2Support;

    new-instance v0, Lcom/google/zxing/oned/UPCEANExtension5Support;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEANExtension5Support;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->fiveSupport:Lcom/google/zxing/oned/UPCEANExtension5Support;

    return-void
.end method


# virtual methods
.method public final decodeRow(IILcom/google/zxing/common/BitArray;)Lcom/google/zxing/Result;
    .locals 12

    sget-object v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->EXTENSION_START_PATTERN:[I

    const/4 v1, 0x3

    new-array v2, v1, [I

    const/4 v3, 0x0

    invoke-static {p3, p2, v3, v0, v2}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object p2

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->fiveSupport:Lcom/google/zxing/oned/UPCEANExtension5Support;

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeRow(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p0, p0, Lcom/google/zxing/oned/UPCEANExtensionSupport;->twoSupport:Lcom/google/zxing/oned/UPCEANExtension2Support;

    iget-object v0, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p0, p0, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeMiddleCounters:[I

    aput v3, p0, v3

    const/4 v2, 0x1

    aput v3, p0, v2

    const/4 v4, 0x2

    aput v3, p0, v4

    aput v3, p0, v1

    iget v1, p3, Lcom/google/zxing/common/BitArray;->size:I

    aget v5, p2, v2

    move v6, v3

    move v7, v6

    :goto_0
    if-ge v6, v4, :cond_3

    if-ge v5, v1, :cond_3

    sget-object v8, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p3, p0, v5, v8}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v8

    rem-int/lit8 v9, v8, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-char v9, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v9, p0

    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_0

    aget v11, p0, v10

    add-int/2addr v5, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    const/16 v9, 0xa

    if-lt v8, v9, :cond_1

    rsub-int/lit8 v8, v6, 0x1

    shl-int v8, v2, v8

    or-int/2addr v7, v8

    :cond_1
    if-eq v6, v2, :cond_2

    invoke-virtual {p3, v5}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v5

    invoke-virtual {p3, v5}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v5

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ne p0, v4, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    rem-int/lit8 p0, p0, 0x4

    if-ne p0, v7, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x0

    if-eq p3, v4, :cond_4

    move-object p3, v0

    goto :goto_2

    :cond_4
    new-instance p3, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {p3, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    new-instance v1, Lcom/google/zxing/Result;

    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v3, p2, v3

    aget p2, p2, v2

    add-int/2addr v3, p2

    int-to-float p2, v3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    int-to-float p1, p1

    invoke-direct {v4, p2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance p2, Lcom/google/zxing/ResultPoint;

    int-to-float v2, v5

    invoke-direct {p2, v2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    filled-new-array {v4, p2}, [Lcom/google/zxing/ResultPoint;

    move-result-object p1

    sget-object p2, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    if-eqz p3, :cond_5

    invoke-virtual {v1, p3}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    :cond_5
    return-object v1

    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method
