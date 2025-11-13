.class public final synthetic Lcom/android/settings/fuelgauge/BatterySettingsMigrateChecker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySettingsMigrateChecker$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/fuelgauge/BatterySettingsMigrateChecker$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySettingsMigrateChecker$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/fuelgauge/BatterySettingsMigrateChecker$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lcom/android/settings/fuelgauge/BatterySettingsMigrateChecker;->sBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-direct {v1, v0, v2, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode(Z)I

    move-result v1

    if-eq v1, p0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " battery mode into "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BatterySettingsMigrateChecker"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;->FORCE_RESET:Lcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->setAppUsageState(ILcom/android/settings/fuelgauge/BatteryOptimizeHistoricalLogEntry$Action;)V

    :cond_3
    :goto_2
    return-void
.end method
