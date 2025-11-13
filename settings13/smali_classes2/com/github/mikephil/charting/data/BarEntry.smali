.class public Lcom/github/mikephil/charting/data/BarEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "BarEntry.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private mNegativeSum:F

.field private mPositiveSum:F

.field private mRanges:[Lcom/github/mikephil/charting/highlight/Range;

.field private mYVals:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FFLjava/lang/Object;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(F[F)V
    .locals 1

    .line 87
    invoke-static {p2}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 89
    iput-object p2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    .line 90
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcPosNegSum()V

    .line 91
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcRanges()V

    return-void
.end method

.method public constructor <init>(F[FLjava/lang/Object;)V
    .locals 1

    .line 102
    invoke-static {p2}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    .line 104
    iput-object p2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    .line 105
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcPosNegSum()V

    .line 106
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcRanges()V

    return-void
.end method

.method private calcPosNegSum()V
    .locals 8

    .line 244
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 245
    iput v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    .line 246
    iput v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    return-void

    .line 253
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v3, v2, :cond_2

    aget v6, v0, v3

    cmpg-float v7, v6, v1

    if-gtz v7, :cond_1

    .line 255
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v4, v6

    goto :goto_1

    :cond_1
    add-float/2addr v5, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    :cond_2
    iput v4, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    .line 261
    iput v5, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    return-void
.end method

.method private static calcSum([F)F
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 277
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    add-float/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method protected calcRanges()V
    .locals 8

    .line 285
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v0

    if-eqz v0, :cond_2

    .line 287
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    .line 290
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Lcom/github/mikephil/charting/highlight/Range;

    iput-object v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    .line 292
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    .line 295
    :goto_0
    iget-object v5, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 297
    aget v6, v0, v2

    cmpg-float v7, v6, v3

    if-gez v7, :cond_1

    .line 300
    new-instance v7, Lcom/github/mikephil/charting/highlight/Range;

    sub-float v6, v1, v6

    invoke-direct {v7, v1, v6}, Lcom/github/mikephil/charting/highlight/Range;-><init>(FF)V

    aput-object v7, v5, v2

    move v1, v6

    goto :goto_1

    .line 303
    :cond_1
    new-instance v7, Lcom/github/mikephil/charting/highlight/Range;

    add-float/2addr v6, v4

    invoke-direct {v7, v4, v6}, Lcom/github/mikephil/charting/highlight/Range;-><init>(FF)V

    aput-object v7, v5, v2

    move v4, v6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public getNegativeSum()F
    .locals 0

    .line 239
    iget p0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    return p0
.end method

.method public getPositiveSum()F
    .locals 0

    .line 230
    iget p0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    return p0
.end method

.method public getRanges()[Lcom/github/mikephil/charting/highlight/Range;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    return-object p0
.end method

.method public getY()F
    .locals 0

    .line 179
    invoke-super {p0}, Lcom/github/mikephil/charting/data/BaseEntry;->getY()F

    move-result p0

    return p0
.end method

.method public getYVals()[F
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    return-object p0
.end method

.method public isStacked()Z
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
