.class public final Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;
.super Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;
.source "Mesa & Renox, just like bare rocks"


# instance fields
.field public cutoutLeft:I

.field public final inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    return-void
.end method


# virtual methods
.method public final calculateCameraTopMargin()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->hasCameraTopMargin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutTopMarginB:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final calculateCenterContainerMaxWidth()I
    .locals 1

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

    move-result p0

    return p0
.end method

.method public final calculateLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->calculateLeftPadding()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->calculateRightPadding()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;II)I

    move-result p0

    return p0
.end method

.method public final calculateLeftPadding()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getSideCutoutPadding(II)I

    move-result p0

    return p0
.end method

.method public final calculateRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->calculateLeftPadding()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->calculateRightPadding()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;II)I

    move-result p0

    return p0
.end method

.method public final calculateRightPadding()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->cutoutLeft:I

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getSideCutoutPadding(II)I

    move-result p0

    return p0
.end method

.method public final hasCameraTopMargin()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getHasCutoutForIndicator()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->rotation:I

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public final initResources()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmRightCutout;->cutoutLeft:I

    :cond_0
    return-void
.end method
