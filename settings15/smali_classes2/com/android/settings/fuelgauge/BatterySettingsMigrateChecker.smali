.class public abstract Lcom/android/settings/fuelgauge/BatterySettingsMigrateChecker;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static sBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;


# direct methods
.method public static verifyBatteryOptimizeModeApps(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/settings/fuelgauge/BatterySettingsMigrateChecker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/fuelgauge/BatterySettingsMigrateChecker$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
