.class public final Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activity:I

.field public final hotspotDeviceType:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;

.field public final level:Ljava/lang/Integer;

.field public final ssid:Ljava/lang/String;

.field public final validated:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/Boolean;Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->level:Ljava/lang/Integer;

    iput p2, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->activity:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->ssid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->validated:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->hotspotDeviceType:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/Boolean;Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    sget-object p5, Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;->NONE:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;-><init>(Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/Boolean;Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;

    iget-object v1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->level:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->level:Ljava/lang/Integer;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->activity:I

    iget v3, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->activity:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->ssid:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->ssid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->validated:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->validated:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->hotspotDeviceType:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->hotspotDeviceType:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->level:Ljava/lang/Integer;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->activity:I

    invoke-static {v3, v1, v2}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->ssid:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->validated:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->hotspotDeviceType:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;

    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wifi(level="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->level:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->activity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", validated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->validated:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hotspotDeviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/wifi/data/repository/demo/model/FakeWifiEventModel$Wifi;->hotspotDeviceType:Lcom/android/systemui/statusbar/pipeline/wifi/shared/model/WifiNetworkModel$HotspotDeviceType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
