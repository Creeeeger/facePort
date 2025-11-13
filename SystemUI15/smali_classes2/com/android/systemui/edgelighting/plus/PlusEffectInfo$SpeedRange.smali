.class public final Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final maxPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

.field public final maxRotation:F

.field public final maxScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

.field public final minPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

.field public final minRotation:F

.field public final minScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;Landroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "minRotationSpeed"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->minRotation:F

    const-string v0, "maxRotationSpeed"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->maxRotation:F

    new-instance v0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    const-string v1, "minScaleSpeed"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    const-string v2, "minScaleXSpeed"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    const-string v3, "minScaleYSpeed"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;-><init>(Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;FFF)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->minScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    new-instance v0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    const-string v1, "maxScaleSpeed"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    const-string v2, "maxScaleXSpeed"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    const-string v3, "maxScaleYSpeed"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;-><init>(Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;FFF)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->maxScale:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Scale;

    new-instance v0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    const-string v1, "minPosSpeed"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    const-string v2, "minPosXSpeed"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    const-string v3, "minPosYSpeed"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;-><init>(Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;FFF)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->minPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    new-instance v0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    const-string v1, "maxPosSpeed"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    const-string v2, "maxPosXSpeed"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    const-string v3, "maxPosYSpeed"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;-><init>(Lcom/android/systemui/edgelighting/plus/PlusEffectInfo;FFF)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$SpeedRange;->maxPos:Lcom/android/systemui/edgelighting/plus/PlusEffectInfo$Pos;

    return-void
.end method
