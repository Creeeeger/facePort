.class public Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;
.super Landroid/view/View;
.source "HistoryGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;,
        Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ChartListener;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private final mBottomPadding:I

.field private mChartListener:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ChartListener;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private final mDividerSize:I

.field private final mDottedLinePaint:Landroid/graphics/Paint;

.field private final mLabelPaint:Landroid/graphics/Paint;

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private final mLinePaint:Landroid/graphics/Paint;

.field private final mLocalPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalSecondPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxX:F

.field private mMaxY:F

.field private mMiddleDividerLoc:F

.field private final mPath:Landroid/graphics/Path;

.field private mPathLabelAlign:I

.field private final mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPosX:F

.field private mPosY:F

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleFactor:F

.field private mScatterDensity:F

.field private final mScatterPaint:Landroid/graphics/Paint;

.field private mScatterRadius:F

.field private final mSecondLinePaint:Landroid/graphics/Paint;

.field private mSecondPathLabelAlign:I

.field private final mSecondPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShowValueLabel:Z

.field private final mSidePadding:I

.field private final mTopPadding:I

.field private mValueAxisOffset:J

.field private mValueAxisTick:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmPosX(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScaleFactor(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleFactor:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPosX(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScaleFactor(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleFactor:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 42
    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterDensity:F

    .line 47
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPathLabelAlign:I

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPaths:Ljava/util/List;

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalPaths:Ljava/util/List;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPaths:Ljava/util/List;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalSecondPaths:Ljava/util/List;

    const/high16 v1, 0x42c80000    # 100.0f

    .line 66
    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMaxX:F

    .line 67
    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMaxY:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 69
    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMiddleDividerLoc:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 76
    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleFactor:F

    const/4 v2, -0x1

    .line 85
    iput v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mActivePointerId:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 98
    iget v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    iput v5, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterRadius:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 99
    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDividerSize:I

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v3, v1

    float-to-int v1, v5

    .line 102
    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mTopPadding:I

    float-to-int v1, v5

    .line 103
    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mBottomPadding:I

    .line 104
    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSidePadding:I

    .line 106
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLinePaint:Landroid/graphics/Paint;

    .line 107
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v5, 0x40400000    # 3.0f

    .line 108
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v6, 0xb4

    .line 110
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondLinePaint:Landroid/graphics/Paint;

    const/16 v7, 0x3f

    const/16 v8, 0x91

    const/16 v9, 0xff

    .line 113
    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v6, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDottedLinePaint:Landroid/graphics/Paint;

    .line 116
    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v4, v2

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v2, v7

    .line 118
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    new-instance v5, Landroid/graphics/DashPathEffect;

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v4, v7, v0

    const/4 v0, 0x1

    aput v2, v7, v0

    invoke-direct {v5, v7, p2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 121
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterPaint:Landroid/graphics/Paint;

    const/16 v1, 0x3e

    const/16 v2, 0x85

    const/16 v4, 0xa0

    .line 122
    invoke-static {v1, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLabelPaint:Landroid/graphics/Paint;

    const/16 v1, 0xe9

    const/16 v2, 0x83

    const/16 v4, 0x43

    .line 125
    invoke-static {v1, v2, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 128
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 130
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010214

    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 132
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 134
    new-instance p2, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener;-><init>(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ScaleListener-IA;)V

    invoke-direct {p2, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method private addPathAndUpdate(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 197
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->calculateLocalPaths(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private calculateLocalPaths()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPaths:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalPaths:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->calculateLocalPaths(Ljava/util/List;Ljava/util/List;)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPaths:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalSecondPaths:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->calculateLocalPaths(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 385
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->getActualWidth()I

    move-result v1

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDividerSize:I

    add-int/2addr p0, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 386
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawLineAndScatterAndLabel(Landroid/graphics/Canvas;JLjava/util/List;Ljava/util/List;Landroid/graphics/Paint;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "J",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Paint;",
            "I)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v0, p2

    move-object/from16 v8, p5

    move/from16 v9, p7

    .line 310
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->getActualWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v6, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    div-float/2addr v2, v5

    iget v5, v6, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterDensity:F

    mul-float/2addr v2, v5

    float-to-long v10, v2

    cmp-long v12, v0, v10

    if-gez v12, :cond_1

    :goto_0
    move v10, v3

    goto :goto_1

    :cond_1
    long-to-float v0, v0

    long-to-float v1, v10

    mul-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    div-float/2addr v3, v4

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    .line 326
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->getActualWidth()I

    move-result v11

    .line 327
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 328
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    .line 329
    iget-object v0, v6, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    const/16 v16, 0x0

    move v1, v0

    move/from16 v2, v16

    move v3, v2

    move v5, v3

    .line 331
    :goto_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_b

    .line 332
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v13, v6, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleFactor:F

    mul-float/2addr v13, v4

    .line 333
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 335
    iget v8, v6, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v13, v8

    if-gez v8, :cond_3

    move/from16 v19, v4

    move/from16 v20, v5

    move v8, v9

    const/16 v18, 0x0

    goto/16 :goto_7

    .line 339
    :cond_3
    iget v8, v6, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v11

    add-float/2addr v8, v9

    cmpl-float v8, v13, v8

    if-lez v8, :cond_4

    .line 340
    iget v2, v6, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v2, v9

    sub-float/2addr v4, v0

    sub-float v3, v2, v1

    mul-float/2addr v4, v3

    sub-float/2addr v13, v1

    div-float/2addr v4, v13

    add-float/2addr v4, v0

    .line 342
    invoke-static {v14, v1, v0, v2, v4}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->drawOutsidePath(Landroid/graphics/Path;FFFF)V

    goto/16 :goto_8

    :cond_4
    if-nez v2, :cond_5

    .line 347
    invoke-static {v15, v1, v0, v13, v4}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->drawOutsidePath(Landroid/graphics/Path;FFFF)V

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    move v9, v2

    :goto_3
    if-eqz v3, :cond_6

    .line 352
    iget-object v0, v6, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v13, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v17, v3

    goto :goto_4

    .line 355
    :cond_6
    iget-object v0, v6, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v13, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/16 v17, 0x1

    :goto_4
    const/16 v18, 0x0

    cmpl-float v0, v10, v18

    if-lez v0, :cond_7

    .line 359
    iget-object v0, v6, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v13, v4, v10, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 361
    :cond_7
    iget-boolean v0, v6, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mShowValueLabel:Z

    if-eqz v0, :cond_a

    if-gez v12, :cond_a

    move-object/from16 v3, p4

    .line 362
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move/from16 p3, v9

    iget-wide v8, v6, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mValueAxisOffset:J

    add-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move/from16 v8, p7

    if-nez v8, :cond_8

    .line 365
    rem-int/lit8 v0, v5, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    goto :goto_5

    :cond_8
    const/4 v1, 0x1

    if-ne v8, v1, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v1, v16

    :goto_5
    move v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v13

    move/from16 v19, v4

    move/from16 v20, v5

    move v5, v9

    .line 369
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFZ)V

    goto :goto_6

    :cond_a
    move/from16 v8, p7

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 p3, v9

    :goto_6
    move/from16 v2, p3

    move/from16 v3, v17

    :goto_7
    add-int/lit8 v5, v20, 0x1

    move v9, v8

    move v1, v13

    move/from16 v0, v19

    move-object/from16 v8, p5

    goto/16 :goto_2

    .line 376
    :cond_b
    :goto_8
    iget-object v0, v6, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPath:Landroid/graphics/Path;

    move-object/from16 v1, p6

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 377
    invoke-virtual {v15}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 378
    iget-object v0, v6, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDottedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v15, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 379
    :cond_c
    invoke-virtual {v14}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 380
    iget-object v0, v6, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDottedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_d
    return-void
.end method

.method static drawOutsidePath(Landroid/graphics/Path;FFFF)V
    .locals 1

    .line 302
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 304
    invoke-virtual {p0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFZ)V
    .locals 4

    .line 289
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 290
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 292
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p3, v1

    if-eqz p5, :cond_0

    .line 295
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p5, v2

    sub-float/2addr p4, p5

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p5

    int-to-float p5, p5

    add-float/2addr p4, p5

    iget p5, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterRadius:F

    mul-float/2addr p5, v2

    add-float/2addr p4, p5

    .line 298
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getActualHeight()I
    .locals 2

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mTopPadding:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mBottomPadding:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private getActualWidth()I
    .locals 1

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSidePadding:I

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method private getX(F)F
    .locals 1

    .line 233
    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMaxX:F

    div-float/2addr p1, v0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->getActualWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSidePadding:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    return p1
.end method

.method private getY(F)I
    .locals 2

    .line 237
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->getActualHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMaxY:F

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    float-to-int p1, v0

    iget p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mBottomPadding:I

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method addChartListener(Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ChartListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mChartListener:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ChartListener;

    return-void
.end method

.method addPath(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPaths:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalPaths:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->addPathAndUpdate(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method addSecondPath(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPaths:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalSecondPaths:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->addPathAndUpdate(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method calculateLocalPaths(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->getActualWidth()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 228
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->getX(F)F

    move-result v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float v0, v3

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->getY(F)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method clearPaths()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalSecondPaths:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method invalidateGraph()V
    .locals 0

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 242
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->getActualWidth()I

    move-result v0

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->getActualHeight()I

    move-result v1

    const/4 v2, 0x0

    .line 246
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 247
    iget v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDividerSize:I

    sub-int v3, v1, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMiddleDividerLoc:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v3, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 248
    iget v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDividerSize:I

    sub-int/2addr v1, v3

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 250
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalSecondPaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v6, v0

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    .line 255
    invoke-virtual {p1, v1, v5, v6, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 258
    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    cmpg-float v5, v1, v4

    if-gez v5, :cond_2

    int-to-float v5, v0

    .line 259
    iget v6, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleFactor:F

    mul-float/2addr v6, v5

    sub-float/2addr v6, v5

    neg-float v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    goto :goto_0

    .line 261
    :cond_2
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    .line 264
    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v0, v0

    .line 266
    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleFactor:F

    mul-float/2addr v1, v0

    .line 267
    iget v4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float v8, v4, v1

    .line 268
    iget v4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v4, v0

    div-float v9, v4, v1

    .line 269
    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMaxX:F

    sub-float v1, v9, v8

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iget-wide v4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mValueAxisTick:J

    div-long v10, v0, v4

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 272
    iput v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPathLabelAlign:I

    const/4 v0, 0x2

    .line 273
    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPathLabelAlign:I

    goto :goto_1

    .line 275
    :cond_3
    iput v2, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPathLabelAlign:I

    .line 277
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPaths:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalSecondPaths:Ljava/util/List;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondLinePaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondPathLabelAlign:I

    move-object v0, p0

    move-object v1, p1

    move-wide v2, v10

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->drawLineAndScatterAndLabel(Landroid/graphics/Canvas;JLjava/util/List;Ljava/util/List;Landroid/graphics/Paint;I)V

    .line 279
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPaths:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLocalPaths:Ljava/util/List;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLinePaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPathLabelAlign:I

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->drawLineAndScatterAndLabel(Landroid/graphics/Canvas;JLjava/util/List;Ljava/util/List;Landroid/graphics/Paint;I)V

    .line 281
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mChartListener:Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ChartListener;

    if-eqz v0, :cond_4

    .line 284
    invoke-interface {v0, v8, v9}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph$ChartListener;->domainRangeAdjusted(FF)V

    :cond_4
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 204
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->calculateLocalPaths()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 391
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 393
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

    goto/16 :goto_0

    .line 432
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    .line 434
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 435
    iget v4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mActivePointerId:I

    if-ne v3, v4, :cond_6

    if-nez v0, :cond_1

    move v1, v2

    .line 439
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLastTouchX:F

    .line 440
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLastTouchY:F

    .line 441
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mActivePointerId:I

    goto :goto_0

    .line 405
    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 406
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 407
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 409
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 411
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 412
    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLastTouchX:F

    sub-float v0, v1, v0

    .line 413
    iget v3, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLastTouchY:F

    sub-float v3, p1, v3

    .line 415
    iget v4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    add-float/2addr v4, v0

    iput v4, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosX:F

    .line 416
    iget v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosY:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mPosY:F

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 421
    :cond_3
    iput v1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLastTouchX:F

    .line 422
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLastTouchY:F

    goto :goto_0

    .line 427
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p1, -0x1

    .line 428
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mActivePointerId:I

    goto :goto_0

    .line 399
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLastTouchX:F

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLastTouchY:F

    .line 401
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mActivePointerId:I

    :cond_6
    :goto_0
    return v2
.end method

.method setMax(JJ)V
    .locals 0

    long-to-float p1, p1

    .line 149
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMaxX:F

    long-to-float p1, p3

    .line 150
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mMaxY:F

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->calculateLocalPaths()V

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method setPrimaryColor(I)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method setScatterDensity(F)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterDensity:F

    return-void
.end method

.method setScatterRadius(I)V
    .locals 1

    int-to-float p1, p1

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mScatterRadius:F

    return-void
.end method

.method setSecondaryColor(I)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mSecondLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method setShowValueLabel(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mShowValueLabel:Z

    return-void
.end method

.method setValueAxisOffset(J)V
    .locals 0

    .line 164
    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mValueAxisOffset:J

    return-void
.end method

.method setValueAxisTick(J)V
    .locals 0

    .line 168
    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/develop/history/view/HistoryGraph;->mValueAxisTick:J

    return-void
.end method
