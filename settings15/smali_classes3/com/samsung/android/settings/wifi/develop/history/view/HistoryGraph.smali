.class public Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;
.super Landroid/view/View;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mActivePointerId:I

.field public final mBottomPadding:I

.field public mChartListener:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView$1;

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mDivider:Landroid/graphics/drawable/Drawable;

.field public final mDividerSize:I

.field public final mDottedLinePaint:Landroid/graphics/Paint;

.field public final mLabelPaint:Landroid/graphics/Paint;

.field public mLastTouchX:F

.field public mLastTouchY:F

.field public final mLinePaint:Landroid/graphics/Paint;

.field public final mLocalPaths:Ljava/util/List;

.field public final mLocalSecondPaths:Ljava/util/List;

.field public mMaxX:F

.field public mMaxY:F

.field public final mMiddleDividerLoc:F

.field public final mPath:Landroid/graphics/Path;

.field public mPathLabelAlign:I

.field public final mPaths:Ljava/util/List;

.field public mPosX:F

.field public final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field public mScaleFactor:F

.field public mScatterDensity:F

.field public final mScatterPaint:Landroid/graphics/Paint;

.field public mScatterRadius:F

.field public final mSecondLinePaint:Landroid/graphics/Paint;

.field public mSecondPathLabelAlign:I

.field public final mSecondPaths:Ljava/util/List;

.field public mShowValueLabel:Z

.field public final mTopPadding:I

.field public mValueAxisOffset:J

.field public mValueAxisTick:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterDensity:F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPathLabelAlign:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPaths:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalPaths:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPaths:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalSecondPaths:Ljava/util/List;

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMaxX:F

    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMaxY:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMiddleDividerLoc:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleFactor:F

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    iput v5, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterRadius:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDividerSize:I

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v3, v1

    float-to-int v1, v5

    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mTopPadding:I

    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mBottomPadding:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLinePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v6, 0xb4

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondLinePaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/16 v8, 0x3f

    const/16 v9, 0x91

    invoke-static {v8, v9, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDottedLinePaint:Landroid/graphics/Paint;

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v4, v2

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v2, v7

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v5, Landroid/graphics/DashPathEffect;

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v4, v7, v0

    const/4 v0, 0x1

    aput v2, v7, v0

    invoke-direct {v5, v7, p2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterPaint:Landroid/graphics/Paint;

    const/16 v1, 0xa0

    const/16 v2, 0x3e

    const/16 v4, 0x85

    invoke-static {v2, v4, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLabelPaint:Landroid/graphics/Paint;

    const/16 v1, 0x43

    const/16 v2, 0xe9

    const/16 v4, 0x83

    invoke-static {v2, v4, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010214

    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDivider:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;-><init>(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public final calculateLocalPaths(Ljava/util/List;Ljava/util/List;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMaxX:F

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mTopPadding:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mBottomPadding:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v5, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMaxY:F

    div-float/2addr v0, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v0

    mul-float/2addr v5, v3

    float-to-int v0, v5

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final drawDivider(ILandroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDividerSize:I

    add-int/2addr p0, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final drawLineAndScatterAndLabel(Landroid/graphics/Canvas;JLjava/util/List;Ljava/util/List;Landroid/graphics/Paint;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p7

    move-object/from16 v5, p5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterRadius:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v9, v7, v8

    div-float/2addr v6, v9

    iget v9, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterDensity:F

    mul-float/2addr v6, v9

    float-to-long v9, v6

    cmp-long v6, v2, v9

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    long-to-float v2, v2

    long-to-float v3, v9

    mul-float/2addr v3, v8

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    div-float/2addr v7, v8

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    const/high16 v10, 0x7fc00000    # Float.NaN

    move v13, v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v14, v8, :cond_d

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget v12, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleFactor:F

    mul-float/2addr v8, v12

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    iget v11, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v11, v8, v11

    if-gez v11, :cond_3

    move/from16 p3, v2

    move-object/from16 v17, v5

    :goto_2
    const/4 v4, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    goto/16 :goto_7

    :cond_3
    iget v11, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    move-object/from16 v17, v5

    int-to-float v5, v2

    add-float/2addr v11, v5

    cmpl-float v11, v8, v11

    if-lez v11, :cond_4

    iget v2, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v2, v5

    sub-float/2addr v12, v10

    sub-float v4, v2, v13

    mul-float/2addr v4, v12

    sub-float/2addr v8, v13

    div-float/2addr v4, v8

    add-float/2addr v4, v10

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v3, v13, v10}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_8

    :cond_4
    const/4 v5, 0x1

    if-nez v15, :cond_6

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v9, v13, v10}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v9, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_5
    move v15, v5

    :cond_6
    if-eqz v16, :cond_7

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v10, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    iget-object v10, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v10, v8, v12}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v16, v5

    goto :goto_3

    :goto_4
    cmpl-float v11, v7, v10

    if-lez v11, :cond_8

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v12, v7, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_8
    iget-boolean v11, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mShowValueLabel:Z

    if-eqz v11, :cond_c

    if-gez v6, :cond_c

    move-object/from16 v11, p4

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    iget-wide v10, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mValueAxisOffset:J

    add-long v18, v18, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    if-nez v4, :cond_a

    rem-int/lit8 v11, v14, 0x2

    if-ne v11, v5, :cond_9

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    goto :goto_5

    :cond_a
    if-ne v4, v5, :cond_9

    :goto_5
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLabelPaint:Landroid/graphics/Paint;

    move/from16 p3, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v13, v10, v4, v2, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v2, v13

    add-float/2addr v2, v8

    if-eqz v5, :cond_b

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v13

    sub-float v5, v12, v5

    goto :goto_6

    :cond_b
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v12

    iget v11, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterRadius:F

    mul-float/2addr v11, v13

    add-float/2addr v5, v11

    :goto_6
    iget-object v11, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v2, v5, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_c
    move/from16 p3, v2

    goto/16 :goto_2

    :goto_7
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, p3

    move/from16 v4, p7

    move v13, v8

    move v10, v12

    move-object/from16 v5, v17

    goto/16 :goto_1

    :cond_d
    :goto_8
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPath:Landroid/graphics/Path;

    move-object/from16 v4, p6

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v9}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDottedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_e
    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDottedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_f
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mTopPadding:I

    sub-int/2addr v1, v2

    iget v2, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mBottomPadding:I

    sub-int/2addr v1, v2

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->drawDivider(ILandroid/graphics/Canvas;)V

    iget v2, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDividerSize:I

    sub-int v2, v1, v2

    int-to-float v2, v2

    iget v3, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMiddleDividerLoc:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v8, v2, v9}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->drawDivider(ILandroid/graphics/Canvas;)V

    iget v2, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDividerSize:I

    sub-int/2addr v1, v2

    invoke-virtual {v8, v1, v9}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->drawDivider(ILandroid/graphics/Canvas;)V

    iget-object v1, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalPaths:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalSecondPaths:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-ne v1, v11, :cond_1

    int-to-float v1, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v9, v3, v12, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    iget v1, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    cmpg-float v3, v1, v2

    if-gez v3, :cond_2

    int-to-float v3, v0

    iget v4, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleFactor:F

    mul-float/2addr v4, v3

    sub-float/2addr v4, v3

    neg-float v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    :goto_0
    iget v1, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v0, v0

    iget v1, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleFactor:F

    mul-float/2addr v1, v0

    iget v2, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v13, v2, v1

    iget v2, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v2, v0

    div-float v14, v2, v1

    iget v0, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMaxX:F

    sub-float v1, v14, v13

    mul-float/2addr v1, v0

    float-to-long v0, v1

    iget-wide v2, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mValueAxisTick:J

    div-long v15, v0, v2

    iget-object v0, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPaths:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iput v11, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPathLabelAlign:I

    const/4 v0, 0x2

    iput v0, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPathLabelAlign:I

    goto :goto_1

    :cond_3
    iput v10, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPathLabelAlign:I

    :goto_1
    iget-object v4, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPaths:Ljava/util/List;

    iget-object v5, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalSecondPaths:Ljava/util/List;

    iget-object v6, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondLinePaint:Landroid/graphics/Paint;

    iget v7, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPathLabelAlign:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v15

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->drawLineAndScatterAndLabel(Landroid/graphics/Canvas;JLjava/util/List;Ljava/util/List;Landroid/graphics/Paint;I)V

    iget-object v4, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPaths:Ljava/util/List;

    iget-object v5, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalPaths:Ljava/util/List;

    iget-object v6, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLinePaint:Landroid/graphics/Paint;

    iget v7, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPathLabelAlign:I

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->drawLineAndScatterAndLabel(Landroid/graphics/Canvas;JLjava/util/List;Ljava/util/List;Landroid/graphics/Paint;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, v8, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mChartListener:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView$1;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView$1;->this$0:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisValues:[Ljava/lang/Object;

    if-eqz v1, :cond_8

    array-length v2, v1

    if-nez v2, :cond_4

    goto/16 :goto_4

    :cond_4
    aget-object v1, v1, v10

    instance-of v1, v1, Ljava/util/Date;

    if-eqz v1, :cond_7

    iget-wide v1, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mMaxDomainValue:J

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisFormat:Ljava/text/Format;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_2
    new-instance v4, Ljava/util/Date;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisValues:[Ljava/lang/Object;

    aget-object v5, v5, v10

    check-cast v5, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    long-to-float v1, v1

    mul-float/2addr v13, v1

    float-to-long v7, v13

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Date;->setTime(J)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisLabels:[Landroid/widget/TextView;

    aget-object v2, v2, v10

    invoke-virtual {v3, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisLabels:[Landroid/widget/TextView;

    array-length v2, v2

    if-ne v2, v11, :cond_6

    goto :goto_4

    :cond_6
    new-instance v2, Ljava/util/Date;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisValues:[Ljava/lang/Object;

    array-length v5, v4

    sub-int/2addr v5, v11

    aget-object v4, v4, v5

    check-cast v4, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-float/2addr v12, v14

    mul-float/2addr v12, v1

    float-to-long v6, v12

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/util/Date;->setTime(J)V

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisLabels:[Landroid/widget/TextView;

    array-length v1, v0

    sub-int/2addr v1, v11

    aget-object v0, v0, v1

    invoke-virtual {v3, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    :goto_3
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisLabels:[Landroid/widget/TextView;

    array-length v2, v1

    if-ge v10, v2, :cond_8

    aget-object v1, v1, v10

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryView;->mDomainAxisValues:[Ljava/lang/Object;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPaths:Ljava/util/List;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalPaths:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->calculateLocalPaths(Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPaths:Ljava/util/List;

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalSecondPaths:Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->calculateLocalPaths(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mActivePointerId:I

    if-ne v3, v4, :cond_6

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLastTouchX:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mActivePointerId:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLastTouchX:F

    sub-float p1, v1, p1

    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLastTouchX:F

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mActivePointerId:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mActivePointerId:I

    :cond_6
    :goto_0
    return v2
.end method
