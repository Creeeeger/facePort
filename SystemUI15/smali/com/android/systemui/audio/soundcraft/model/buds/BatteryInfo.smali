.class public final Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private batteryCradle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "batteryCradle"
    .end annotation
.end field

.field private batteryLeft:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "batteryLeft"
    .end annotation
.end field

.field private batteryRight:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "batteryRight"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryLeft:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryRight:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryCradle:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const-string v0, ""

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryLeft:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryLeft:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryRight:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryRight:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryCradle:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryCradle:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBatteryCradle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryCradle:Ljava/lang/String;

    return-object p0
.end method

.method public final getBatteryLeft()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryLeft:Ljava/lang/String;

    return-object p0
.end method

.method public final getBatteryRight()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryRight:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryLeft:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryRight:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryCradle:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setBatteryCradle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryCradle:Ljava/lang/String;

    return-void
.end method

.method public final setBatteryLeft(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryLeft:Ljava/lang/String;

    return-void
.end method

.method public final setBatteryRight(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryRight:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryLeft:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryRight:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/buds/BatteryInfo;->batteryCradle:Ljava/lang/String;

    const-string v2, "BatteryInfo(batteryLeft="

    const-string v3, ", batteryRight="

    const-string v4, ", batteryCradle="

    invoke-static {v2, v0, v3, v1, v4}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
