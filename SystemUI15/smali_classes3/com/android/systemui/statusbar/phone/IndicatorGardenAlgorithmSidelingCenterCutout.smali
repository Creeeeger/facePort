.class public final Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;
.super Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public cutoutLeft:I

.field public cutoutRight:I

.field public final indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public final inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    return-void
.end method


# virtual methods
.method public final calculateCameraTopMargin()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->hasCameraTopMargin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutTopMarginB:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final calculateCenterContainerMaxWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    if-lez v0, :cond_0

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final calculateLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object p1

    div-int/lit8 v1, v0, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateRightPadding()I

    move-result v2

    sub-int/2addr v1, v2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->isGardenVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int p1, v1, p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->cutoutRight:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateRightPadding()I

    move-result v2

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateRightPadding()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getHasCutoutForIndicator()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->cutoutLeft:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateLeftPadding()I

    move-result v2

    sub-int/2addr v1, v2

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateRightPadding()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateLeftPadding()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result p0

    :goto_1
    return p0
.end method

.method public final calculateLeftPadding()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCMainDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final calculateRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getHasCutoutForIndicator()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateLeftPadding()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sub-int/2addr v2, v3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->isGardenVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateRightPadding()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->calculateLeftPadding()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result p0

    sub-int/2addr v0, p0

    if-lez v0, :cond_2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_2

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result p0

    :goto_2
    return p0
.end method

.method public final calculateRightPadding()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->indicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCMainDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final hasCameraTopMargin()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->rotation:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getHasCutoutForIndicator()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final initResources()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->cutoutLeft:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmSidelingCenterCutout;->cutoutRight:I

    :cond_0
    return-void
.end method
