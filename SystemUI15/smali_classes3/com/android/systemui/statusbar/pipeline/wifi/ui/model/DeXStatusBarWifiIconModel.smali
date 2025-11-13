.class public final Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activityId:I

.field public final isVisible:Z

.field public final wifiId:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->isVisible:Z

    iput p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->wifiId:I

    iput p3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->activityId:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->isVisible:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->isVisible:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->wifiId:I

    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->wifiId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->activityId:I

    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->activityId:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->isVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->wifiId:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->activityId:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeXStatusBarWifiIconModel(isVisible="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->isVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wifiId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->wifiId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/ui/model/DeXStatusBarWifiIconModel;->activityId:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
