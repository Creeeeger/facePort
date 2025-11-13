.class public final Lcom/android/settingslib/fuelgauge/BatteryUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sChargingStringV2Enabled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setChargingStringV2Enabled(Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settingslib/fuelgauge/BatteryUtils;->setChargingStringV2Enabled(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public static setChargingStringV2Enabled(Ljava/lang/Boolean;Z)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "charging_string.apply_v2"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sput-object p0, Lcom/android/settingslib/fuelgauge/BatteryUtils;->sChargingStringV2Enabled:Ljava/lang/Boolean;

    return-void
.end method
