.class public final Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$2;
.super Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$2;->this$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSubsystemRestarted()V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$2;->this$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiRestartInProgress:Z

    invoke-virtual {v0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->stopTrackingWifiRestart()V

    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$2;->this$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    iget-boolean v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiRestartInProgress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    if-eqz v0, :cond_1

    const-string v0, "RecoveryWorker"

    const-string v2, "The connectivity subsystem is done for recovery."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sIsRecovering:Z

    sget-object v0, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/InternetResetHelper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/network/InternetResetHelper;->resumePreferences()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    :cond_1
    return-void
.end method

.method public final onSubsystemRestarting()V
    .locals 0

    return-void
.end method
