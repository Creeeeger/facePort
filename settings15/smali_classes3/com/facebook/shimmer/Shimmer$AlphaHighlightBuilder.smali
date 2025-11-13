.class public final Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mShimmer:Lcom/facebook/shimmer/Shimmer;


# direct methods
.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/facebook/shimmer/Shimmer;

    invoke-direct {p1}, Lcom/facebook/shimmer/Shimmer;-><init>()V

    iput-object p1, p0, Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;-><init>(B)V

    iget-object p0, p0, Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/shimmer/Shimmer;->alphaShimmer:Z

    return-void

    :pswitch_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;-><init>(B)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final build()Lcom/facebook/shimmer/Shimmer;
    .locals 9

    iget-object p0, p0, Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    iget v0, p0, Lcom/facebook/shimmer/Shimmer;->shape:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/facebook/shimmer/Shimmer;->colors:[I

    if-eq v0, v1, :cond_0

    iget v6, p0, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    aput v6, v5, v2

    iget v7, p0, Lcom/facebook/shimmer/Shimmer;->highlightColor:I

    aput v7, v5, v1

    aput v7, v5, v3

    aput v6, v5, v4

    goto :goto_0

    :cond_0
    iget v6, p0, Lcom/facebook/shimmer/Shimmer;->highlightColor:I

    aput v6, v5, v2

    aput v6, v5, v1

    iget v6, p0, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    aput v6, v5, v3

    aput v6, v5, v4

    :goto_0
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/shimmer/Shimmer;->positions:[F

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/facebook/shimmer/Shimmer;->intensity:F

    sub-float v0, v7, v0

    iget v8, p0, Lcom/facebook/shimmer/Shimmer;->dropoff:F

    sub-float/2addr v0, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v0, v8

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v6, v2

    iget v0, p0, Lcom/facebook/shimmer/Shimmer;->intensity:F

    sub-float v0, v7, v0

    const v2, 0x3a83126f    # 0.001f

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, v6, v1

    iget v0, p0, Lcom/facebook/shimmer/Shimmer;->intensity:F

    add-float/2addr v0, v7

    add-float/2addr v0, v2

    div-float/2addr v0, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v6, v3

    iget v0, p0, Lcom/facebook/shimmer/Shimmer;->intensity:F

    add-float/2addr v0, v7

    iget v1, p0, Lcom/facebook/shimmer/Shimmer;->dropoff:F

    add-float/2addr v0, v1

    div-float/2addr v0, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v6, v4

    goto :goto_1

    :cond_1
    aput v5, v6, v2

    iget v0, p0, Lcom/facebook/shimmer/Shimmer;->intensity:F

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v6, v1

    iget v0, p0, Lcom/facebook/shimmer/Shimmer;->intensity:F

    iget v1, p0, Lcom/facebook/shimmer/Shimmer;->dropoff:F

    add-float/2addr v0, v1

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v6, v3

    aput v7, v6, v4

    :goto_1
    return-object p0
.end method

.method public final consumeAttributes$com$facebook$shimmer$Shimmer$Builder(Landroid/content/res/TypedArray;)Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;
    .locals 11

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iget-object v2, p0, Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;->mShimmer:Lcom/facebook/shimmer/Shimmer;

    if-eqz v1, :cond_0

    iget-boolean v1, v2, Lcom/facebook/shimmer/Shimmer;->clipToChildren:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v2, Lcom/facebook/shimmer/Shimmer;->clipToChildren:Z

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lcom/facebook/shimmer/Shimmer;->autoStart:Z

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Lcom/facebook/shimmer/Shimmer;->autoStart:Z

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0xffffff

    const/high16 v8, 0x437f0000    # 255.0f

    if-eqz v4, :cond_2

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x18

    iget v9, v2, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    and-int/2addr v9, v7

    or-int/2addr v4, v9

    iput v4, v2, Lcom/facebook/shimmer/Shimmer;->baseColor:I

    :cond_2
    const/16 v4, 0xb

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x18

    iget v6, v2, Lcom/facebook/shimmer/Shimmer;->highlightColor:I

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    iput v4, v2, Lcom/facebook/shimmer/Shimmer;->highlightColor:I

    :cond_3
    const/4 v4, 0x7

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_5

    iget-wide v9, v2, Lcom/facebook/shimmer/Shimmer;->animationDuration:J

    long-to-int v6, v9

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v9, v4

    cmp-long v4, v9, v7

    if-ltz v4, :cond_4

    iput-wide v9, v2, Lcom/facebook/shimmer/Shimmer;->animationDuration:J

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given a negative duration: "

    invoke-static {v9, v10, p1}, Landroidx/viewpager2/widget/ViewPager2$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    const/16 v4, 0xe

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, v2, Lcom/facebook/shimmer/Shimmer;->repeatCount:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v2, Lcom/facebook/shimmer/Shimmer;->repeatCount:I

    :cond_6
    const/16 v4, 0xf

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-wide v9, v2, Lcom/facebook/shimmer/Shimmer;->repeatDelay:J

    long-to-int v6, v9

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    int-to-long v9, v4

    cmp-long v4, v9, v7

    if-ltz v4, :cond_7

    iput-wide v9, v2, Lcom/facebook/shimmer/Shimmer;->repeatDelay:J

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given a negative repeat delay: "

    invoke-static {v9, v10, p1}, Landroidx/viewpager2/widget/ViewPager2$$ExternalSyntheticOutline0;->m(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_1
    const/16 v4, 0x10

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, v2, Lcom/facebook/shimmer/Shimmer;->repeatMode:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v2, Lcom/facebook/shimmer/Shimmer;->repeatMode:I

    :cond_9
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_d

    iget v6, v2, Lcom/facebook/shimmer/Shimmer;->direction:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-eq v4, v3, :cond_c

    const/4 v6, 0x2

    if-eq v4, v6, :cond_b

    if-eq v4, v0, :cond_a

    iput v1, v2, Lcom/facebook/shimmer/Shimmer;->direction:I

    goto :goto_2

    :cond_a
    iput v0, v2, Lcom/facebook/shimmer/Shimmer;->direction:I

    goto :goto_2

    :cond_b
    iput v6, v2, Lcom/facebook/shimmer/Shimmer;->direction:I

    goto :goto_2

    :cond_c
    iput v3, v2, Lcom/facebook/shimmer/Shimmer;->direction:I

    :cond_d
    :goto_2
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_f

    iget v4, v2, Lcom/facebook/shimmer/Shimmer;->shape:I

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eq v0, v3, :cond_e

    iput v1, v2, Lcom/facebook/shimmer/Shimmer;->shape:I

    goto :goto_3

    :cond_e
    iput v3, v2, Lcom/facebook/shimmer/Shimmer;->shape:I

    :cond_f
    :goto_3
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, v2, Lcom/facebook/shimmer/Shimmer;->dropoff:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    cmpg-float v1, v0, v5

    if-ltz v1, :cond_10

    iput v0, v2, Lcom/facebook/shimmer/Shimmer;->dropoff:F

    goto :goto_4

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Given invalid dropoff value: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_4
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, v2, Lcom/facebook/shimmer/Shimmer;->fixedWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-ltz v0, :cond_12

    iput v0, v2, Lcom/facebook/shimmer/Shimmer;->fixedWidth:I

    goto :goto_5

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given invalid width: "

    invoke-static {v0, p1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_5
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget v1, v2, Lcom/facebook/shimmer/Shimmer;->fixedHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-ltz v0, :cond_14

    iput v0, v2, Lcom/facebook/shimmer/Shimmer;->fixedHeight:I

    goto :goto_6

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given invalid height: "

    invoke-static {v0, p1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_6
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_17

    iget v1, v2, Lcom/facebook/shimmer/Shimmer;->intensity:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    cmpg-float v1, v0, v5

    if-ltz v1, :cond_16

    iput v0, v2, Lcom/facebook/shimmer/Shimmer;->intensity:F

    goto :goto_7

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Given invalid intensity value: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    :goto_7
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, v2, Lcom/facebook/shimmer/Shimmer;->widthRatio:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    cmpg-float v1, v0, v5

    if-ltz v1, :cond_18

    iput v0, v2, Lcom/facebook/shimmer/Shimmer;->widthRatio:F

    goto :goto_8

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Given invalid width ratio: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_8
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v1, v2, Lcom/facebook/shimmer/Shimmer;->heightRatio:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    cmpg-float v1, v0, v5

    if-ltz v1, :cond_1a

    iput v0, v2, Lcom/facebook/shimmer/Shimmer;->heightRatio:F

    goto :goto_9

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Given invalid height ratio: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_9
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v1, v2, Lcom/facebook/shimmer/Shimmer;->tilt:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, v2, Lcom/facebook/shimmer/Shimmer;->tilt:F

    :cond_1c
    iget p1, p0, Lcom/facebook/shimmer/Shimmer$AlphaHighlightBuilder;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
