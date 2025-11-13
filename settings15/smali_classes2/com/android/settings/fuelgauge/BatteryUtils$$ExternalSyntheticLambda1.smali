.class public final synthetic Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/BatteryUtils;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/BatteryUtils;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/fuelgauge/BatteryUtils;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda1;->f$1:I

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda1;->f$2:I

    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda1;->f$2:I

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object v0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2, p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->insertAction(JILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v0, v2, p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->deleteAction(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
