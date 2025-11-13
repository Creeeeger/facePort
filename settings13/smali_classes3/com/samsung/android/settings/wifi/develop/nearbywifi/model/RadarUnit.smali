.class public Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;
.super Ljava/lang/Object;
.source "RadarUnit.java"


# instance fields
.field radian:D

.field radius:D


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x28

    if-lt p1, v0, :cond_0

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->radius:D

    goto :goto_0

    :cond_0
    const/16 v0, -0x64

    if-ge p1, v0, :cond_1

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 26
    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->radius:D

    goto :goto_0

    :cond_1
    neg-int p1, p1

    add-int/lit8 p1, p1, -0x28

    int-to-double v0, p1

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    div-double/2addr v0, v2

    .line 28
    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->radius:D

    :goto_0
    int-to-double p1, p2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v0

    .line 31
    iput-wide p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->radian:D

    return-void
.end method


# virtual methods
.method public getRadius()D
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->radius:D

    return-wide v0
.end method

.method public x()D
    .locals 4

    .line 35
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->radian:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->radius:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public y()D
    .locals 4

    .line 39
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->radian:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/model/RadarUnit;->radius:D

    mul-double/2addr v0, v2

    return-wide v0
.end method
