.class public final synthetic Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/BatteryUtils;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/BatteryUtils;IILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/BatteryUtils;

    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryUtils$$ExternalSyntheticLambda0;->f$4:I

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object v4

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->insertAction(JILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v4, v2, v3}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->deleteAction(ILjava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryUtils;->mDeviceCareManager:Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-le v1, v5, :cond_2

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/samsung/android/settings/fuelgauge/Reason;->sReasonToString:[Ljava/lang/String;

    aget-object p0, v4, p0

    const-string v4, "update p="

    const-string v5, " uid="

    const-string v6, " mode="

    invoke-static {v2, v4, v3, v5, v6}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DeviceCareManager"

    invoke-static {v5, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "package_name"

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "uid"

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "mode"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "reason"

    invoke-virtual {v4, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, v0, Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/fuelgauge/DeviceCareManager;->AUTHORITY_FAS_URI:Landroid/net/Uri;

    const-string v1, "FasDataChanged"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update Exception e="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
