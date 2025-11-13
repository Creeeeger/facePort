.class public final Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAngle:F

.field public mColorFilter:Landroid/graphics/ColorFilter;

.field public mHeight:I

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPath:Landroid/graphics/Path;

.field public mPathDataNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

.field public final mRoundRadius:I

.field public mWidth:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Paint;F)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mWidth:I

    iput v0, p0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mPathDataNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mPath:Landroid/graphics/Path;

    iput p1, p0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mRoundRadius:I

    iput-object p2, p0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mPaint:Landroid/graphics/Paint;

    iput p3, p0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mAngle:F

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mWidth:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, v0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mHeight:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mWidth:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mHeight:I

    const/4 v1, 0x1

    :goto_1
    iget-object v2, v0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget v2, v0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mRoundRadius:I

    int-to-float v2, v2

    iget v3, v0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mWidth:I

    iget v4, v0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mHeight:I

    if-lez v3, :cond_7

    if-gtz v4, :cond_2

    goto/16 :goto_3

    :cond_2
    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v6, v2, v6

    const/high16 v8, 0x3f000000    # 0.5f

    cmpl-float v9, v6, v8

    const/high16 v10, 0x3f800000    # 1.0f

    if-lez v9, :cond_3

    sub-float v8, v6, v8

    const v9, 0x3ecccccd    # 0.4f

    div-float/2addr v8, v9

    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const v9, 0x3e0e1bf0

    mul-float/2addr v8, v9

    sub-float v8, v10, v8

    goto :goto_2

    :cond_3
    move v8, v10

    :goto_2
    float-to-double v11, v6

    const-wide v13, 0x3fe3333333333333L    # 0.6

    cmpl-double v9, v11, v13

    if-lez v9, :cond_4

    const v9, 0x3f19999a    # 0.6f

    sub-float/2addr v6, v9

    const v9, 0x3e99999a    # 0.3f

    div-float/2addr v6, v9

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const v9, 0x3d2de440

    mul-float/2addr v6, v9

    add-float/2addr v10, v6

    :cond_4
    const/high16 v6, 0x42c80000    # 100.0f

    if-nez v1, :cond_5

    iget-object v1, v0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mPathDataNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    if-nez v1, :cond_6

    :cond_5
    div-float/2addr v4, v2

    mul-float/2addr v4, v6

    div-float/2addr v3, v2

    mul-float/2addr v3, v6

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const v11, 0x430030a4    # 128.19f

    mul-float/2addr v8, v11

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v9, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v9, "L %f %f "

    invoke-static {v1, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const v12, 0x42a73d71    # 83.62f

    mul-float/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const v17, 0x40947ae1    # 4.64f

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const v18, 0x4286e666    # 67.45f

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v19, 0x4155c28f    # 13.36f

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const v20, 0x424ca3d7    # 51.16f

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    filled-new-array/range {v11 .. v16}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "C %f %f %f %f %f %f "

    invoke-static {v1, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const v13, 0x41b08f5c    # 22.07f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    const v14, 0x420b70a4    # 34.86f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    filled-new-array/range {v21 .. v26}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v1, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    filled-new-array/range {v19 .. v24}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v1, v12, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v3, v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v9, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "M 0 0 "

    invoke-static {v3, v4, v11, v13, v10}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Z"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mPathDataNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    :cond_6
    iget-object v1, v0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mPathDataNodes:[Landroidx/core/graphics/PathParser$PathDataNode;

    iget-object v3, v0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mPath:Landroid/graphics/Path;

    invoke-static {v1, v3}, Landroidx/core/graphics/PathParser$PathDataNode;->nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V

    iget-object v1, v0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    div-float/2addr v2, v6

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v1, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget v4, v0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mAngle:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v1, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    int-to-float v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v1, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_4

    :cond_7
    :goto_3
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    :goto_4
    iget-object v0, v0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method
