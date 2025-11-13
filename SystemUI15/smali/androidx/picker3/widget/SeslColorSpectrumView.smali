.class Landroidx/picker3/widget/SeslColorSpectrumView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final HUE_COLORS:[I

.field public final ROUNDED_CORNER_RADIUS_IN_Px:I

.field public final cursorDrawable:Landroid/graphics/drawable/Drawable;

.field public final mBackgroundPaint:Landroid/graphics/Paint;

.field public mCurrentXPos:F

.field public final mCursorPaint:Landroid/graphics/Paint;

.field public final mCursorPaintSize:I

.field public mCursorPosX:F

.field public mCursorPosY:F

.field public mFromSwatchTouch:Z

.field public mHuePaint:Landroid/graphics/Paint;

.field public mListener:Landroidx/picker3/widget/SeslColorPicker$6;

.field public final mResources:Landroid/content/res/Resources;

.field public mSaturationPaint:Landroid/graphics/Paint;

.field public mSaturationProgress:I

.field public mSelectedVirtualViewId:I

.field public final mSpectrumRect:Landroid/graphics/Rect;

.field public final mSpectrumRectBackground:Landroid/graphics/Rect;

.field public final mStartMargin:I

.field public final mStrokePaint:Landroid/graphics/Paint;

.field public final mTopMargin:I

.field public final mTouchHelper:Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;

.field public final mVirtualItemHeight:I

.field public final mVirtualItemWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x6

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->HUE_COLORS:[I

    const/4 p2, 0x0

    iput p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071308

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071306

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071307

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTopMargin:I

    iput-boolean p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mFromSwatchTouch:Z

    const/4 v3, -0x1

    iput v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSelectedVirtualViewId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mResources:Landroid/content/res/Resources;

    new-instance v3, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;

    invoke-direct {v3, p0, p0}, Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;-><init>(Landroidx/picker3/widget/SeslColorSpectrumView;Landroid/view/View;)V

    iput-object v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTouchHelper:Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;

    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    const v3, 0x7f071189

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f071187

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const/high16 v6, 0x41c80000    # 25.0f

    div-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mVirtualItemHeight:I

    const v4, 0x7f071191

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    const/high16 v6, 0x41f00000    # 30.0f

    div-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mVirtualItemWidth:I

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    const v2, 0x7f07118a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f071188

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, p2, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRectBackground:Landroid/graphics/Rect;

    const p2, 0x7f0711db

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaintSize:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const p2, 0x7f0711da

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const/4 p2, 0x4

    int-to-float p2, p2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStrokePaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStrokePaint:Landroid/graphics/Paint;

    const v1, 0x7f06070c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const p2, 0x7f081113

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->cursorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mBackgroundPaint:Landroid/graphics/Paint;

    const p2, 0x7f060711

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :array_0
    .array-data 4
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method


# virtual methods
.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTouchHelper:Landroidx/picker3/widget/SeslColorSpectrumView$SeslColorSpectrumViewTouchHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRectBackground:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    int-to-float v6, v1

    int-to-float v7, v1

    iget-object v8, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v11, v3

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v12, v3

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v13, v2

    int-to-float v14, v3

    iget-object v15, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->HUE_COLORS:[I

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v16, 0x0

    move-object v10, v1

    move-object/from16 v17, v23

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v2, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mHuePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    const/16 v21, -0x1

    const/16 v22, 0x0

    move-object/from16 v16, v1

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v3

    move/from16 v20, v2

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSaturationPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    int-to-float v6, v1

    int-to-float v7, v1

    iget-object v8, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mHuePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    int-to-float v6, v1

    int-to-float v7, v1

    iget-object v8, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSaturationPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v1

    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->ROUNDED_CORNER_RADIUS_IN_Px:I

    int-to-float v6, v1

    int-to-float v7, v1

    iget-object v8, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    iget-object v2, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    int-to-float v1, v3

    iput v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    :cond_0
    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v3

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    int-to-float v1, v3

    iput v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    :cond_1
    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    add-int v5, v3, v4

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    add-int/2addr v3, v4

    int-to-float v1, v3

    iput v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    :cond_2
    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTopMargin:I

    add-int v4, v2, v3

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    add-int/2addr v2, v3

    int-to-float v1, v2

    iput v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    :cond_3
    iget v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    iget v2, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    iget v3, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaintSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v4, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->cursorDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    float-to-int v3, v2

    iget v4, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaintSize:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    iget v5, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    float-to-int v6, v5

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    float-to-int v2, v2

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v2

    float-to-int v2, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    invoke-virtual {v1, v3, v6, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v0, Landroidx/picker3/widget/SeslColorSpectrumView;->cursorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCurrentXPos:F

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCurrentXPos:F

    :cond_3
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTopMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_4

    iget-object v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    :cond_4
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    :cond_5
    iget-object v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTopMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_6

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTopMargin:I

    add-int/2addr p1, v2

    int-to-float p1, p1

    :cond_6
    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-gez v3, :cond_7

    move v0, v2

    :cond_7
    cmpg-float v3, p1, v2

    if-gez v3, :cond_8

    move p1, v2

    :cond_8
    iput v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/high16 p1, 0x43960000    # 300.0f

    mul-float/2addr v0, p1

    iget p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    iget-object v3, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr p1, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    cmpg-float v3, v0, v2

    if-gez v3, :cond_9

    goto :goto_1

    :cond_9
    move v2, v0

    :goto_1
    iget-object v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mListener:Landroidx/picker3/widget/SeslColorPicker$6;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2, p1}, Landroidx/picker3/widget/SeslColorPicker$6;->onSpectrumColorChanged(FF)V

    goto :goto_2

    :cond_a
    const-string p1, "SeslColorSpectrumView"

    const-string v0, "Listener is not set."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    iget v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mVirtualItemWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    iget v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mVirtualItemHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1e

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSelectedVirtualViewId:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method

.method public final setColor(I)V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%08x"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f131198

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mFromSwatchTouch:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v5, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    iput v5, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput v5, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    iget p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCurrentXPos:F

    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    aget v2, v0, v3

    mul-float/2addr p1, v2

    const/high16 v2, 0x43960000    # 300.0f

    div-float/2addr p1, v2

    add-float/2addr p1, v1

    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    aget v2, v0, v4

    mul-float/2addr p1, v2

    add-float/2addr p1, v1

    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    iget p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mStartMargin:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    :cond_2
    iget p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    iget-object v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTopMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    iget-object p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mSpectrumRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mTopMargin:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateCursorPosition() HSV["

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v1, v0, v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v4

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "] mCursorPosX="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosX:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mCursorPosY="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPosY:F

    const-string v1, "SeslColorSpectrumView"

    invoke-static {p1, v0, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateCursorColor(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateCursorColor color "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeslColorSpectrumView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%08x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13114d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f131198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iget-object p0, p0, Landroidx/picker3/widget/SeslColorSpectrumView;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method
