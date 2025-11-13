.class public Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

.field public mArrowCornerRadius:I

.field public mArrowHeight:I

.field public mArrowMargin:I

.field public mArrowWidth:I

.field public final mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public mFontSize:I

.field public mIsShowing:Z

.field public mScreenWidth:I

.field public final mTextView:Landroid/widget/TextView;

.field public mTextViewCornerRadius:I

.field public mTextViewMargin:I

.field public mTextViewPadding:I

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mWindowManager:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/16 v3, 0x7e8

    const/4 v1, -0x2

    const v4, 0x40008

    const/4 v5, -0x3

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const p2, 0x1030003

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const p2, 0x800033

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string p2, "BaseTooltipView"

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d035a

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0d10

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getTextWidthWith(Landroid/graphics/Rect;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mScreenWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowWidth:I

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowMargin:I

    sub-int/2addr v0, p1

    iget p1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextViewMargin:I

    sub-int/2addr v0, p1

    const/high16 p1, -0x80000000

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->measure(II)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public final getWindowWidthWith(Landroid/graphics/Rect;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->getTextWidthWith(Landroid/graphics/Rect;)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowWidth:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowMargin:I

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070053

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public hide()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mIsShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mIsShowing:Z

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final isAnchorViewOnLeft(Landroid/graphics/Rect;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mScreenWidth:I

    div-int/lit8 p0, p0, 0x2

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->updateTooltipView()V

    iget-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->hide()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->hide()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final updateTooltipView()V
    .locals 11

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mScreenWidth:I

    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowWidth:I

    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowHeight:I

    const v1, 0x7f07004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowMargin:I

    const v1, 0x7f07004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowCornerRadius:I

    const v1, 0x7f070050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mFontSize:I

    const v1, 0x7f070051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextViewMargin:I

    const v1, 0x7f070052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextViewPadding:I

    const v1, 0x7f070054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextViewCornerRadius:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mFontSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextViewPadding:I

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextViewCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060020

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-boolean v1, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getWindowHeight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {v5, v4, v1, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->isAnchorViewOnLeft(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x7f0a0113

    goto :goto_1

    :cond_1
    const v1, 0x7f0a0114

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v7, v7

    invoke-static {v6, v7, v0}, Lcom/android/systemui/recents/TriangleShape;->createHorizontal(FFZ)Lcom/android/systemui/recents/TriangleShape;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v7, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v4, v4

    sget v8, Lcom/android/systemui/accessibility/floatingmenu/TriangleStrokeShape;->$r8$clinit:I

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    div-float v9, v4, v9

    invoke-virtual {v8, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v10, v4}, Landroid/graphics/Path;->moveTo(FF)V

    div-float v9, v4, v9

    invoke-virtual {v8, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v8, v10, v10}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    new-instance v9, Lcom/android/systemui/accessibility/floatingmenu/TriangleStrokeShape;

    invoke-direct {v9, v8, v3, v4}, Lcom/android/systemui/accessibility/floatingmenu/TriangleStrokeShape;-><init>(Landroid/graphics/Path;FF)V

    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v3, v9}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07004b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v4, Landroid/graphics/CornerPathEffect;

    iget v8, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowCornerRadius:I

    int-to-float v8, v8

    invoke-direct {v4, v8}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v4, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;

    const/4 v6, 0x2

    new-array v8, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v7, v8, v2

    const/4 v7, 0x1

    aput-object v3, v8, v7

    invoke-direct {v4, v8}, Lcom/android/systemui/accessibility/floatingmenu/InstantInsetLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowWidth:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowHeight:I

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-eqz v0, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowMargin:I

    :goto_3
    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowMargin:I

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    invoke-virtual {v3, v4, v2, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->isAnchorViewOnLeft(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mScreenWidth:I

    iget v3, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->getWindowWidthWith(Landroid/graphics/Rect;)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowWidth:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_5

    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mScreenWidth:I

    iget v3, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->getTextWidthWith(Landroid/graphics/Rect;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    :cond_6
    iget v1, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->getWindowWidthWith(Landroid/graphics/Rect;)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowWidth:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_7

    iget v1, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->getTextWidthWith(Landroid/graphics/Rect;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_5
    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-boolean v0, v0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mIsHideHandle:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->isAnchorViewOnLeft(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget v1, v1, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    goto :goto_6

    :cond_8
    iget v1, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mScreenWidth:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->getWindowWidthWith(Landroid/graphics/Rect;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget v2, v2, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mHideHandleWidth:I

    sub-int/2addr v1, v2

    :goto_6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v5, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_8

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->isAnchorViewOnLeft(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, v5, Landroid/graphics/Rect;->right:I

    goto :goto_7

    :cond_a
    iget v1, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v5}, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->getWindowWidthWith(Landroid/graphics/Rect;)I

    move-result v3

    sub-int/2addr v1, v3

    :goto_7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mScreenWidth:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowWidth:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mArrowMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextViewMargin:I

    sub-int/2addr v3, v4

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v2}, Landroid/widget/TextView;->measure(II)V

    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v2, v6

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_8
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->offsetForLeftNaviBar()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mCurrentLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/BaseTooltipView;->mAnchorView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->getNavigationBarHeight()I

    move-result p0

    add-int/2addr p0, v1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_b
    return-void
.end method
