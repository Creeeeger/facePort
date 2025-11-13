.class public final Landroidx/cardview/widget/RoundRectDrawableWithShadow;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final COS_45:D


# instance fields
.field public final mAddPaddingForCorners:Z

.field public final mBackground:Landroid/content/res/ColorStateList;

.field public final mCardBounds:Landroid/graphics/RectF;

.field public final mCornerRadius:F

.field public final mCornerShadowPaint:Landroid/graphics/Paint;

.field public mCornerShadowPath:Landroid/graphics/Path;

.field public mDirty:Z

.field public final mEdgeShadowPaint:Landroid/graphics/Paint;

.field public final mInsetShadow:I

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPrintedShadowClipWarning:Z

.field public final mRawMaxShadowSize:F

.field public final mRawShadowSize:F

.field public final mShadowEndColor:I

.field public final mShadowSize:F

.field public final mShadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V
    .locals 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    const v2, 0x7f060093

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    const v2, 0x7f060092

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    const v2, 0x7f0701ae

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    if-nez p2, :cond_0

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    iget-object v5, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p3, v2

    float-to-int p3, p3

    int-to-float p3, p3

    iput p3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p2, 0x0

    cmpg-float p3, p4, p2

    const-string v1, ". Must be >= 0"

    if-ltz p3, :cond_7

    cmpg-float p2, p5, p2

    if-ltz p2, :cond_6

    add-float/2addr p4, v2

    float-to-int p2, p4

    rem-int/lit8 p3, p2, 0x2

    if-ne p3, v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    int-to-float p2, p2

    add-float/2addr p5, v2

    float-to-int p3, p5

    rem-int/lit8 p4, p3, 0x2

    if-ne p4, v0, :cond_2

    add-int/lit8 p3, p3, -0x1

    :cond_2
    int-to-float p3, p3

    cmpl-float p4, p2, p3

    if-lez p4, :cond_4

    iget-boolean p2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    if-nez p2, :cond_3

    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    :cond_3
    move p2, p3

    :cond_4
    iget p4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    cmpl-float p4, p4, p2

    if-nez p4, :cond_5

    iget p4, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    cmpl-float p4, p4, p3

    if-nez p4, :cond_5

    goto :goto_0

    :cond_5
    iput p2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    iput p3, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    const/high16 p3, 0x3fc00000    # 1.5f

    mul-float/2addr p2, p3

    int-to-float p1, p1

    add-float/2addr p2, p1

    add-float/2addr p2, v2

    float-to-int p1, p2

    int-to-float p1, p1

    iput p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    iput-boolean v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid max shadow size "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid shadow size "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static calculateHorizontalPadding(FFZ)F
    .locals 6

    if-eqz p2, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double/2addr v2, p0

    add-double/2addr v2, v0

    double-to-float p0, v2

    :cond_0
    return p0
.end method

.method public static calculateVerticalPadding(FFZ)F
    .locals 6

    const/high16 v0, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_0

    mul-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double/2addr v2, p0

    add-double/2addr v2, v0

    double-to-float p0, v2

    return p0

    :cond_0
    mul-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v1, 0x1

    const/4 v2, 0x3

    iget-boolean v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    const/high16 v8, 0x43870000    # 270.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v10, 0x43340000    # 180.0f

    const/4 v4, 0x0

    const/4 v11, 0x0

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v5

    iget-object v12, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v13, v3, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    add-float/2addr v13, v5

    iget v14, v3, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    add-float/2addr v14, v6

    iget v15, v3, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    sub-float/2addr v15, v5

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    iget v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v6, v5

    invoke-direct {v3, v6, v6, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v6, v6

    invoke-virtual {v5, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    if-nez v6, :cond_0

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    :goto_0
    iget-object v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    sget-object v12, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v6, v12}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget v12, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v12, v12

    invoke-virtual {v6, v12, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget v12, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v12, v12

    invoke-virtual {v6, v12, v11}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v10, v9, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v6, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v3, v8, v6, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    iget v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float/2addr v5, v3

    div-float/2addr v3, v5

    iget-object v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/RadialGradient;

    iget v12, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v13, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float v15, v12, v13

    iget v12, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    iget v13, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    filled-new-array {v12, v12, v13}, [I

    move-result-object v16

    const/high16 v12, 0x3f800000    # 1.0f

    new-array v14, v2, [F

    aput v11, v14, v4

    aput v3, v14, v1

    const/4 v3, 0x2

    aput v12, v14, v3

    sget-object v24, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v13, 0x0

    const/4 v3, 0x0

    move-object v12, v6

    move-object/from16 v17, v14

    move v14, v3

    move-object/from16 v18, v24

    invoke-direct/range {v12 .. v18}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/LinearGradient;

    iget v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v6, v6

    iget v12, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float v19, v6, v12

    sub-float v21, v6, v12

    iget v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    iget v12, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    filled-new-array {v6, v6, v12}, [I

    move-result-object v22

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v5

    move-object/from16 v23, v2

    invoke-direct/range {v17 .. v24}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-boolean v4, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    :cond_1
    iget v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v2, v12

    invoke-virtual {v7, v11, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v3, v2

    iget v5, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    sub-float v13, v3, v5

    iget v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    div-float/2addr v3, v12

    add-float v14, v3, v2

    iget-object v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v15, v14, v12

    sub-float/2addr v2, v15

    cmpl-float v2, v2, v11

    if-lez v2, :cond_2

    move/from16 v16, v1

    goto :goto_1

    :cond_2
    move/from16 v16, v4

    :goto_1
    iget-object v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v2, v15

    cmpl-float v2, v2, v11

    if-lez v2, :cond_3

    move/from16 v17, v1

    goto :goto_2

    :cond_3
    move/from16 v17, v4

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v14

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v14

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v16, :cond_4

    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v4, v1, v15

    iget v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v5, v1

    iget-object v3, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move-object/from16 v18, v3

    move v3, v13

    move v11, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    move v11, v6

    :goto_3
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v14

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v14

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v16, :cond_5

    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v4, v1, v15

    iget v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v1, v1

    iget v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float v5, v1, v2

    iget-object v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v14

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v14

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v17, :cond_6

    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v4, v1, v15

    iget v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v5, v1

    iget-object v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v14

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v14

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v2, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v17, :cond_7

    iget-object v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v4, v1, v15

    iget v1, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v5, v1

    iget-object v6, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_7
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v0, v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    neg-float v0, v0

    div-float/2addr v0, v12

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    throw v0

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 3

    iget v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget-boolean v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    invoke-static {v0, v1, v2}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v2, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget-boolean p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    invoke-static {v1, v2, p0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    invoke-virtual {p1, p0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p0, 0x1

    return p0
.end method

.method public final isStateful()Z
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    return-void
.end method

.method public final onStateChange([I)Z
    .locals 2

    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    iget-object p0, p0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
