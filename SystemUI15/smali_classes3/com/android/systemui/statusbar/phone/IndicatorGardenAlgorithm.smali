.class public abstract Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final cornerRoundFromFloatingFeature:F

.field public final cornerRoundSidePadding:I

.field public final inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->name:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string p2, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_CORNER_ROUND"

    invoke-virtual {p1, p2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->cornerRoundFromFloatingFeature:F

    const/high16 p2, 0x41200000    # 10.0f

    sub-float/2addr p2, p1

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->cornerRoundSidePadding:I

    return-void
.end method


# virtual methods
.method public calculateCameraTopMargin()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public calculateCenterContainerMaxWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public calculateLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public calculateLeftPadding()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public calculateRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public calculateRightPadding()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getDefaultSidePadding()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->rotation:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cornerPaddingC:I

    if-eqz v1, :cond_1

    return v1

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->cornerRoundFromFloatingFeature:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->cornerRoundSidePadding:I

    int-to-float p0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->density:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_2
    iget p0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->defaultStartPadding:I

    return p0
.end method

.method public final getHasCutoutForIndicator()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;II)I

    move-result p0

    return p0
.end method

.method public final getLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;II)I
    .locals 4

    move v0, p2

    move v1, p3

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->isGardenVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result v3

    if-lez v3, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p0, v0

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getEssentialRightWidth()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->defaultCenterPadding:I

    sub-int/2addr v1, p0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getEssentialLeftWidth()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_1
    return p0
.end method

.method public final getRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;II)I

    move-result p0

    return p0
.end method

.method public final getRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;II)I
    .locals 4

    move v0, p2

    move v1, p3

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->isGardenVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result v3

    if-lez v3, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p0, v1

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->getGardenWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->statusBarWidth:I

    add-int/2addr v0, v1

    sub-int/2addr v2, v0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getEssentialLeftWidth()I

    move-result v0

    sub-int/2addr v2, v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->defaultCenterPadding:I

    sub-int/2addr v2, p0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getEssentialRightWidth()I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getSideCutoutPadding(II)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->inputProperties:Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->rotation:I

    if-nez v1, :cond_1

    if-lez p1, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cutoutSidePaddingD:I

    add-int/2addr p1, p0

    add-int/2addr p2, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->cornerPaddingC:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    add-int/2addr v0, p2

    return v0
.end method

.method public hasCameraTopMargin()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initResources()V
    .locals 0

    return-void
.end method
