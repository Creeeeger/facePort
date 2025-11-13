.class public final Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final radian:D

.field public final radius:D


# direct methods
.method public constructor <init>(II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x28

    if-lt p1, v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->radius:D

    goto :goto_0

    :cond_0
    const/16 v0, -0x64

    if-ge p1, v0, :cond_1

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->radius:D

    goto :goto_0

    :cond_1
    neg-int p1, p1

    add-int/lit8 p1, p1, -0x28

    int-to-double v0, p1

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->radius:D

    :goto_0
    int-to-double p1, p2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->radian:D

    return-void
.end method
