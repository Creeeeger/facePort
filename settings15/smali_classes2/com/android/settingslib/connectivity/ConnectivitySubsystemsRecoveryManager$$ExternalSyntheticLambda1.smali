.class public final synthetic Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    invoke-virtual {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->stopTrackingWifiRestart()V

    invoke-virtual {p0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->stopTrackingTelephonyRestart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiRestartInProgress:Z

    iput-boolean v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    iget-object v1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    if-eqz v1, :cond_1

    const-string v1, "RecoveryWorker"

    const-string v2, "The connectivity subsystem is done for recovery."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sIsRecovering:Z

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
