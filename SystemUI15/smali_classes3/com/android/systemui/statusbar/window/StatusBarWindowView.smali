.class public Lcom/android/systemui/statusbar/window/StatusBarWindowView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mLeftInset:I

.field public final mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

.field public mRightInset:I

.field public mTopInset:I

.field public mTouchDownY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mLeftInset:I

    iput p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mRightInset:I

    iput p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mTopInset:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mTouchDownY:F

    new-instance p1, Lcom/android/systemui/log/QuickPanelLogger;

    const-string p2, "SBWV"

    invoke-direct {p1, p2}, Lcom/android/systemui/log/QuickPanelLogger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mTouchDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mTopInset:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mTouchDownY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mTopInset:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    add-float/2addr v2, v1

    iget v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mTouchDownY:F

    sub-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mTouchDownY:F

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/systemui/log/QuickPanelLogger;->quickPanelLoggerHelper:Lcom/android/systemui/log/QuickPanelLoggerHelper;

    iget-object v1, v1, Lcom/android/systemui/log/QuickPanelLoggerHelper;->dispatchTouchEventLogger:Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;

    iget-object v0, v0, Lcom/android/systemui/log/QuickPanelLogger;->tag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/systemui/log/QuickPanelLoggerHelper$TouchLogger;->log(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 7

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Insets;->left:I

    iput v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mLeftInset:I

    iget v0, v0, Landroid/graphics/Insets;->right:I

    iput v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mRightInset:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mTopInset:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    iput v1, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mTopInset:I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mRightInset:I

    if-ne v4, v5, :cond_1

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v6, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mLeftInset:I

    if-ne v4, v6, :cond_1

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v6, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mTopInset:I

    if-eq v4, v6, :cond_2

    :cond_1
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v4, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mLeftInset:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowView;->mTopInset:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setRequestedFrameRate(F)V

    return-void
.end method
