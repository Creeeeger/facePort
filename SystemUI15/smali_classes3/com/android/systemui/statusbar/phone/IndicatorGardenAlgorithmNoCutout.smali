.class public final Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithmNoCutout;
.super Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V

    return-void
.end method


# virtual methods
.method public final calculateCameraTopMargin()I
    .locals 0

    const/4 p0, 0x0

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
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getLeftContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result p0

    return p0
.end method

.method public final calculateLeftPadding()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    move-result p0

    return p0
.end method

.method public final calculateRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getRightContainerMaxWidth(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)I

    move-result p0

    return p0
.end method

.method public final calculateRightPadding()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenAlgorithm;->getDefaultSidePadding()I

    move-result p0

    return p0
.end method
