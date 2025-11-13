.class public final Lcom/google/zxing/aztec/encoder/State;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;


# instance fields
.field public final binaryShiftByteCount:I

.field public final binaryShiftCost:I

.field public final bitCount:I

.field public final mode:I

.field public final token:Lcom/google/zxing/aztec/encoder/Token;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/zxing/aztec/encoder/State;

    sget-object v1, Lcom/google/zxing/aztec/encoder/Token;->EMPTY:Lcom/google/zxing/aztec/encoder/SimpleToken;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    sput-object v0, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/aztec/encoder/Token;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    iput p2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    iput p3, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    iput p4, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    const/16 p1, 0x3e

    if-le p3, p1, :cond_0

    const/16 p1, 0x15

    goto :goto_0

    :cond_0
    const/16 p1, 0x1f

    if-le p3, p1, :cond_1

    const/16 p1, 0x14

    goto :goto_0

    :cond_1
    if-lez p3, :cond_2

    const/16 p1, 0xa

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftCost:I

    return-void
.end method


# virtual methods
.method public final addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;
    .locals 6

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    if-eq v2, v0, :cond_0

    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    aget-object v0, v0, v2

    const/4 v2, 0x0

    aget v0, v0, v2

    const v4, 0xffff

    and-int/2addr v4, v0

    shr-int/lit8 v0, v0, 0x10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/google/zxing/aztec/encoder/SimpleToken;

    invoke-direct {v5, v1, v4, v0}, Lcom/google/zxing/aztec/encoder/SimpleToken;-><init>(Lcom/google/zxing/aztec/encoder/Token;II)V

    add-int/2addr v3, v0

    move-object v1, v5

    :cond_1
    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-eqz p0, :cond_4

    const/16 v0, 0x1f

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_3

    const/16 v0, 0x9

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v0, 0x12

    :goto_1
    new-instance v4, Lcom/google/zxing/aztec/encoder/State;

    add-int/lit8 p0, p0, 0x1

    add-int/2addr v3, v0

    invoke-direct {v4, v1, v2, p0, v3}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    const/16 v0, 0x81e

    if-ne p0, v0, :cond_5

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v4, p1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v4

    :cond_5
    return-object v4
.end method

.method public final endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;
    .locals 3

    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sub-int/2addr p1, v0

    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;

    invoke-direct {v2, v1, p1, v0}, Lcom/google/zxing/aztec/encoder/BinaryShiftToken;-><init>(Lcom/google/zxing/aztec/encoder/Token;II)V

    new-instance p1, Lcom/google/zxing/aztec/encoder/State;

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    invoke-direct {p1, v2, p0, v0, v1}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    return-object p1
.end method

.method public final isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z
    .locals 3

    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    iget v2, p1, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-ge v0, v2, :cond_0

    iget v0, p1, Lcom/google/zxing/aztec/encoder/State;->binaryShiftCost:I

    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftCost:I

    sub-int/2addr v0, p0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    if-le v0, v2, :cond_1

    if-lez v2, :cond_1

    add-int/lit8 v1, v1, 0xa

    :cond_1
    :goto_0
    iget p0, p1, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    if-gt v1, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
    .locals 4

    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    if-eq p1, p0, :cond_0

    sget-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    aget-object p0, v2, p0

    aget p0, p0, p1

    const v2, 0xffff

    and-int/2addr v2, p0

    shr-int/lit8 p0, p0, 0x10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/zxing/aztec/encoder/SimpleToken;

    invoke-direct {v3, v1, v2, p0}, Lcom/google/zxing/aztec/encoder/SimpleToken;-><init>(Lcom/google/zxing/aztec/encoder/Token;II)V

    add-int/2addr v0, p0

    move-object v1, v3

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/zxing/aztec/encoder/SimpleToken;

    invoke-direct {v2, v1, p2, p0}, Lcom/google/zxing/aztec/encoder/SimpleToken;-><init>(Lcom/google/zxing/aztec/encoder/Token;II)V

    new-instance p2, Lcom/google/zxing/aztec/encoder/State;

    const/4 v1, 0x0

    add-int/2addr v0, p0

    invoke-direct {p2, v2, p1, v1, v0}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    return-object p2
.end method

.method public final shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    if-ne v2, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v3, v3, v2

    aget p1, v3, p1

    iget-object v3, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/zxing/aztec/encoder/SimpleToken;

    invoke-direct {v4, v3, p1, v0}, Lcom/google/zxing/aztec/encoder/SimpleToken;-><init>(Lcom/google/zxing/aztec/encoder/Token;II)V

    new-instance p1, Lcom/google/zxing/aztec/encoder/SimpleToken;

    invoke-direct {p1, v4, p2, v1}, Lcom/google/zxing/aztec/encoder/SimpleToken;-><init>(Lcom/google/zxing/aztec/encoder/Token;II)V

    new-instance p2, Lcom/google/zxing/aztec/encoder/State;

    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    add-int/2addr p0, v0

    add-int/2addr p0, v1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v2, v0, p0}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    return-object p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s bits=%d bytes=%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
