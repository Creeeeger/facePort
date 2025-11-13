.class public abstract Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

.field public final gardenName:Ljava/lang/String;

.field public final gardenView:Lcom/android/systemui/statusbar/phone/IndicatorGarden;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->gardenView:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->gardenName:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    invoke-direct {p1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    return-void
.end method


# virtual methods
.method public abstract getCameraTopMarginContainerMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;
.end method

.method public needToUpdatePaddings(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    iget p1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    if-eq p0, p1, :cond_0

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

.method public final updateGarden(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->needToUpdatePaddings(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->updateSidePadding(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->isEqual(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->gardenView:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    if-eq v0, v1, :cond_2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getCenterContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->setGardenMaxWidth(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    if-eq v0, v1, :cond_3

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getRightContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->setGardenMaxWidth(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    iget v1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    if-eq v0, v1, :cond_4

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getLeftContainer()Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;->setGardenMaxWidth(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget v1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    iget v3, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    if-eq v1, v3, :cond_6

    goto :goto_0

    :cond_6
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->hasCameraTopMargin:Z

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->hasCameraTopMargin:Z

    if-eq v1, v3, :cond_7

    goto :goto_0

    :cond_7
    iget v1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    if-eq v1, v0, :cond_a

    :goto_0
    iget v0, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->hasCameraTopMargin:Z

    iget v3, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getHeightContainer()Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_8

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->getCameraTopMarginContainerMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v2

    if-eqz v1, :cond_9

    if-lez v3, :cond_9

    sub-int/2addr v0, v3

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_9
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v0, 0x0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_a
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->currentGardenModel:Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;

    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/IndicatorGardenInputProperties;->displayCutout:Landroid/view/DisplayCutout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->gardenName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " update is done "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " cutout="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IndicatorBasicGardener"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSidePadding(II)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->gardenView:Lcom/android/systemui/statusbar/phone/IndicatorGarden;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/IndicatorGarden;->getSidePaddingContainer()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method
