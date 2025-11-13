.class public Lcom/android/systemui/qs/NonInterceptingScrollView;
.super Landroid/widget/ScrollView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mDownY:F

.field public final mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

.field public final mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

.field public mScrollEnabled:Z

.field public final mSecNonInterceptingScrollView:Lcom/android/systemui/qs/SecNonInterceptingScrollView;

.field public final mTouchSlop:I


# direct methods
.method public static synthetic $r8$lambda$uUGrSfrdiiCGUISaKCs0Y4X4VRw(Lcom/android/systemui/qs/NonInterceptingScrollView;Landroid/view/MotionEvent;)Ljava/lang/Boolean;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mScrollEnabled:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mTouchSlop:I

    new-instance p1, Lcom/android/systemui/log/QuickPanelLogger;

    const-string p2, "NISV"

    invoke-direct {p1, p2}, Lcom/android/systemui/log/QuickPanelLogger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    new-instance p1, Lcom/android/systemui/qs/SecNonInterceptingScrollView;

    new-instance p2, Lcom/android/systemui/qs/NonInterceptingScrollView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/NonInterceptingScrollView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/NonInterceptingScrollView;)V

    new-instance v0, Lcom/android/systemui/qs/NonInterceptingScrollView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/NonInterceptingScrollView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/NonInterceptingScrollView;)V

    invoke-direct {p1, p2, v0}, Lcom/android/systemui/qs/SecNonInterceptingScrollView;-><init>(Ljava/lang/Runnable;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mSecNonInterceptingScrollView:Lcom/android/systemui/qs/SecNonInterceptingScrollView;

    return-void
.end method


# virtual methods
.method public final canScrollHorizontally(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mSecNonInterceptingScrollView:Lcom/android/systemui/qs/SecNonInterceptingScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecNonInterceptingScrollView;->canScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mScrollEnabled:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final canScrollVertically(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mSecNonInterceptingScrollView:Lcom/android/systemui/qs/SecNonInterceptingScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecNonInterceptingScrollView;->canScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mScrollEnabled:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getScrollRange()I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget p0, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mSecNonInterceptingScrollView:Lcom/android/systemui/qs/SecNonInterceptingScrollView;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SecNonInterceptingScrollView;->panelSplitHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/SecNonInterceptingScrollView;->panelTransitionStateListener:Lcom/android/systemui/qs/SecNonInterceptingScrollView$panelTransitionStateListener$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->removeListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mSecNonInterceptingScrollView:Lcom/android/systemui/qs/SecNonInterceptingScrollView;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/qs/SecNonInterceptingScrollView;->panelSplitHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/SecPanelSplitHelper;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/qs/SecNonInterceptingScrollView;->panelTransitionStateListener:Lcom/android/systemui/qs/SecNonInterceptingScrollView$panelTransitionStateListener$1;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->addListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setFocusable(Z)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mSecNonInterceptingScrollView:Lcom/android/systemui/qs/SecNonInterceptingScrollView;

    iget-object v0, v0, Lcom/android/systemui/qs/SecNonInterceptingScrollView;->scrollRange:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz p0, :cond_8

    const-string/jumbo v0, "scrollRange == 0"

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mDownY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mTouchSlop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    const/4 v3, 0x1

    if-gez v1, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/NonInterceptingScrollView;->canScrollVertically(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v1, :cond_8

    iget-object v3, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v4, "yDiff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " < -touchSlop: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mTouchSlop:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    neg-int p0, p0

    const-string v0, " && !canScrollVertically()"

    invoke-static {p0, v0, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0, v2}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget v6, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mTouchSlop:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mQuickPanelLogBuilder:Ljava/lang/StringBuilder;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "abs(yDiff): "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " > touchSlop: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mTouchSlop:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p1, p0, v3}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mDownY:F

    :cond_7
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_8
    :goto_2
    return v2
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mSecNonInterceptingScrollView:Lcom/android/systemui/qs/SecNonInterceptingScrollView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/NonInterceptingScrollView;->$r8$lambda$uUGrSfrdiiCGUISaKCs0Y4X4VRw(Lcom/android/systemui/qs/NonInterceptingScrollView;Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/qs/SecNonInterceptingScrollView;->scrollRange:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/NonInterceptingScrollView;->canScrollVertically(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/NonInterceptingScrollView;->canScrollVertically(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    sget v1, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    if-ne v1, v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/android/systemui/qs/NonInterceptingScrollView;->$r8$lambda$uUGrSfrdiiCGUISaKCs0Y4X4VRw(Lcom/android/systemui/qs/NonInterceptingScrollView;Landroid/view/MotionEvent;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/NonInterceptingScrollView;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    const-string/jumbo v1, "scrollRange == 0"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_5
    move p0, v0

    :goto_1
    return p0
.end method

.method public final smoothScrollToDescendant(Lcom/android/systemui/plugins/qs/QSTileView;)V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/ScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_0
    return-void
.end method
