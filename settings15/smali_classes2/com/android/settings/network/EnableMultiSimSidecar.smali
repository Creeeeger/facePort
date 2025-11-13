.class public final Lcom/android/settings/network/EnableMultiSimSidecar;
.super Lcom/android/settings/AsyncTaskSidecar;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCarrierConfigChangeReceiver:Lcom/android/settings/network/EnableMultiSimSidecar$1;

.field public mNumOfActiveSim:I

.field public final mSimCardStateChangedLatch:Ljava/util/concurrent/CountDownLatch;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SidecarFragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mSimCardStateChangedLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mNumOfActiveSim:I

    new-instance v0, Lcom/android/settings/network/EnableMultiSimSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/EnableMultiSimSidecar$1;-><init>(Lcom/android/settings/network/EnableMultiSimSidecar;)V

    iput-object v0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mCarrierConfigChangeReceiver:Lcom/android/settings/network/EnableMultiSimSidecar$1;

    return-void
.end method


# virtual methods
.method public final doInBackground(Lcom/android/settings/network/SwitchSlotSidecar$Param;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ljava/lang/Void;

    const-string p1, "EnableMultiSimSidecar"

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mCarrierConfigChangeReceiver:Lcom/android/settings/network/EnableMultiSimSidecar$1;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mNumOfActiveSim:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->switchMultiSimConfig(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_multi_slot_timeout_millis"

    const-wide/32 v3, 0x9c40

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mSimCardStateChangedLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Multi SIM were successfully enabled."

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mCarrierConfigChangeReceiver:Lcom/android/settings/network/EnableMultiSimSidecar$1;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v1, "Timeout for waiting SIM status."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mCarrierConfigChangeReceiver:Lcom/android/settings/network/EnableMultiSimSidecar$1;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_2

    :goto_1
    :try_start_2
    const-string v2, "Failed to enable multiple SIM due to InterruptedException"

    invoke-static {p1, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mCarrierConfigChangeReceiver:Lcom/android/settings/network/EnableMultiSimSidecar$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw p1
.end method

.method public final onPostExecute$1(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SidecarFragment;->setState(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/SidecarFragment;->setState(II)V

    :goto_0
    return-void
.end method

.method public final run$1()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mNumOfActiveSim:I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "EnableMultiSimSidecar"

    if-le v1, v0, :cond_0

    const-string v0, "Requested number of active SIM is greater than supported modem count."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/SidecarFragment;->setState(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/EnableMultiSimSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->doesSwitchMultiSimConfigTriggerReboot()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "The device does not support reboot free DSDS."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/SidecarFragment;->setState(II)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/AsyncTaskSidecar;->run(Lcom/android/settings/network/SwitchSlotSidecar$Param;)V

    return-void
.end method
