.class public final Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentRecoveryCallback:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

.field public final mHandler:Landroid/os/Handler;

.field public final mTelephonyCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$MobileTelephonyCallback;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mTelephonyRestartInProgress:Z

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiRestartInProgress:Z

.field public final mWifiSubsystemRestartTrackingCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$1;

    invoke-direct {v1, p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$1;-><init>(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiRestartInProgress:Z

    iput-boolean v1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    iput-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    new-instance v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$2;-><init>(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V

    iput-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiSubsystemRestartTrackingCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$2;

    new-instance v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$MobileTelephonyCallback;

    invoke-direct {v0, p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$MobileTelephonyCallback;-><init>(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V

    iput-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$MobileTelephonyCallback;

    iput-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "android.hardware.wifi"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "ConnectivitySubsystemsRecoveryManager"

    if-eqz p2, :cond_0

    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez p2, :cond_0

    const-string p2, "WifiManager not available!?"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v1, "android.hardware.telephony"

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_1

    const-string p0, "TelephonyManager not available!?"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public startTrackingTelephonyRestart()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$MobileTelephonyCallback;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public startTrackingWifiRestart()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiSubsystemRestartTrackingCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$2;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->registerSubsystemRestartTrackingCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V

    return-void
.end method

.method public stopTrackingTelephonyRestart()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$MobileTelephonyCallback;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public stopTrackingWifiRestart()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiSubsystemRestartTrackingCallback:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$2;

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->unregisterSubsystemRestartTrackingCallback(Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V

    return-void
.end method
