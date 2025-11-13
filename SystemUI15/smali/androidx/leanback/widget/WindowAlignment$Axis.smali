.class public final Landroidx/leanback/widget/WindowAlignment$Axis;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mMaxEdge:I

.field public mMaxScroll:I

.field public mMinEdge:I

.field public mMinScroll:I

.field public mPaddingMax:I

.field public mPaddingMin:I

.field public final mPreferredKeyLine:I

.field public mReversedFlow:Z

.field public mSize:I

.field public mWindowAlignment:I

.field public final mWindowAlignmentOffsetPercent:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    const/4 p1, 0x3

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    const/high16 p1, 0x42480000    # 50.0f

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    const p1, 0x7fffffff

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    return-void
.end method


# virtual methods
.method public final calculateKeyline()I
    .locals 4

    iget-boolean v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    if-nez v0, :cond_1

    cmpl-float v0, v3, v2

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    int-to-float p0, p0

    mul-float/2addr p0, v3

    div-float/2addr p0, v1

    float-to-int p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    cmpl-float v0, v3, v2

    if-eqz v0, :cond_2

    int-to-float v0, p0

    mul-float/2addr v0, v3

    div-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr p0, v0

    :cond_2
    :goto_0
    return p0
.end method

.method public final getScroll(I)I
    .locals 10

    iget v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->calculateKeyline()I

    move-result v1

    iget v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget v6, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_1

    move v4, v5

    :cond_1
    if-nez v3, :cond_4

    iget v7, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int v8, v1, v7

    iget-boolean v9, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v9, :cond_2

    iget v9, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/2addr v9, v5

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_2
    iget v9, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_4

    :goto_1
    sub-int v9, p1, v2

    if-gt v9, v8, :cond_4

    sub-int/2addr v2, v7

    if-nez v4, :cond_3

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    if-le v2, p0, :cond_3

    move v2, p0

    :cond_3
    return v2

    :cond_4
    if-nez v4, :cond_7

    sub-int v2, v0, v1

    iget v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int/2addr v2, v4

    iget-boolean v7, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v7, :cond_5

    iget v5, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_5
    iget v7, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/2addr v5, v7

    if-eqz v5, :cond_7

    :goto_2
    sub-int v5, v6, p1

    if-gt v5, v2, :cond_7

    sub-int/2addr v0, v4

    sub-int/2addr v6, v0

    if-nez v3, :cond_6

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    if-ge v6, p0, :cond_6

    move v6, p0

    :cond_6
    return v6

    :cond_7
    sub-int/2addr p1, v1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " min:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " max:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateMinMax(IIII)V
    .locals 6

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    iput p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr p1, p2

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->calculateKeyline()I

    move-result p2

    iget v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1

    move v2, v3

    :cond_1
    if-nez v1, :cond_4

    iget-boolean v5, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v5, :cond_2

    iget v5, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/2addr v5, v3

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_2
    iget v5, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    :goto_1
    iget v5, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v0, v5

    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_2

    :cond_3
    sub-int v0, p3, p2

    iput v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    :cond_4
    :goto_2
    if-nez v2, :cond_7

    iget-boolean v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v0, :cond_5

    iget v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_5
    iget v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    :goto_3
    iget v0, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, p1

    iput v4, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    goto :goto_4

    :cond_6
    sub-int p1, p4, p2

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    :cond_7
    :goto_4
    if-nez v2, :cond_f

    if-nez v1, :cond_f

    iget-boolean p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez p1, :cond_b

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_9

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_8

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    sub-int/2addr p4, p2

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    :cond_8
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    goto :goto_5

    :cond_9
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_f

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_a

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    :cond_a
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_5

    :cond_b
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_d

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_c

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    :cond_c
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_5

    :cond_d
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_f

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_e

    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    sub-int/2addr p4, p2

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    :cond_e
    iget p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget p2, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    :cond_f
    :goto_5
    return-void
.end method
