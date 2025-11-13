.class public Lcom/android/systemui/screenshot/scroll/CropView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActivePointerId:I

.field public final mContainerBackgroundPaint:Landroid/graphics/Paint;

.field public mCrop:Landroid/graphics/RectF;

.field public mCropInteractionListener:Lcom/android/systemui/screenshot/scroll/CropView$CropInteractionListener;

.field public final mCropTouchMargin:F

.field public mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

.field public final mEntranceInterpolation:F

.field public final mExploreByTouchHelper:Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;

.field public mExtraBottomPadding:I

.field public mExtraTopPadding:I

.field public final mHandlePaint:Landroid/graphics/Paint;

.field public mImageWidth:I

.field public mMotionRange:Landroid/util/Range;

.field public mMovementStartValue:F

.field public final mShadePaint:Landroid/graphics/Paint;

.field public mStartingX:F

.field public mStartingY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/screenshot/scroll/CropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/RectF;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p3, v0, v0, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    sget-object p3, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    iput-object p3, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    iput v1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mEntranceInterpolation:F

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lcom/android/systemui/res/R$styleable;->CropView:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mShadePaint:Landroid/graphics/Paint;

    const/4 p3, 0x3

    const/16 v1, 0xff

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1, p3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mContainerBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mHandlePaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 p3, 0x2

    const/16 v0, 0x14

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41c00000    # 24.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    new-instance p1, Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;

    invoke-direct {p1, p0}, Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;-><init>(Lcom/android/systemui/screenshot/scroll/CropView;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mExploreByTouchHelper:Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public static isVertical(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)Z
    .locals 1

    sget-object v0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    if-ne p0, v0, :cond_0

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


# virtual methods
.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mExploreByTouchHelper:Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;

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

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mExploreByTouchHelper:Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v4, 0x3d

    const/4 v5, 0x0

    if-eq v1, v4, :cond_5

    const/16 v4, 0x42

    if-eq v1, v4, :cond_3

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x13

    if-eq v1, v6, :cond_1

    const/16 v6, 0x15

    if-eq v1, v6, :cond_0

    const/16 v6, 0x16

    if-eq v1, v6, :cond_2

    const/16 v4, 0x82

    goto :goto_0

    :cond_0
    const/16 v4, 0x11

    goto :goto_0

    :cond_1
    const/16 v4, 0x21

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    add-int/2addr v1, v3

    move v6, v2

    move v7, v6

    :goto_1
    if-ge v6, v1, :cond_8

    invoke-virtual {v0, v4, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/lit8 v6, v6, 0x1

    move v7, v3

    goto :goto_1

    :cond_3
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_7

    iget v1, v0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v4, -0x80000000

    if-eq v1, v4, :cond_4

    const/16 v4, 0x10

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;->onPerformActionForVirtualView(II)Z

    move-result v0

    :cond_4
    move v7, v3

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v3, v5}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    goto :goto_3

    :cond_7
    :goto_2
    move v7, v2

    :cond_8
    :goto_3
    if-nez v7, :cond_9

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    move v2, v3

    :cond_a
    return v2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final drawHorizontalHandle(Landroid/graphics/Canvas;FZ)V
    .locals 11

    invoke-virtual {p0, p2}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToHorizontalPixels(F)I

    move-result v0

    int-to-float v2, v0

    int-to-float p2, p2

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToHorizontalPixels(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v6, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mHandlePaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, p2

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToHorizontalPixels(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToHorizontalPixels(F)I

    move-result v2

    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    sub-float v3, v1, v0

    sub-float v4, p2, v0

    add-float v5, v1, v0

    add-float v6, p2, v0

    if-eqz p3, :cond_0

    const/high16 p2, 0x43340000    # 180.0f

    :goto_0
    move v7, p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    iget-object v10, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mHandlePaint:Landroid/graphics/Paint;

    const/high16 v8, 0x43340000    # 180.0f

    const/4 v9, 0x1

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawShade(Landroid/graphics/Canvas;FFFF)V
    .locals 6

    invoke-virtual {p0, p2}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToHorizontalPixels(F)I

    move-result p2

    int-to-float v1, p2

    invoke-virtual {p0, p3}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result p2

    int-to-float v2, p2

    invoke-virtual {p0, p4}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToHorizontalPixels(F)I

    move-result p2

    int-to-float v3, p2

    invoke-virtual {p0, p5}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result p2

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mShadePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final drawVerticalHandle(Landroid/graphics/Canvas;FZ)V
    .locals 12

    invoke-virtual {p0, p2}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToHorizontalPixels(F)I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mHandlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    sget-object v1, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/scroll/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v1

    sget-object v2, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/scroll/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v2

    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    sub-float v4, p2, v0

    int-to-float v1, v2

    sub-float v5, v1, v0

    add-float v6, p2, v0

    add-float v7, v1, v0

    if-eqz p3, :cond_0

    const/high16 p2, 0x42b40000    # 90.0f

    :goto_0
    move v8, p2

    goto :goto_1

    :cond_0
    const/high16 p2, 0x43870000    # 270.0f

    goto :goto_0

    :goto_1
    iget-object v11, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mHandlePaint:Landroid/graphics/Paint;

    const/high16 v9, 0x43340000    # 180.0f

    const/4 v10, 0x1

    move-object v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public final fractionToHorizontalPixels(F)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mImageWidth:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    add-float/2addr p1, v0

    float-to-int p0, p1

    return p0
.end method

.method public final fractionToVerticalPixels(F)I
    .locals 3

    iget v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mExtraTopPadding:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mExtraTopPadding:I

    sub-int/2addr v1, v2

    iget p0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mExtraBottomPadding:I

    sub-int/2addr v1, p0

    int-to-float p0, v1

    mul-float/2addr p1, p0

    add-float/2addr p1, v0

    float-to-int p0, p1

    return p0
.end method

.method public final getAllowedValues(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)Landroid/util/Range;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    move p1, v1

    move v1, v2

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    sget-object v1, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->LEFT:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/scroll/CropView;->pixelDistanceToFraction(FLcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)F

    move-result p0

    :goto_0
    add-float v1, p0, p1

    move p1, v2

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    sget-object v2, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->RIGHT:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/screenshot/scroll/CropView;->pixelDistanceToFraction(FLcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)F

    move-result p0

    :goto_1
    sub-float/2addr p1, p0

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    sget-object v1, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/screenshot/scroll/CropView;->pixelDistanceToFraction(FLcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)F

    move-result p0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    sget-object v2, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/screenshot/scroll/CropView;->pixelDistanceToFraction(FLcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)F

    move-result p0

    goto :goto_1

    :goto_2
    cmpl-float p0, v1, p1

    if-ltz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getAllowedValues computed an invalid range ["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CropView"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move p1, v1

    :cond_4
    new-instance p0, Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0
.end method

.method public final getBoundaryPosition(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)F
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->right:F

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->left:F

    return p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    return p0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->top:F

    return p0
.end method

.method public final getCropBoundaries(II)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    int-to-float p2, p2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, p1

    float-to-int p1, v3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p0, p2

    float-to-int p0, p0

    invoke-direct {v0, v1, v2, p1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mEntranceInterpolation:F

    const/4 v6, 0x0

    invoke-static {v0, v6, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v7

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mEntranceInterpolation:F

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v0, v8, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v9

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/screenshot/scroll/CropView;->drawShade(Landroid/graphics/Canvas;FFFF)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/screenshot/scroll/CropView;->drawShade(Landroid/graphics/Canvas;FFFF)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/screenshot/scroll/CropView;->drawShade(Landroid/graphics/Canvas;FFFF)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/screenshot/scroll/CropView;->drawShade(Landroid/graphics/Canvas;FFFF)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToHorizontalPixels(F)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0, v6}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0, v8}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToHorizontalPixels(F)I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0, v7}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mContainerBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToHorizontalPixels(F)I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0, v9}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0, v8}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToHorizontalPixels(F)I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0, v8}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mContainerBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mHandlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mEntranceInterpolation:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/screenshot/scroll/CropView;->drawHorizontalHandle(Landroid/graphics/Canvas;FZ)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/screenshot/scroll/CropView;->drawHorizontalHandle(Landroid/graphics/Canvas;FZ)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/screenshot/scroll/CropView;->drawVerticalHandle(Landroid/graphics/Canvas;FZ)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/screenshot/scroll/CropView;->drawVerticalHandle(Landroid/graphics/Canvas;FZ)V

    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mExploreByTouchHelper:Lcom/android/systemui/screenshot/scroll/CropView$AccessibilityHelper;

    iget v0, p0, Landroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p2, p3}, Landroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    :cond_1
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    const-string v0, "onRestoreInstanceState"

    const-string v1, "CropView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/android/systemui/screenshot/scroll/CropView$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "restoring mCrop="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/systemui/screenshot/scroll/CropView$SavedState;->mCrop:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (was "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/systemui/screenshot/scroll/CropView$SavedState;->mCrop:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    const-string v0, "onSaveInstanceState"

    const-string v1, "CropView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/screenshot/scroll/CropView$SavedState;

    invoke-direct {v2, v0}, Lcom/android/systemui/screenshot/scroll/CropView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iput-object v0, v2, Lcom/android/systemui/screenshot/scroll/CropView$SavedState;->mCrop:Landroid/graphics/RectF;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saving mCrop="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    if-eq v2, v4, :cond_5

    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    const/4 v0, 0x3

    if-eq v2, v0, :cond_5

    const/4 v0, 0x5

    if-eq v2, v0, :cond_1

    const/4 v0, 0x6

    if-eq v2, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    sget-object v1, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/screenshot/scroll/CropView;->updateListener(FI)V

    return v4

    :cond_1
    iget v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    sget-object v1, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/screenshot/scroll/CropView;->updateListener(FI)V

    return v4

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    sget-object v2, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    invoke-static {v2}, Lcom/android/systemui/screenshot/scroll/CropView;->isVertical(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mStartingY:F

    :goto_0
    sub-float/2addr v2, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mStartingX:F

    goto :goto_0

    :goto_1
    float-to-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/screenshot/scroll/CropView;->pixelDistanceToFraction(FLcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    iget-object v5, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mMotionRange:Landroid/util/Range;

    iget v6, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mMovementStartValue:F

    add-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/screenshot/scroll/CropView;->setBoundaryPosition(FLcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/screenshot/scroll/CropView;->updateListener(FI)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return v4

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    sget-object v1, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/screenshot/scroll/CropView;->updateListener(FI)V

    return v4

    :cond_6
    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToHorizontalPixels(F)I

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v5}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToHorizontalPixels(F)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    int-to-float v0, v0

    sub-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_8

    sget-object v0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->TOP:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    int-to-float v1, v1

    sub-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    sget-object v0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->BOTTOM:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpl-float v0, v6, v0

    if-gtz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    sget-object v0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->LEFT:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v1, v5

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropTouchMargin:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    sget-object v0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->RIGHT:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    goto :goto_3

    :cond_c
    sget-object v0, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    :goto_3
    iput-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    sget-object v1, Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;->NONE:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    if-eq v0, v1, :cond_d

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mStartingY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mStartingX:F

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/scroll/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mMovementStartValue:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/screenshot/scroll/CropView;->updateListener(FI)V

    iget-object p1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/scroll/CropView;->getAllowedValues(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mMotionRange:Landroid/util/Range;

    :cond_d
    return v4
.end method

.method public final pixelDistanceToFraction(FLcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)F
    .locals 1

    invoke-static {p2}, Lcom/android/systemui/screenshot/scroll/CropView;->isVertical(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    iget v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mExtraTopPadding:I

    sub-int/2addr p2, v0

    iget p0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mExtraBottomPadding:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    :goto_0
    div-float/2addr p1, p0

    return p1

    :cond_0
    iget p0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mImageWidth:I

    int-to-float p0, p0

    goto :goto_0
.end method

.method public final setBoundaryPosition(FLcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBoundaryPosition: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CropView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/systemui/screenshot/scroll/CropView;->getAllowedValues(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)Landroid/util/Range;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iput p1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iput p1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iput p1, p2, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_4
    const-string p1, "No boundary selected"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Updated mCrop: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateListener(FI)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropInteractionListener:Lcom/android/systemui/screenshot/scroll/CropView$CropInteractionListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    invoke-static {v0}, Lcom/android/systemui/screenshot/scroll/CropView;->isVertical(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/scroll/CropView;->getBoundaryPosition(Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;)F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p2, :cond_7

    const/4 v5, 0x1

    if-eq p2, v5, :cond_6

    if-eq p2, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropInteractionListener:Lcom/android/systemui/screenshot/scroll/CropView$CropInteractionListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->left:F

    check-cast p2, Lcom/android/systemui/screenshot/scroll/MagnifierView;

    invoke-virtual {p2}, Lcom/android/systemui/screenshot/scroll/MagnifierView;->getParentWidth()I

    move-result p0

    div-int/2addr p0, v4

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    move p0, v5

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/screenshot/scroll/MagnifierView;->getParentWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    :goto_1
    invoke-virtual {p2}, Lcom/android/systemui/screenshot/scroll/MagnifierView;->getParentWidth()I

    move-result v6

    div-int/2addr v6, v4

    int-to-float v6, v6

    sub-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p2}, Lcom/android/systemui/screenshot/scroll/MagnifierView;->getParentWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v6, v7

    cmpg-float p1, p1, v6

    if-gez p1, :cond_3

    move p1, v5

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    invoke-virtual {p2}, Lcom/android/systemui/screenshot/scroll/MagnifierView;->getParentWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/2addr v7, v4

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    move v2, v5

    :cond_4
    if-nez p1, :cond_5

    if-eq v2, p0, :cond_5

    iget-object p0, p2, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

    if-nez p0, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    iput-object p0, p2, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object p1, p2, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mTranslationAnimatorListener:Lcom/android/systemui/screenshot/scroll/MagnifierView$1;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p0, p2, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    iput v0, p2, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mLastCropPosition:F

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v4

    sub-int/2addr v1, p0

    int-to-float p0, v1

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    goto/16 :goto_4

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropInteractionListener:Lcom/android/systemui/screenshot/scroll/CropView$CropInteractionListener;

    check-cast p0, Lcom/android/systemui/screenshot/scroll/MagnifierView;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/scroll/MagnifierView;->getParentWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/2addr p2, v4

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/screenshot/scroll/MagnifierView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/scroll/MagnifierView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/scroll/MagnifierView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_4

    :cond_7
    iget-object p2, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCropInteractionListener:Lcom/android/systemui/screenshot/scroll/CropView$CropInteractionListener;

    iget-object v5, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCurrentDraggingBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/scroll/CropView;->fractionToVerticalPixels(F)I

    move-result v6

    iget-object p0, p0, Lcom/android/systemui/screenshot/scroll/CropView;->mCrop:Landroid/graphics/RectF;

    iget v7, p0, Landroid/graphics/RectF;->left:F

    iget p0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v7, p0

    check-cast p2, Lcom/android/systemui/screenshot/scroll/MagnifierView;

    iput-object v5, p2, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mCropBoundary:Lcom/android/systemui/screenshot/scroll/CropView$CropBoundary;

    iput v7, p2, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mLastCenter:F

    invoke-virtual {p2}, Lcom/android/systemui/screenshot/scroll/MagnifierView;->getParentWidth()I

    move-result p0

    div-int/2addr p0, v4

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_8

    move p0, v3

    goto :goto_3

    :cond_8
    invoke-virtual {p2}, Lcom/android/systemui/screenshot/scroll/MagnifierView;->getParentWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-float p0, p0

    :goto_3
    iput v0, p2, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mLastCropPosition:F

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v4

    sub-int/2addr v6, p1

    int-to-float p1, v6

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v4

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, v4

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2}, Lcom/android/systemui/screenshot/scroll/MagnifierView;->getParentWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/2addr p1, v4

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    iput-object p0, p2, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object p1, p2, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mTranslationAnimatorListener:Lcom/android/systemui/screenshot/scroll/MagnifierView$1;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p0, p2, Lcom/android/systemui/screenshot/scroll/MagnifierView;->mTranslationAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_9
    :goto_4
    return-void
.end method
