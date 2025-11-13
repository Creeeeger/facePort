.class public final Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;
.super Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public cutoutCropSize:I

.field public cutoutLeft:I

.field public cutoutRight:I

.field public final inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    return-void
.end method


# virtual methods
.method public final calculateCameraTopMargin()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->hasCameraTopMargin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutTopMarginB:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final calculateCenterContainerMaxWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->getCenterCutoutWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final calculateLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->getCenterCutoutWidth()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    if-lez v0, :cond_0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateLeftPadding()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->getCenterCutoutWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, p0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result p0

    return p0
.end method

.method public final calculateLeftPadding()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final calculateRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->getCenterCutoutWidth()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    if-lez v0, :cond_0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->calculateRightPadding()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->getCenterCutoutWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, p0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result p0

    return p0
.end method

.method public final calculateRightPadding()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final getCenterCutoutWidth()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->cutoutCropSize:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->cutoutRight:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->cutoutLeft:I

    sub-int/2addr v1, p0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->cutoutRight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->cutoutLeft:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutSidePaddingD:I

    add-int v1, v0, p0

    :goto_0
    return v1
.end method

.method public final hasCameraTopMargin()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getHasCutoutForIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->rotation:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final initResources()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutInnerPaddingD:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->cutoutCropSize:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->cutoutLeft:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmCenterCutout;->cutoutRight:I

    :cond_0
    return-void
.end method
