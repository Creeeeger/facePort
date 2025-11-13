.class public final Lcom/google/dexmaker/dx/util/ByteArray;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bytes:[B

.field public final size:I

.field public final start:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/dexmaker/dx/util/ByteArray;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    if-lt p3, p2, :cond_1

    array-length v0, p1

    if-gt p3, v0, :cond_0

    iput-object p1, p0, Lcom/google/dexmaker/dx/util/ByteArray;->bytes:[B

    iput p2, p0, Lcom/google/dexmaker/dx/util/ByteArray;->start:I

    sub-int/2addr p3, p2

    iput p3, p0, Lcom/google/dexmaker/dx/util/ByteArray;->size:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "end > bytes.length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "end < start"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "start < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "bytes == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getUnsignedByte(I)I
    .locals 5

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/dexmaker/dx/util/ByteArray;->size:I

    if-ltz p1, :cond_0

    if-lt v0, p1, :cond_0

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/google/dexmaker/dx/util/ByteArray;->start:I

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/google/dexmaker/dx/util/ByteArray;->bytes:[B

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad range: "

    const-string v3, ".."

    const-string v4, "; actual size "

    invoke-static {p1, v0, v2, v3, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
