.class public Lcom/android/settings/widget/UsageGraph;
.super Landroid/view/View;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBottomDividerTint:I

.field public final mCornerRadius:I

.field public final mDivider:Landroid/graphics/drawable/Drawable;

.field public final mDividerSize:I

.field public final mFillPaint:Landroid/graphics/Paint;

.field public final mLinePaint:Landroid/graphics/Paint;

.field public final mLocalPaths:Landroid/util/SparseIntArray;

.field public final mLocalProjectedPaths:Landroid/util/SparseIntArray;

.field public mMaxX:F

.field public mMaxY:F

.field public mMiddleDividerLoc:F

.field public mMiddleDividerTint:I

.field public final mPath:Landroid/graphics/Path;

.field public final mPaths:Landroid/util/SparseIntArray;

.field public final mProjectedPaths:Landroid/util/SparseIntArray;

.field public final mTintedDivider:Landroid/graphics/drawable/Drawable;

.field public mTopDividerTint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    const/high16 p2, 0x42c80000    # 100.0f

    iput p2, p0, Lcom/android/settings/widget/UsageGraph;->mMaxX:F

    iput p2, p0, Lcom/android/settings/widget/UsageGraph;->mMaxY:F

    const/high16 p2, 0x3f000000    # 0.5f

    iput p2, p0, Lcom/android/settings/widget/UsageGraph;->mMiddleDividerLoc:F

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/settings/widget/UsageGraph;->mMiddleDividerTint:I

    iput p2, p0, Lcom/android/settings/widget/UsageGraph;->mTopDividerTint:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v3, 0x7f0713a6    # 1.795478E38f

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/widget/UsageGraph;->mCornerRadius:I

    new-instance v4, Landroid/graphics/CornerPathEffect;

    int-to-float v3, v3

    invoke-direct {v4, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const v3, 0x7f0713a7

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, p0, Lcom/android/settings/widget/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v4, 0x7f060b0f

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, 0x7f0713a4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x7f0713a3

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v0

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v5, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput v0, v6, v7

    aput v1, v6, v2

    const/4 v0, 0x0

    invoke-direct {v5, v6, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v3, 0x1010214

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mDivider:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f080e04

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0605c0

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/UsageGraph;->mBottomDividerTint:I

    const p1, 0x7f0713a2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/UsageGraph;->mDividerSize:I

    return-void
.end method


# virtual methods
.method public calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v7, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_7

    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    if-ne v9, v2, :cond_3

    if-ne v4, v11, :cond_1

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    iget v9, p0, Lcom/android/settings/widget/UsageGraph;->mMaxX:F

    div-float/2addr v8, v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int/2addr v8, v11

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget v11, p0, Lcom/android/settings/widget/UsageGraph;->mMaxY:F

    const/4 v12, 0x0

    div-float/2addr v12, v11

    sub-float/2addr v10, v12

    mul-float/2addr v10, v9

    float-to-int v9, v10

    invoke-virtual {p2, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    sub-int/2addr v8, v11

    if-ne v4, v8, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {p2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    :cond_2
    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p2, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_1
    move v5, v3

    goto :goto_3

    :cond_3
    int-to-float v5, v8

    iget v6, p0, Lcom/android/settings/widget/UsageGraph;->mMaxX:F

    div-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v6, v5

    int-to-float v5, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/settings/widget/UsageGraph;->mMaxY:F

    div-float/2addr v5, v8

    sub-float/2addr v10, v5

    mul-float/2addr v10, v7

    float-to-int v7, v10

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    sub-int/2addr v5, v11

    invoke-virtual {p2, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    sub-int/2addr v8, v11

    invoke-virtual {p2, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    if-eq v8, v2, :cond_6

    sub-int v5, v6, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v9, p0, Lcom/android/settings/widget/UsageGraph;->mCornerRadius:I

    if-lt v5, v9, :cond_4

    goto :goto_2

    :cond_4
    sub-int v5, v7, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v8, p0, Lcom/android/settings/widget/UsageGraph;->mCornerRadius:I

    if-lt v5, v8, :cond_5

    goto :goto_2

    :cond_5
    move v5, v11

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {p2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    const-string p0, "UsageGraph"

    const-string p1, "calculateLocalPaths"

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final drawDivider(ILandroid/graphics/Canvas;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result p3

    iget p0, p0, Lcom/android/settings/widget/UsageGraph;->mDividerSize:I

    add-int/2addr p0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p3, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawFilledPath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V
    .locals 6

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    iget-object v3, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_2
    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/settings/widget/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p0, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/settings/widget/UsageGraph;->mMiddleDividerLoc:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iget v4, p0, Lcom/android/settings/widget/UsageGraph;->mTopDividerTint:I

    invoke-virtual {p0, v2, p1, v4}, Lcom/android/settings/widget/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/android/settings/widget/UsageGraph;->mDividerSize:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/android/settings/widget/UsageGraph;->mMiddleDividerLoc:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/android/settings/widget/UsageGraph;->mMiddleDividerTint:I

    invoke-virtual {p0, v2, p1, v4}, Lcom/android/settings/widget/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/android/settings/widget/UsageGraph;->mDividerSize:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/android/settings/widget/UsageGraph;->mBottomDividerTint:I

    invoke-virtual {p0, v2, p1, v4}, Lcom/android/settings/widget/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/widget/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/widget/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/settings/widget/UsageGraph;->drawFilledPath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const-string p0, "UsageGraph"

    const-string p1, "onDraw"

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/android/settings/widget/UsageGraph;->updateGradient()V

    iget-object p1, p0, Lcom/android/settings/widget/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    iget-object p2, p0, Lcom/android/settings/widget/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/UsageGraph;->calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    iget-object p1, p0, Lcom/android/settings/widget/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    iget-object p2, p0, Lcom/android/settings/widget/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/UsageGraph;->calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    const-string p0, "UsageGraph"

    const-string p1, "onSizeChanged"

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAccentColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/settings/widget/UsageGraph;->updateGradient()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setDividerLoc(I)V
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lcom/android/settings/widget/UsageGraph;->mMaxY:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/settings/widget/UsageGraph;->mMiddleDividerLoc:F

    return-void
.end method

.method public final updateGradient()V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/widget/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0605bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0605be

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method
