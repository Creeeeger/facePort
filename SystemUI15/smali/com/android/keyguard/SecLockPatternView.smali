.class public Lcom/android/keyguard/SecLockPatternView;
.super Lcom/android/internal/widget/LockPatternView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mBitmapError:Landroid/graphics/Bitmap;

.field public mBitmapHeight:I

.field public mBitmapRegular:Landroid/graphics/Bitmap;

.field public mBitmapSuccess:Landroid/graphics/Bitmap;

.field public mBitmapWidth:I

.field public final mCircleMatrix:Landroid/graphics/Matrix;

.field public mDecoPatternEnabled:Z

.field public mIsWhiteWp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SecLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iput-boolean p1, p0, Lcom/android/keyguard/SecLockPatternView;->mIsWhiteWp:Z

    return-void
.end method


# virtual methods
.method public final addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    return-void
.end method

.method public final getScaledBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f071716

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    if-nez v0, :cond_0

    const-string p0, "getScaledBitmapFor() return null - bitmap is null resId = "

    const-string v0, "SecLockPatternView"

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    invoke-static {v0, p0, p0, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final handleActionMove(Landroid/view/MotionEvent;)V
    .locals 13

    iget-boolean v0, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v1, 0x1

    if-ge v2, v4, :cond_8

    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    :goto_2
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    if-ne v7, v8, :cond_3

    iput-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    :cond_3
    iget v9, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    sub-float v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v9, v9, v11

    if-gtz v9, :cond_4

    cmpl-float v9, v10, v11

    if-lez v9, :cond_5

    :cond_4
    move v3, v8

    :cond_5
    iget-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v8, :cond_7

    if-lez v7, :cond_7

    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v8

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v7

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v9

    sub-float/2addr v9, v0

    const/high16 v10, 0x41a00000    # 20.0f

    sub-float/2addr v9, v10

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v4, v0

    add-float/2addr v4, v10

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    sub-float/2addr v8, v0

    sub-float/2addr v8, v10

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v5, v0

    add-float/2addr v5, v10

    if-eqz v6, :cond_6

    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v7, v10

    iget v11, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v11, v10

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v6

    sub-float v12, v10, v7

    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    add-float/2addr v10, v7

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v7, v6, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    add-float/2addr v6, v11

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :cond_6
    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v6, v7, v8, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    if-eqz v3, :cond_9

    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    if-nez v2, :cond_0

    invoke-super/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_a

    :cond_0
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iget-object v5, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_3

    add-int/lit8 v5, v3, 0x1

    mul-int/lit16 v5, v5, 0x2bc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v9, v11

    long-to-int v6, v9

    rem-int/2addr v6, v5

    div-int/lit16 v5, v6, 0x2bc

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v5, :cond_1

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v11

    aget-object v11, v4, v11

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v10

    aput-boolean v7, v11, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    if-lez v5, :cond_2

    if-ge v5, v3, :cond_2

    rem-int/lit16 v6, v6, 0x2bc

    int-to-float v6, v6

    const/high16 v9, 0x442f0000    # 700.0f

    div-float/2addr v6, v9

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v9

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v11

    sub-float/2addr v11, v10

    mul-float/2addr v11, v6

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v5

    sub-float/2addr v5, v9

    mul-float/2addr v5, v6

    add-float/2addr v10, v11

    iput v10, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    add-float/2addr v9, v5

    iput v9, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    :cond_3
    iget v5, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    iget v6, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    const v9, 0x3d4ccccd    # 0.05f

    mul-float/2addr v9, v5

    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v9, 0x80

    iget-object v10, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v9, v0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    iget-boolean v10, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    xor-int/2addr v10, v7

    if-eqz v10, :cond_5

    iget-boolean v11, v0, Lcom/android/keyguard/SecLockPatternView;->mIsWhiteWp:Z

    const/4 v12, 0x0

    if-eqz v11, :cond_4

    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060a75

    invoke-virtual {v13, v14, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_4
    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060a74

    invoke-virtual {v13, v14, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    :cond_5
    :goto_1
    if-eqz v10, :cond_b

    const/4 v10, 0x0

    move v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v12, v3, :cond_9

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v15

    aget-object v15, v4, v15

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v16

    aget-boolean v15, v15, v16

    if-nez v15, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v13

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v15

    invoke-virtual {v0, v15}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    if-eqz v12, :cond_8

    iget-object v7, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v17

    aget-object v7, v7, v17

    invoke-virtual {v14}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v14

    aget-object v7, v7, v14

    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget v10, v7, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    const/4 v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-eqz v10, :cond_7

    iget v10, v7, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    invoke-static {v10, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-eqz v10, :cond_7

    iget v10, v7, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    iget v7, v7, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    invoke-virtual {v9, v10, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    :cond_7
    invoke-virtual {v9, v13, v15}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    iget-object v7, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_8
    add-int/lit8 v12, v12, 0x1

    move v10, v13

    move v11, v15

    const/4 v7, 0x1

    const/4 v13, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    iget-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v2, v3, :cond_b

    :cond_a
    if-eqz v13, :cond_b

    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iget v3, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iget v3, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {v9, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_b
    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    iget v3, v0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    const/4 v7, 0x0

    :goto_5
    const/4 v9, 0x3

    if-ge v7, v9, :cond_15

    int-to-float v10, v2

    int-to-float v11, v7

    mul-float/2addr v11, v6

    add-float/2addr v11, v10

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_14

    int-to-float v12, v3

    int-to-float v13, v10

    mul-float/2addr v13, v5

    add-float/2addr v13, v12

    float-to-int v12, v13

    float-to-int v13, v11

    aget-object v14, v4, v7

    aget-boolean v14, v14, v10

    if-eqz v14, :cond_11

    iget-boolean v14, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-eqz v14, :cond_c

    goto :goto_8

    :cond_c
    iget-boolean v14, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v14, :cond_d

    iget-object v14, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    goto :goto_9

    :cond_d
    iget-object v14, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v15, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v14, v15, :cond_e

    iget-object v14, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    if-nez v14, :cond_12

    iget-object v14, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    goto :goto_9

    :cond_e
    sget-object v15, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v14, v15, :cond_10

    sget-object v15, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v14, v15, :cond_f

    goto :goto_7

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unknown display mode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_7
    iget-object v14, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    goto :goto_9

    :cond_11
    :goto_8
    iget-object v14, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    :cond_12
    :goto_9
    iget v15, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    iget v8, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    iget v9, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v18, v2

    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    int-to-float v15, v15

    sub-float v19, v9, v15

    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v21, v3

    div-float v3, v19, v20

    float-to-int v3, v3

    int-to-float v8, v8

    sub-float/2addr v2, v8

    div-float v2, v2, v20

    float-to-int v2, v2

    div-float/2addr v9, v15

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget v15, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    iget v8, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    int-to-float v8, v8

    div-float/2addr v15, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v15, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget-object v15, v0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int/2addr v12, v3

    int-to-float v3, v12

    add-int/2addr v13, v2

    int-to-float v2, v13

    invoke-virtual {v15, v3, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v3, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    int-to-float v3, v3

    div-float v3, v3, v20

    iget v12, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    int-to-float v12, v12

    div-float v12, v12, v20

    invoke-virtual {v2, v3, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v9, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v3, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float v3, v3, v20

    iget v8, v0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    neg-int v8, v8

    int-to-float v8, v8

    div-float v8, v8, v20

    invoke-virtual {v2, v3, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-eqz v14, :cond_13

    iget-object v2, v0, Lcom/android/keyguard/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_13
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v18

    move/from16 v3, v21

    const/4 v9, 0x3

    goto/16 :goto_6

    :cond_14
    move/from16 v18, v2

    move/from16 v21, v3

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    :cond_15
    :goto_a
    return-void
.end method

.method public final updateViewStyle(IJ)V
    .locals 11

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    const-string v1, "background"

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v5, 0x400

    and-long/2addr v5, p2

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    move-result v5

    if-eqz v5, :cond_a

    const v5, 0x7f080b94

    const v6, 0x7f080b92

    const/4 v7, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {p0, v6}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p0, v5}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v9

    new-array v10, v7, [Landroid/graphics/Bitmap;

    aput-object v8, v10, v4

    aput-object v9, v10, v3

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v10, v8

    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move v8, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v4

    :goto_3
    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    const v6, 0x7f080b91

    :goto_4
    invoke-virtual {p0, v6}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_5

    const v6, 0x7f080b96

    goto :goto_5

    :cond_5
    const v6, 0x7f080b95

    :goto_5
    invoke-virtual {p0, v6}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    const v5, 0x7f080b93

    :goto_6
    invoke-virtual {p0, v5}, Lcom/android/keyguard/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapSuccess:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapRegular:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    iget-object v8, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    if-nez v8, :cond_7

    new-array v7, v7, [Landroid/graphics/Bitmap;

    aput-object v6, v7, v4

    aput-object v5, v7, v3

    goto :goto_7

    :cond_7
    const/4 v8, 0x3

    new-array v8, v8, [Landroid/graphics/Bitmap;

    aput-object v6, v8, v4

    aput-object v5, v8, v3

    iget-object v5, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapError:Landroid/graphics/Bitmap;

    aput-object v5, v8, v7

    move-object v7, v8

    :goto_7
    array-length v5, v7

    move v6, v4

    :goto_8
    if-ge v6, v5, :cond_9

    aget-object v8, v7, v6

    if-nez v8, :cond_8

    goto :goto_9

    :cond_8
    iget v9, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapWidth:I

    iget v9, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/android/keyguard/SecLockPatternView;->mBitmapHeight:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_9
    move v5, v3

    goto :goto_a

    :cond_a
    :goto_9
    move v5, v4

    :goto_a
    iput-boolean v5, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    const-string/jumbo v5, "updateViewStyle whiteWp = "

    const-string v6, ", open theme enabled = "

    invoke-static {v5, v6, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    const-string v7, ", isSavingMode = "

    const-string v8, ", isColorTheme = "

    invoke-static {v5, v6, v7, v2, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", themeColor = #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", updateFlag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getChangeFlagsString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SecLockPatternView"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/android/keyguard/SecLockPatternView;->mDecoPatternEnabled:Z

    if-eqz p2, :cond_b

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/LockPatternView;->setFadePattern(Z)V

    iput-boolean v1, p0, Lcom/android/keyguard/SecLockPatternView;->mIsWhiteWp:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    goto :goto_b

    :cond_b
    if-eqz v0, :cond_c

    if-nez v2, :cond_c

    invoke-virtual {p0, p1, p1, p1}, Lcom/android/internal/widget/LockPatternView;->setColors(III)V

    goto :goto_b

    :cond_c
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LockPatternView;->setFadePattern(Z)V

    invoke-super {p0, v1}, Lcom/android/internal/widget/LockPatternView;->updateViewStyle(Z)V

    :goto_b
    return-void
.end method
