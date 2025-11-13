.class public final Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$MobileTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/telephony/TelephonyCallback$RadioPowerStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRadioPowerStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    iget-boolean v1, v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->stopTrackingTelephonyRestart()V

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    invoke-virtual {p1}, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->stopTrackingTelephonyRestart()V

    iget-object p0, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;

    iget-boolean p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mWifiRestartInProgress:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mTelephonyRestartInProgress:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    if-eqz p1, :cond_3

    const-string p1, "RecoveryWorker"

    const-string v1, "The connectivity subsystem is done for recovery."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sIsRecovering:Z

    sget-object p1, Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;->sCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/InternetResetHelper;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/network/InternetResetHelper;->resumePreferences()V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settingslib/connectivity/ConnectivitySubsystemsRecoveryManager;->mCurrentRecoveryCallback:Lcom/android/settings/network/InternetResetHelper$RecoveryWorker;

    :cond_3
    return-void
.end method
