.class public final Lcom/samsung/android/nexus/particle/emitter/Status;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public acc:F

.field public alpha:F

.field public color:I

.field public colorMode:I

.field public drawingHeight:F

.field public drawingWidth:F

.field public final factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

.field public final factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

.field public height:F

.field public final mBounds:Landroid/graphics/RectF;

.field public mUpdateBounds:Z

.field public posMode:I

.field public posX:F

.field public posY:F

.field public rotation:F

.field public scaleMode:I

.field public scaleX:F

.field public scaleY:F

.field public speed:F

.field public vecTanX:F

.field public vecTanY:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/Factor;

    invoke-direct {v1}, Lcom/samsung/android/nexus/particle/emitter/Factor;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->speed:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->acc:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posMode:I

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->colorMode:I

    new-instance v0, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    invoke-direct {v0}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/nexus/particle/emitter/Status;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    new-instance v1, Lcom/samsung/android/nexus/particle/emitter/Factor;

    invoke-direct {v1}, Lcom/samsung/android/nexus/particle/emitter/Factor;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->speed:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->acc:F

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    const/16 v2, 0xa

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posMode:I

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->colorMode:I

    new-instance v2, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    invoke-direct {v2}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/Status;->reset()V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    iget v4, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    iput v4, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    iget v4, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    iput v4, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    iget v4, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    iput v4, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    iget v4, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    iput v4, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    iget v4, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingWidth:F

    iput v4, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingWidth:F

    iget v4, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingHeight:F

    iput v4, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingHeight:F

    iget-boolean v4, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/nexus/particle/emitter/Status;->updateBounds()V

    :cond_1
    iget-object v4, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->posMode:I

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posMode:I

    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    iget v3, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->colorMode:I

    iput v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->colorMode:I

    iget-object p0, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    iget-object v1, v1, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    array-length v3, v1

    invoke-static {p0, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p1, Lcom/samsung/android/nexus/particle/emitter/Status;->factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->clear()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    array-length v1, p1

    iget p0, p0, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    iput p0, v2, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->floatKeyFrameSetSize:I

    iget-object p0, v2, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    invoke-static {p1, v0, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public static AHSVToColor(FFFF)I
    .locals 7

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    rem-double/2addr v2, v4

    double-to-int p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    float-to-int p0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v2, p3, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p2

    mul-float/2addr v5, p3

    mul-float/2addr v5, v1

    add-float/2addr v5, v3

    float-to-int v5, v5

    mul-float v6, v0, p2

    sub-float v6, v4, v6

    mul-float/2addr v6, p3

    mul-float/2addr v6, v1

    add-float/2addr v6, v3

    float-to-int v6, v6

    sub-float v0, v4, v0

    mul-float/2addr v0, p2

    sub-float/2addr v4, v0

    mul-float/2addr v4, p3

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    float-to-int p2, v4

    if-eqz p1, :cond_4

    const/4 p3, 0x1

    if-eq p1, p3, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, v2, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, v5, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, v6

    return p0

    :cond_0
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p2, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, v5, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, v2

    return p0

    :cond_1
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, v5, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, v6, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, v2

    return p0

    :cond_2
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, v5, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, v2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0

    :cond_3
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, v6, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, v2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, v5

    return p0

    :cond_4
    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, v2, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, v5

    return p0
.end method


# virtual methods
.method public final onStep(FF[F)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    iget v3, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    iget v4, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    iget-object v5, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    iget-boolean v6, v5, Lcom/samsung/android/nexus/particle/emitter/Factor;->mNeedValidate:Z

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/samsung/android/nexus/particle/emitter/Factor;->validate()V

    :cond_0
    const/4 v6, 0x0

    cmpl-float v7, p2, v6

    iget-object v8, v5, Lcom/samsung/android/nexus/particle/emitter/Factor;->values:[F

    if-nez v7, :cond_1

    goto/16 :goto_6

    :cond_1
    sget-object v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    sget-object v7, Lcom/samsung/android/nexus/particle/emitter/FactorType$Holder;->sValuesCache:[Lcom/samsung/android/nexus/particle/emitter/FactorType;

    array-length v9, v7

    iget-object v5, v5, Lcom/samsung/android/nexus/particle/emitter/Factor;->mStepSkipList:[Z

    const/4 v10, 0x0

    if-nez p3, :cond_3

    :goto_0
    if-ge v10, v9, :cond_5

    aget-object v11, v7, v10

    aget-boolean v12, v5, v10

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    iget v12, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v13, v8, v12

    iget v14, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aget v15, v8, v14

    mul-float v15, v15, p2

    add-float/2addr v15, v13

    aput v15, v8, v12

    aget v12, v8, v14

    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    aget v11, v8, v11

    mul-float v11, v11, p2

    add-float/2addr v11, v12

    aput v11, v8, v14

    :goto_1
    add-int/2addr v10, v2

    goto :goto_0

    :cond_3
    :goto_2
    if-ge v10, v9, :cond_5

    aget-object v11, v7, v10

    iget v12, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->speedIdx:I

    aget v13, p3, v12

    iget v14, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->accelerationIdx:I

    aget v15, p3, v14

    aget-boolean v16, v5, v10

    if-eqz v16, :cond_4

    cmpl-float v16, v6, v13

    if-nez v16, :cond_4

    cmpl-float v16, v6, v15

    if-nez v16, :cond_4

    goto :goto_3

    :cond_4
    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v16, v8, v11

    aget v17, v8, v12

    add-float v17, v17, v13

    mul-float v17, v17, p2

    add-float v17, v17, v16

    aput v17, v8, v11

    aget v11, v8, v12

    aget v13, v8, v14

    add-float/2addr v13, v15

    mul-float v13, v13, p2

    add-float/2addr v13, v11

    aput v13, v8, v12

    :goto_3
    add-int/2addr v10, v2

    goto :goto_2

    :cond_5
    sget-object v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_HUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v5, v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v5, v8, v5

    :goto_4
    const/high16 v7, 0x43b40000    # 360.0f

    cmpg-float v9, v5, v7

    if-gez v9, :cond_6

    add-float/2addr v5, v7

    goto :goto_4

    :cond_6
    :goto_5
    cmpl-float v9, v5, v7

    if-lez v9, :cond_7

    sub-float/2addr v5, v7

    goto :goto_5

    :cond_7
    sget-object v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_HUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v7, v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aput v5, v8, v7

    :goto_6
    iget-object v5, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    iget-object v7, v5, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->list:[Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;

    invoke-virtual {v5}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v2

    sget-object v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->WIDTH:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v10, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget v9, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v9, v7, v9

    if-eqz v9, :cond_8

    invoke-virtual {v9, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v9

    aput v9, v8, v10

    iput v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    goto :goto_7

    :cond_8
    aget v9, v8, v10

    iput v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    :goto_7
    sget-object v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->HEIGHT:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v10, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget v9, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v9, v7, v9

    if-eqz v9, :cond_9

    invoke-virtual {v9, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v9

    aput v9, v8, v10

    iput v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    goto :goto_8

    :cond_9
    aget v9, v8, v10

    iput v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    :goto_8
    iget v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posMode:I

    if-nez v9, :cond_b

    sget-object v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v10, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget v9, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v9, v7, v9

    if-eqz v9, :cond_a

    invoke-virtual {v9, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v9

    aput v9, v8, v10

    goto :goto_9

    :cond_a
    aget v9, v8, v10

    :goto_9
    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v10, v8, v10

    iget v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    mul-float/2addr v11, v9

    add-float/2addr v11, v10

    iput v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v10, v8, v10

    iget v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    mul-float/2addr v11, v9

    add-float/2addr v11, v10

    iput v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    goto :goto_b

    :cond_b
    sget-object v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v10, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget v9, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v9, v7, v9

    if-eqz v9, :cond_c

    invoke-virtual {v9, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v9

    aput v9, v8, v10

    iput v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    goto :goto_a

    :cond_c
    aget v9, v8, v10

    iput v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    :goto_a
    sget-object v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v10, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget v9, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v9, v7, v9

    if-eqz v9, :cond_d

    invoke-virtual {v9, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v9

    aput v9, v8, v10

    iput v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    goto :goto_b

    :cond_d
    aget v9, v8, v10

    iput v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    :goto_b
    sget-object v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ROTATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v10, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget v11, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v11, v7, v11

    if-eqz v11, :cond_e

    invoke-virtual {v11, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v11

    aput v11, v8, v10

    iput v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    goto :goto_c

    :cond_e
    aget v10, v8, v10

    iput v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    :goto_c
    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v11, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget v12, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v12, v7, v12

    if-eqz v12, :cond_f

    invoke-virtual {v12, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v12

    aput v12, v8, v11

    iput v12, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    goto :goto_d

    :cond_f
    aget v11, v8, v11

    iput v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    :goto_d
    iget v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    const/16 v12, 0xa

    if-nez v11, :cond_11

    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v13, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v11, v7, v11

    if-eqz v11, :cond_10

    invoke-virtual {v11, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v11

    aput v11, v8, v13

    goto :goto_e

    :cond_10
    aget v11, v8, v13

    :goto_e
    iput v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    iput v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    goto :goto_10

    :cond_11
    if-ne v12, v11, :cond_14

    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v13, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v11, v7, v11

    if-eqz v11, :cond_12

    invoke-virtual {v11, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v11

    aput v11, v8, v13

    iput v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    goto :goto_f

    :cond_12
    aget v11, v8, v13

    iput v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    :goto_f
    sget-object v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v13, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    iget v11, v11, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v11, v7, v11

    if-eqz v11, :cond_13

    invoke-virtual {v11, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v11

    aput v11, v8, v13

    iput v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    goto :goto_10

    :cond_13
    aget v11, v8, v13

    iput v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    :cond_14
    :goto_10
    if-eqz p3, :cond_16

    iget v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    sget-object v13, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v13, v13, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v13, p3, v13

    add-float/2addr v11, v13

    iput v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    iget v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    sget-object v13, Lcom/samsung/android/nexus/particle/emitter/FactorType;->POS_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v13, v13, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v13, p3, v13

    add-float/2addr v11, v13

    iput v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    iget v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    iget v9, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v9, p3, v9

    add-float/2addr v11, v9

    iput v11, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    iget v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v10, p3, v10

    mul-float/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    iget v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    if-nez v9, :cond_15

    sget-object v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v9, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v9, p3, v9

    iget v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    mul-float/2addr v10, v9

    iput v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    iget v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    mul-float/2addr v10, v9

    iput v10, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    goto :goto_11

    :cond_15
    if-ne v12, v9, :cond_16

    iget v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_X:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v10, p3, v10

    mul-float/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    iget v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->SCALE_Y:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v10, p3, v10

    mul-float/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    :cond_16
    :goto_11
    iget v9, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->colorMode:I

    const-string v10, "null key frame set"

    const/high16 v11, 0x437f0000    # 255.0f

    if-eq v9, v2, :cond_1b

    const/4 v13, 0x2

    if-eq v9, v13, :cond_19

    if-eq v9, v12, :cond_18

    const/16 v5, 0x14

    if-eq v9, v5, :cond_17

    goto/16 :goto_12

    :cond_17
    sget-object v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v5, v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v5, v8, v5

    sget-object v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_HUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v7, v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v7, v8, v7

    sget-object v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_SATURATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v9, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v9, v8, v9

    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_VALUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v8, v8, v10

    invoke-static {v5, v7, v9, v8}, Lcom/samsung/android/nexus/particle/emitter/Status;->AHSVToColor(FFFF)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    goto/16 :goto_12

    :cond_18
    sget-object v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v5, v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v5, v8, v5

    div-float/2addr v5, v11

    sget-object v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_RED:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v7, v7, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v7, v8, v7

    div-float/2addr v7, v11

    sget-object v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_GREEN:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v9, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v9, v8, v9

    div-float/2addr v9, v11

    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_BLUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->valueIdx:I

    aget v8, v8, v10

    div-float/2addr v8, v11

    invoke-static {v5, v7, v9, v8}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    goto :goto_12

    :cond_19
    if-eqz v5, :cond_1a

    sget-object v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v5, v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v5, v7, v5

    invoke-virtual {v5, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v5

    sget-object v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_HUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v8, v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v8, v7, v8

    invoke-virtual {v8, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v8

    sget-object v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_SATURATION:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v9, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v9, v7, v9

    invoke-virtual {v9, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v9

    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_VALUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v7, v7, v10

    invoke-virtual {v7, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v7

    invoke-static {v5, v8, v9, v7}, Lcom/samsung/android/nexus/particle/emitter/Status;->AHSVToColor(FFFF)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    goto :goto_12

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    if-eqz v5, :cond_1d

    sget-object v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_ALPHA:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v5, v5, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v5, v7, v5

    invoke-virtual {v5, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v5

    div-float/2addr v5, v11

    sget-object v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_RED:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v8, v8, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v8, v7, v8

    invoke-virtual {v8, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v8

    div-float/2addr v8, v11

    sget-object v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_GREEN:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v9, v9, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v9, v7, v9

    invoke-virtual {v9, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v9

    div-float/2addr v9, v11

    sget-object v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->COLOR_BLUE:Lcom/samsung/android/nexus/particle/emitter/FactorType;

    iget v10, v10, Lcom/samsung/android/nexus/particle/emitter/FactorType;->idx:I

    aget-object v7, v7, v10

    invoke-virtual {v7, v1}, Lcom/samsung/android/nexus/base/utils/keyFrameSet/FloatKeyFrameSet;->get(F)F

    move-result v7

    div-float/2addr v7, v11

    invoke-static {v5, v8, v9, v7}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    :goto_12
    iget v5, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    iget v7, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    mul-float/2addr v5, v7

    iput v5, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingWidth:F

    iget v5, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    iget v7, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    mul-float/2addr v5, v7

    iput v5, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingHeight:F

    iput-boolean v2, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/nexus/particle/emitter/Status;->updateBounds()V

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1c

    iget v1, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->speed:F

    iget v2, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget v5, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    sub-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v2, v2, p2

    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->speed:F

    sub-float/2addr v2, v1

    iput v2, v0, Lcom/samsung/android/nexus/particle/emitter/Status;->acc:F

    :cond_1c
    return-void

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final reset()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanX:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->vecTanY:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingWidth:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingHeight:F

    iget-object v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->speed:F

    iput v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->acc:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posMode:I

    iput v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    iput v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->colorMode:I

    iget-object v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    invoke-virtual {v0}, Lcom/samsung/android/nexus/particle/emitter/Factor;->reset()V

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    invoke-virtual {p0}, Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;->clear()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factor{drawingWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", drawingHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mUpdateBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", posX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", posY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->rotation:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scaleX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scaleY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->speed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", acc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->acc:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scaleMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->scaleMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", colorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->colorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", factorValueList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->factor:Lcom/samsung/android/nexus/particle/emitter/Factor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", factorKeyFrameSetList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->factorKeyFrameSetList:Lcom/samsung/android/nexus/particle/emitter/FactorKeyFrameSetList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateBounds()V
    .locals 7

    iget v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->drawingHeight:F

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mBounds:Landroid/graphics/RectF;

    iget v3, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posX:F

    sub-float v4, v3, v0

    iget v5, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->posY:F

    sub-float v6, v5, v2

    add-float/2addr v3, v0

    add-float/2addr v5, v2

    invoke-virtual {v1, v4, v6, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/nexus/particle/emitter/Status;->mUpdateBounds:Z

    return-void
.end method
