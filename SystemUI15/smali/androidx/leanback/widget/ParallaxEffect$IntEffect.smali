.class public final Landroidx/leanback/widget/ParallaxEffect$IntEffect;
.super Landroidx/leanback/widget/ParallaxEffect;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/leanback/widget/ParallaxEffect;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateFraction(Landroidx/leanback/widget/Parallax;)F
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Landroidx/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v0, v4, :cond_8

    iget-object v4, p0, Landroidx/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/leanback/widget/Parallax$IntPropertyMarkerValue;

    iget-object v6, v4, Landroidx/leanback/widget/Parallax$PropertyMarkerValue;->mProperty:Ljava/lang/Object;

    check-cast v6, Landroidx/leanback/widget/Parallax$IntProperty;

    iget v6, v6, Landroidx/leanback/widget/Parallax$IntProperty;->mIndex:I

    const/4 v7, 0x0

    iget v8, v4, Landroidx/leanback/widget/Parallax$IntPropertyMarkerValue;->mFactionOfMax:F

    cmpl-float v7, v8, v7

    iget v4, v4, Landroidx/leanback/widget/Parallax$IntPropertyMarkerValue;->mValue:I

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/Parallax;->getMaxValue()F

    move-result v7

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v7, v4

    move v4, v7

    :goto_1
    iget-object v7, p1, Landroidx/leanback/widget/Parallax;->mValues:[I

    aget v7, v7, v6

    if-nez v0, :cond_1

    if-lt v7, v4, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_1
    if-ne v1, v6, :cond_3

    if-lt v2, v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "marker value of same variable must be descendant order"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    const v8, 0x7fffffff

    if-ne v7, v8, :cond_4

    sub-int/2addr v2, v3

    int-to-float v1, v2

    invoke-virtual {p1}, Landroidx/leanback/widget/Parallax;->getMaxValue()F

    move-result p1

    div-float/2addr v1, p1

    invoke-virtual {p0, v1, v0}, Landroidx/leanback/widget/ParallaxEffect;->getFractionWithWeightAdjusted(FI)F

    move-result p0

    return p0

    :cond_4
    if-lt v7, v4, :cond_7

    if-ne v1, v6, :cond_5

    sub-int p1, v2, v7

    int-to-float p1, p1

    sub-int/2addr v2, v4

    int-to-float v1, v2

    div-float/2addr p1, v1

    goto :goto_3

    :cond_5
    const/high16 v1, -0x80000000

    if-eq v3, v1, :cond_6

    sub-int p1, v7, v3

    add-int/2addr p1, v2

    sub-int v1, p1, v7

    int-to-float v1, v1

    sub-int/2addr p1, v4

    int-to-float p1, p1

    div-float p1, v1, p1

    goto :goto_3

    :cond_6
    sub-int/2addr v7, v4

    int-to-float v1, v7

    invoke-virtual {p1}, Landroidx/leanback/widget/Parallax;->getMaxValue()F

    move-result p1

    div-float/2addr v1, p1

    sub-float p1, v5, v1

    :goto_3
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/ParallaxEffect;->getFractionWithWeightAdjusted(FI)F

    move-result p0

    return p0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    move v1, v6

    move v3, v7

    goto/16 :goto_0

    :cond_8
    return v5
.end method
