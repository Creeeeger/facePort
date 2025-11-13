.class public final Lcom/android/settings/fuelgauge/BatterySaverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBatterySaverListener:Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;

.field public final mContext:Landroid/content/Context;

.field public mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mBatterySaverListener:Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;->onPowerSaveModeChanged()V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mBatterySaverListener:Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;

    if-eqz p1, :cond_2

    const-string p1, "plugged"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mBatterySaverListener:Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;

    invoke-interface {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;->onBatteryChanged(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setListening(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    const-string p1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-static {p1, v0}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mRegistered:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mRegistered:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method
