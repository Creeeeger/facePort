.class public Lcom/android/settings/fuelgauge/batterytip/detectors/BatteryDefenderDetector;
.super Ljava/lang/Object;
.source "BatteryDefenderDetector.java"


# instance fields
.field private mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/BatteryDefenderDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    return-void
.end method


# virtual methods
.method public detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 1

    .line 36
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/BatteryDefenderDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->isOverheated:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 39
    :goto_0
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip;-><init>(I)V

    return-object v0
.end method
