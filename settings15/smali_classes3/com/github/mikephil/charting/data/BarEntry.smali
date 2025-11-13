.class public final Lcom/github/mikephil/charting/data/BarEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mNegativeSum:F

.field public final mPositiveSum:F

.field public final mRanges:[Lcom/github/mikephil/charting/highlight/Range;

.field public final mYVals:[F


# direct methods
.method public constructor <init>(F[F)V
    .locals 7

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aget v5, p2, v3

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    iput-object p2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    array-length p1, p2

    move v0, v1

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v0, p1, :cond_2

    aget v5, p2, v0

    cmpg-float v6, v5, v2

    if-gtz v6, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v3, v5

    goto :goto_2

    :cond_1
    add-float/2addr v4, v5

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput v3, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    iput v4, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    iget-object p1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    if-eqz p1, :cond_5

    array-length p2, p1

    if-nez p2, :cond_3

    goto :goto_5

    :cond_3
    array-length p2, p1

    new-array p2, p2, [Lcom/github/mikephil/charting/highlight/Range;

    iput-object p2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    neg-float p2, v3

    move v0, v2

    :goto_3
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    array-length v4, v3

    if-ge v1, v4, :cond_5

    aget v4, p1, v1

    cmpg-float v5, v4, v2

    if-gez v5, :cond_4

    new-instance v5, Lcom/github/mikephil/charting/highlight/Range;

    sub-float v4, p2, v4

    invoke-direct {v5, p2, v4}, Lcom/github/mikephil/charting/highlight/Range;-><init>(FF)V

    aput-object v5, v3, v1

    move p2, v4

    goto :goto_4

    :cond_4
    new-instance v5, Lcom/github/mikephil/charting/highlight/Range;

    add-float/2addr v4, v0

    invoke-direct {v5, v0, v4}, Lcom/github/mikephil/charting/highlight/Range;-><init>(FF)V

    aput-object v5, v3, v1

    move v0, v4

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    return-void
.end method


# virtual methods
.method public final getY()F
    .locals 0

    iget p0, p0, Lcom/github/mikephil/charting/data/BaseEntry;->y:F

    return p0
.end method
