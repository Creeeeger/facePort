.class public abstract Lcom/android/settingslib/fuelgauge/BatterySaverUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static getBatterySaverScheduleKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "automatic_power_save_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "key_battery_saver_no_schedule"

    if-nez v1, :cond_1

    const-string p0, "low_power_trigger_level"

    invoke-static {v0, p0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "key_battery_saver_percentage"

    :goto_0
    return-object v3

    :cond_1
    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->revertScheduleToNoneIfNeeded(Landroid/content/Context;)V

    return-object v3
.end method

.method public static maybeShowBatterySaverConfirmation(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power_warning_acknowledged"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "extra_low_power_warning_acknowledged"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string v0, "PNW.startSaverConfirmation"

    invoke-static {p0, v0, p1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->sendSystemUiBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static revertScheduleToNoneIfNeeded(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "automatic_power_save_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "low_power_trigger_level"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static sendSystemUiBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "com.android.systemui"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static declared-synchronized setPowerSaveMode(ILandroid/content/Context;ZZ)Z
    .locals 7

    const-class v0, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    const-string v4, "extra_confirm_only"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p1, v2}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->maybeShowBatterySaverConfirmation(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit v0

    return v5

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v4, "low_power_warning_acknowledged"

    invoke-static {p3, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v4, "extra_low_power_warning_acknowledged"

    invoke-static {p3, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    const-class p3, Landroid/os/PowerManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    invoke-virtual {p3, p2}, Landroid/os/PowerManager;->setPowerSaveModeEnabled(Z)Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    const-string p3, "low_power_manual_activation_count"

    invoke-static {v1, p3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    add-int/2addr p3, v3

    const-string v4, "low_power_manual_activation_count"

    invoke-static {v1, v4, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v4, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;

    invoke-direct {v4, p1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;-><init>(Landroid/content/Context;)V

    iget v6, v4, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->startNth:I

    if-lt p3, v6, :cond_2

    iget v4, v4, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->endNth:I

    if-gt p3, v4, :cond_2

    const-string p3, "low_power_trigger_level"

    invoke-static {v1, p3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "suppress_auto_battery_saver_suggestion"

    invoke-static {v1, p3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "PNW.autoSaverSuggestion"

    invoke-static {p1, p3, v2}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->sendSystemUiBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    new-instance p3, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {p3, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "extra_power_save_mode_manual_enabled_reason"

    invoke-virtual {p3, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "extra_power_save_mode_manual_enabled"

    invoke-virtual {p3, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.android.settingslib.fuelgauge.ACTION_SAVER_STATE_MANUAL_UPDATE"

    invoke-static {p1, p0, p3}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->sendSystemUiBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v3

    :cond_3
    monitor-exit v0

    return v5

    :goto_0
    monitor-exit v0

    throw p0
.end method
