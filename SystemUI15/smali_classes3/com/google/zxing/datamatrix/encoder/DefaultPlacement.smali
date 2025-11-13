.class public final Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bits:[B

.field public final codewords:Ljava/lang/CharSequence;

.field public final numcols:I

.field public final numrows:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->codewords:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    iput p3, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    mul-int/2addr p2, p3

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->bits:[B

    const/4 p0, -0x1

    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method


# virtual methods
.method public final module(IIII)V
    .locals 2

    if-gez p1, :cond_0

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numrows:I

    add-int/2addr p1, v0

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    :cond_0
    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    if-gez p2, :cond_1

    add-int/2addr p2, v0

    add-int/lit8 v1, v0, 0x4

    rem-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x4

    add-int/2addr p1, v1

    :cond_1
    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->codewords:Ljava/lang/CharSequence;

    invoke-interface {v1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    rsub-int/lit8 p4, p4, 0x8

    const/4 v1, 0x1

    shl-int p4, v1, p4

    and-int/2addr p3, p4

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    int-to-byte p2, v1

    iget-object p0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->bits:[B

    aput-byte p2, p0, p1

    return-void
.end method

.method public final noBit(II)Z
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->numcols:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    iget-object p0, p0, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->bits:[B

    aget-byte p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final utah(III)V
    .locals 4

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p3, v2}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, p3, v3}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    add-int/lit8 v0, p1, -0x1

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v1, p3, v3}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v2, p3, v3}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v3, 0x5

    invoke-virtual {p0, v0, p2, p3, v3}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v1, p3, v0}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v2, p3, v0}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->module(IIII)V

    return-void
.end method
