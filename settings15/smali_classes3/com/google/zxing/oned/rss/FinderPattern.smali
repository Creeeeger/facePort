.class public final Lcom/google/zxing/oned/rss/FinderPattern;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final resultPoints:[Lcom/google/zxing/ResultPoint;

.field public final startEnd:[I

.field public final value:I


# direct methods
.method public constructor <init>(IIII[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    iput-object p5, p0, Lcom/google/zxing/oned/rss/FinderPattern;->startEnd:[I

    new-instance p1, Lcom/google/zxing/ResultPoint;

    int-to-float p2, p2

    int-to-float p4, p4

    invoke-direct {p1, p2, p4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance p2, Lcom/google/zxing/ResultPoint;

    int-to-float p3, p3

    invoke-direct {p2, p3, p4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    filled-new-array {p1, p2}, [Lcom/google/zxing/ResultPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/oned/rss/FinderPattern;->resultPoints:[Lcom/google/zxing/ResultPoint;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/zxing/oned/rss/FinderPattern;

    iget p0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    iget p1, p1, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    return p0
.end method
