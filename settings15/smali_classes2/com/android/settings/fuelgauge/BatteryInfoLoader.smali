.class public final Lcom/android/settings/fuelgauge/BatteryInfoLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryInfoLoader;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method


# virtual methods
.method public final loadInBackground()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryInfoLoader;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    const-string v0, "BatteryInfoLoader"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getBatteryInfo(Ljava/lang/String;)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryInfo;

    return-void
.end method
