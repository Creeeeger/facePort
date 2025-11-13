.class Landroid/view/RoundScrollbarRenderer;
.super Ljava/lang/Object;
.source "RoundScrollbarRenderer.java"


# static fields
.field private static final greylist-max-o DEFAULT_THUMB_COLOR:I = -0x1

.field private static final greylist-max-o DEFAULT_TRACK_COLOR:I = 0x4cffffff

.field private static final blacklist MAX_SCROLLBAR_ANGLE_SWIPE:F = 26.3f

.field private static final blacklist MIN_SCROLLBAR_ANGLE_SWIPE:F = 3.1f

.field private static final blacklist OUTER_PADDING_DP:F = 2.0f

.field private static final blacklist RESIZING_RATE:F = 0.8f

.field private static final blacklist RESIZING_THRESHOLD_PX:I = 0x14

.field private static final blacklist SCROLLBAR_ANGLE_RANGE:F = 28.8f

.field private static final blacklist THUMB_WIDTH_DP:F = 4.0f


# instance fields
.field private blacklist mCurrentScrollDiff:F

.field private final blacklist mMaskThickness:I

.field private blacklist mMaxScrollDiff:F

.field private final greylist-max-o mParent:Landroid/view/View;

.field private blacklist mPreviousCurrentScroll:F

.field private blacklist mPreviousMaxScroll:F

.field private final greylist-max-o mRect:Landroid/graphics/RectF;

.field private final greylist-max-o mThumbPaint:Landroid/graphics/Paint;

.field private final greylist-max-o mTrackPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mPreviousMaxScroll:F

    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mPreviousCurrentScroll:F

    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mMaskThickness:I

    return-void
.end method

.method private static greylist-max-o applyAlpha(IF)I
    .locals 4

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method private static greylist-max-o clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method private blacklist dpToPx(F)F
    .locals 2

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private greylist-max-o setThumbColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o setTrackColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist drawRoundScrollbars(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Z)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v7, v5, v3

    const/4 v8, -0x1

    if-gtz v7, :cond_2

    iget-object v7, v0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v7

    if-nez v7, :cond_1

    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    cmpg-float v7, v4, v5

    if-gtz v7, :cond_3

    return-void

    :cond_3
    :goto_0
    iget v7, v0, Landroid/view/RoundScrollbarRenderer;->mPreviousMaxScroll:F

    sub-float v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v9, 0x41a00000    # 20.0f

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    iget v7, v0, Landroid/view/RoundScrollbarRenderer;->mPreviousMaxScroll:F

    cmpl-float v7, v7, v3

    if-eqz v7, :cond_4

    iget v7, v0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    iget v10, v0, Landroid/view/RoundScrollbarRenderer;->mPreviousMaxScroll:F

    sub-float v10, v4, v10

    add-float/2addr v7, v10

    iput v7, v0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    iget v7, v0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    iget v10, v0, Landroid/view/RoundScrollbarRenderer;->mPreviousCurrentScroll:F

    sub-float v10, v6, v10

    add-float/2addr v7, v10

    iput v7, v0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    :cond_4
    iput v4, v0, Landroid/view/RoundScrollbarRenderer;->mPreviousMaxScroll:F

    iput v6, v0, Landroid/view/RoundScrollbarRenderer;->mPreviousCurrentScroll:F

    iget v7, v0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_6

    iget v7, v0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v9

    if-lez v7, :cond_5

    goto :goto_1

    :cond_5
    iput v3, v0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    iput v3, v0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    goto :goto_2

    :cond_6
    :goto_1
    iget v7, v0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v9

    iput v7, v0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    iget v7, v0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    mul-float/2addr v7, v9

    iput v7, v0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    iget v7, v0, Landroid/view/RoundScrollbarRenderer;->mMaxScrollDiff:F

    sub-float/2addr v4, v7

    iget v7, v0, Landroid/view/RoundScrollbarRenderer;->mCurrentScrollDiff:F

    sub-float/2addr v6, v7

    :goto_2
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v7, v5

    const/high16 v9, 0x40800000    # 4.0f

    invoke-direct {v0, v9}, Landroid/view/RoundScrollbarRenderer;->dpToPx(F)F

    move-result v9

    iget-object v10, v0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v10, v0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {v8, v1}, Landroid/view/RoundScrollbarRenderer;->applyAlpha(IF)I

    move-result v8

    invoke-direct {v0, v8}, Landroid/view/RoundScrollbarRenderer;->setThumbColor(I)V

    const v8, 0x4cffffff    # 1.3421772E8f

    invoke-static {v8, v1}, Landroid/view/RoundScrollbarRenderer;->applyAlpha(IF)I

    move-result v8

    invoke-direct {v0, v8}, Landroid/view/RoundScrollbarRenderer;->setTrackColor(I)V

    div-float v8, v7, v4

    const v10, 0x41e66666    # 28.8f

    mul-float/2addr v8, v10

    const v11, 0x40466666    # 3.1f

    const v12, 0x41d26666    # 26.3f

    invoke-static {v8, v11, v12}, Landroid/view/RoundScrollbarRenderer;->clamp(FFF)F

    move-result v8

    sub-float/2addr v10, v8

    mul-float/2addr v10, v3

    sub-float v11, v4, v7

    div-float/2addr v10, v11

    const v11, 0x41666666    # 14.4f

    sub-float/2addr v10, v11

    const v12, -0x3e99999a    # -14.4f

    sub-float/2addr v11, v8

    invoke-static {v10, v12, v11}, Landroid/view/RoundScrollbarRenderer;->clamp(FFF)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v9, v11

    iget v12, v0, Landroid/view/RoundScrollbarRenderer;->mMaskThickness:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    iget-object v12, v0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    iget v13, v2, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    add-float/2addr v13, v11

    iget v14, v2, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    add-float/2addr v14, v11

    iget v15, v2, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    sub-float/2addr v15, v11

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v11

    invoke-virtual {v12, v13, v14, v15, v1}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz p4, :cond_7

    iget-object v13, v0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    const/16 v16, 0x0

    iget-object v1, v0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    const v14, 0x43426666    # 194.4f

    const v15, -0x3e19999a    # -28.8f

    move-object/from16 v12, p1

    move-object/from16 v17, v1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    const/high16 v12, 0x43340000    # 180.0f

    sub-float v19, v12, v10

    neg-float v12, v8

    const/16 v21, 0x0

    iget-object v13, v0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    move-object/from16 v17, p1

    move-object/from16 v18, v1

    move/from16 v20, v12

    move-object/from16 v22, v13

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_7
    iget-object v1, v0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    const/16 v26, 0x0

    iget-object v12, v0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    const v24, -0x3e99999a    # -14.4f

    const v25, 0x41e66666    # 28.8f

    move-object/from16 v22, p1

    move-object/from16 v23, v1

    move-object/from16 v27, v12

    invoke-virtual/range {v22 .. v27}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v14, v0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    const/16 v17, 0x0

    iget-object v1, v0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move v15, v10

    move/from16 v16, v8

    move-object/from16 v18, v1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_3
    return-void
.end method

.method blacklist getRoundVerticalScrollBarBounds(Landroid/graphics/Rect;)V
    .locals 5

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Landroid/view/RoundScrollbarRenderer;->dpToPx(F)F

    move-result v0

    iget-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mRight:I

    iget-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v2, v2, Landroid/view/View;->mBottom:I

    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v3, v3, Landroid/view/View;->mTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v3, v3, Landroid/view/View;->mScrollX:I

    float-to-int v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v3, v3, Landroid/view/View;->mScrollY:I

    float-to-int v4, v0

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v3, v3, Landroid/view/View;->mScrollX:I

    add-int/2addr v3, v1

    float-to-int v4, v0

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    iget v3, v3, Landroid/view/View;->mScrollY:I

    add-int/2addr v3, v2

    float-to-int v4, v0

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
