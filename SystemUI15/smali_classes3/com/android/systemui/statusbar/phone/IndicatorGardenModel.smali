.class public final Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public cameraTopMargin:I

.field public hasCameraTopMargin:Z

.field public maxWidthCenterContainer:I

.field public maxWidthLeftContainer:I

.field public maxWidthRightContainer:I

.field public paddingLeft:I

.field public paddingRight:I

.field public totalHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    return-void
.end method


# virtual methods
.method public final isEqual(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->hasCameraTopMargin:Z

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->hasCameraTopMargin:Z

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    if-eq v1, v2, :cond_5

    return v0

    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    if-eq v1, v2, :cond_6

    return v0

    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    iget v2, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    iget p1, p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    if-eq p0, p1, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->totalHeight:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->hasCameraTopMargin:Z

    iget v2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->cameraTopMargin:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingLeft:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->paddingRight:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthLeftContainer:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthCenterContainer:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;->maxWidthRightContainer:I

    const-string/jumbo v7, "totalHeight="

    const-string v8, "  hasCameraTopMargin="

    const-string v9, "  cameraTopMargin="

    invoke-static {v7, v0, v8, v1, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  paddingLeft="

    const-string v7, "  paddingRight="

    invoke-static {v0, v2, v1, v3, v7}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "  maxWidthLeftContainer="

    const-string v2, "  maxWidthCenterContainer="

    invoke-static {v0, v4, v1, v5, v2}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  maxWidthRightContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
