.class public final synthetic Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

.field public final synthetic f$1:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    iput-object p2, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    iget-boolean v1, v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiRestartInProgress:Z

    const-string v2, "ConnectivitySubsystemsRecoveryManager"

    if-eqz v1, :cond_0

    const-string p0, "Wifi restart still in progress"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    iget-boolean v1, v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    if-eqz v1, :cond_1

    const-string p0, "Telephony restart still in progress"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    iget-object v1, v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->restartWifiSubsystem()V

    iput-boolean v3, v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiRestartInProgress:Z

    invoke-virtual {v0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->startTrackingWifiRestart()V

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    iget-object v4, v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    goto :goto_2

    :cond_5
    iget-object v2, v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->rebootRadio()Z

    move-result v2

    if-eqz v2, :cond_6

    iput-boolean v3, v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    invoke-virtual {v0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->startTrackingTelephonyRestart()V

    move v1, v3

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    iput-object p0, v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "RecoveryWorker"

    const-string v1, "The connectivity subsystem is starting for recovery."

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sIsRecovering:Z

    iget-object p0, v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_3
    return-void
.end method
