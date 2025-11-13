.class public final Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activity:I

.field public final level:I

.field public final numberOfLevels:I

.field public final subscriptionId:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->subscriptionId:I

    iput p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->level:I

    iput p3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->numberOfLevels:I

    iput p4, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->activity:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;

    iget v1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->subscriptionId:I

    iget v3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->subscriptionId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->level:I

    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->level:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->numberOfLevels:I

    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->numberOfLevels:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->activity:I

    iget p1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->activity:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->subscriptionId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->level:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->numberOfLevels:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->activity:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CarrierMerged(subscriptionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->subscriptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numberOfLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->numberOfLevels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$CarrierMerged;->activity:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
