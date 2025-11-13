.class public Lcom/android/systemui/qs/QSContainerImpl;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mClippingEnabled:Z

.field public mContentHorizontalPadding:I

.field public mFancyClippingBottom:I

.field public mFancyClippingLeftInset:I

.field public final mFancyClippingPath:Landroid/graphics/Path;

.field public final mFancyClippingRadii:[F

.field public mFancyClippingRightInset:I

.field public mFancyClippingTop:I

.field public mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field public mHorizontalMargins:I

.field public mIsFullWidth:Z

.field public mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

.field public mQSPanel:Lcom/android/systemui/qs/SecQSPanel;

.field public mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

.field public mQsDisabled:Z

.field public mQsExpansion:F

.field public final mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

.field public mSceneContainerEnabled:Z

.field public final mSecQSContainerImpl:Lcom/android/systemui/qs/SecQSContainerImpl;

.field public mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

.field public mTilesPageMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRadii:[F

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentHorizontalPadding:I

    new-instance p2, Lcom/android/systemui/log/QuickPanelLogger;

    const-string v0, "QSContainerI"

    invoke-direct {p2, v0}, Lcom/android/systemui/log/QuickPanelLogger;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    new-instance p2, Lcom/android/systemui/qs/SecQSContainerImpl;

    invoke-direct {p2, p1}, Lcom/android/systemui/qs/SecQSContainerImpl;-><init>(Landroid/graphics/Path;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecQSContainerImpl:Lcom/android/systemui/qs/SecQSContainerImpl;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecQSContainerImpl:Lcom/android/systemui/qs/SecQSContainerImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    cmpl-float v2, v2, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/qs/SecQSContainerImpl;->fancyClippingPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->isEmpty()Z

    move-result v5

    xor-int/2addr v3, v5

    if-eqz v3, :cond_1

    iget-boolean v5, v0, Lcom/android/systemui/qs/SecQSContainerImpl;->keyguardShowing:Z

    if-nez v5, :cond_1

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/systemui/qs/SecQSContainerImpl;->shadeRepository$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v2, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v2, v2, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyExpandImmediate:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    move-object v2, p1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    neg-float v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSContainerImpl;->fancyClippingPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    sget-object v0, Lcom/android/systemui/shade/TouchLogger;->Companion:Lcom/android/systemui/shade/TouchLogger$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "QS"

    invoke-static {p1, v0, p0}, Lcom/android/systemui/shade/TouchLogger$Companion;->logDispatchTouch(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " updateClippingPath: leftInset("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingLeftInset:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") top("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") rightInset("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRightInset:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") bottom("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingBottom:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") mClippingEnabled("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mClippingEnabled:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ") mIsFullWidth("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mIsFullWidth:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mClippingEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    add-float/2addr v0, p2

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result p0

    return p0
.end method

.method public final measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0434

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/NonInterceptingScrollView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    const v0, 0x7f0a0996

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/SecQSPanel;

    invoke-static {p0}, Lcom/android/systemui/util/ViewUtil;->getSecQuickStatusBarHeader(Landroid/view/ViewGroup;)Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    const v0, 0x7f0a0953

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecQSContainerImpl:Lcom/android/systemui/qs/SecQSContainerImpl;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/systemui/qs/SecQSContainerImpl;->panelSplitHepler$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v2}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isQSState()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/qs/SecQSContainerImpl;->panelSplitIntercepted:Z

    :cond_2
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->onIntercept(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/qs/SecQSContainerImpl;->panelSplitIntercepted:Z

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz p0, :cond_3

    const-string v0, "panelSplitHelper.onIntercept()"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/log/QuickPanelLogger;->onInterceptTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_3
    return v1

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateClippingPath()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecQSContainerImpl:Lcom/android/systemui/qs/SecQSContainerImpl;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/systemui/qs/SecQSContainerImpl;->panelSplitHepler$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v2}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isShadeState()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v0, v0, Lcom/android/systemui/qs/SecQSContainerImpl;->panelSplitIntercepted:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->handleTouch(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQuickPanelLogger:Lcom/android/systemui/log/QuickPanelLogger;

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const-string v1, "isPanelSplitEnabled && panelSplitIntercepted"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/log/QuickPanelLogger;->onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;Z)V

    :cond_2
    return v0

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final performClick()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final updateClippingPath()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mClippingEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecQSContainerImpl:Lcom/android/systemui/qs/SecQSContainerImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mShadeHeaderController:Lcom/android/systemui/shade/ShadeHeaderController;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecQSContainerImpl:Lcom/android/systemui/qs/SecQSContainerImpl;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    iget-object v9, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRadii:[F

    iget-object v4, v1, Lcom/android/systemui/qs/SecQSContainerImpl;->fancyClippingPath:Landroid/graphics/Path;

    neg-float v6, v0

    int-to-float v7, v2

    int-to-float v8, v3

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    goto :goto_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mIsFullWidth:Z

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingLeftInset:I

    neg-int v1, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRightInset:I

    add-int/2addr v0, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    int-to-float v3, v1

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    int-to-float v4, v1

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingBottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRadii:[F

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public final updateExpansion()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    :goto_0
    return-void
.end method

.method public final updateResources(Lcom/android/systemui/qs/SecQSPanelController;Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)V
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecQSContainerImpl:Lcom/android/systemui/qs/SecQSContainerImpl;

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    move-object p2, p1

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    :cond_1
    if-nez p2, :cond_2

    goto/16 :goto_8

    :cond_2
    iget-object p1, v1, Lcom/android/systemui/qs/SecQSContainerImpl;->resourcePicker$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->Companion:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f07105a

    invoke-static {v0, p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon$Companion;->dp(ILandroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getDateButtonContainerTopMargin(Landroid/content/Context;)I

    move-result p1

    add-int/2addr p1, v0

    const v0, 0x7f07105b

    invoke-static {p0, v0, p1}, Lcom/android/keyguard/StrongAuthPopup$$ExternalSyntheticOutline0;->m(Landroid/content/Context;II)I

    move-result p0

    iput p0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_8

    :cond_3
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/qs/QSUtils;->$r8$clinit:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseLargeScreenShadeHeader(Landroid/content/res/Resources;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getQuickQsOffsetHeight(Landroid/content/Context;)I

    move-result v1

    :goto_1
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseLargeScreenShadeHeader(Landroid/content/res/Resources;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/shade/LargeScreenHeaderHelper;->Companion:Lcom/android/systemui/shade/LargeScreenHeaderHelper$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/systemui/shade/LargeScreenHeaderHelper$Companion;->getLargeScreenHeaderHeight(Landroid/content/Context;)I

    move-result v1

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getPaddingStart()I

    move-result v4

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSceneContainerEnabled:Z

    if-eqz v5, :cond_6

    move v1, v3

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getPaddingEnd()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/widget/ScrollView;->setPaddingRelative(IIII)V

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v4

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSceneContainerEnabled:Z

    if-eqz v5, :cond_8

    move v1, v3

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/SecQSPanel;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070dda

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070d29

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070e97

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentHorizontalPadding:I

    if-ne v2, v5, :cond_a

    iget v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHorizontalMargins:I

    if-ne v1, v5, :cond_a

    iget v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mTilesPageMargin:I

    if-eq v4, v5, :cond_9

    goto :goto_3

    :cond_9
    move v5, v3

    goto :goto_4

    :cond_a
    :goto_3
    move v5, v0

    :goto_4
    iput v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentHorizontalPadding:I

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHorizontalMargins:I

    iput v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mTilesPageMargin:I

    if-eqz v5, :cond_f

    :goto_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_f

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-ne v1, v2, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHorizontalMargins:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    if-eq v1, v2, :cond_e

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/SecQSPanel;

    if-ne v1, v2, :cond_c

    goto :goto_6

    :cond_c
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    if-ne v1, v2, :cond_d

    iget-object v1, p2, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_7

    :cond_d
    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentHorizontalPadding:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentHorizontalPadding:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_7

    :cond_e
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_7
    add-int/2addr v3, v0

    goto :goto_5

    :cond_f
    :goto_8
    return-void
.end method
