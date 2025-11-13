.class public abstract Lcom/android/settings/network/telephony/EuiccOperationSidecar;
.super Lcom/android/settings/SidecarFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/SidecarFragment$Listener;


# static fields
.field public static final sCurrentOpId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public mDetailedCode:I

.field public mEuiccManager:Landroid/telephony/euicc/EuiccManager;

.field public mOpId:I

.field public final mReceiver:Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;

.field public mResultCode:I

.field public mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->sCurrentOpId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SidecarFragment;-><init>()V

    new-instance v0, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;-><init>(Lcom/android/settings/network/telephony/EuiccOperationSidecar;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mReceiver:Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;

    return-void
.end method


# virtual methods
.method public final createCallbackIntent()Landroid/app/PendingIntent;
    .locals 3

    sget-object v0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->sCurrentOpId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mOpId:I

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->getReceiverAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "op_id"

    iget v2, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mOpId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    const/high16 v2, 0x14000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public abstract getReceiverAction()Ljava/lang/String;
.end method

.method public onActionReceived()V
    .locals 2

    iget v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mResultCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SidecarFragment;->setState(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SidecarFragment;->setState(II)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SidecarFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/euicc/EuiccManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-class v0, Lcom/android/settings/network/SwitchSlotSidecar;

    const-string v1, "SwitchSlotSidecar"

    invoke-static {p1, v1, v0}, Lcom/android/settings/SidecarFragment;->get(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/Class;)Lcom/android/settings/SidecarFragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/SwitchSlotSidecar;

    iput-object p1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mReceiver:Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->getReceiverAction()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    const-string v3, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mReceiver:Lcom/android/settings/network/telephony/EuiccOperationSidecar$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settings/SidecarFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->removeListener(Lcom/android/settings/SidecarFragment$Listener;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/SidecarFragment;->addListener(Lcom/android/settings/SidecarFragment$Listener;)V

    return-void
.end method

.method public onStateChange(Lcom/android/settings/SidecarFragment;)V
    .locals 3

    iget-object p0, p0, Lcom/android/settings/network/telephony/EuiccOperationSidecar;->mSwitchSlotSidecar:Lcom/android/settings/network/SwitchSlotSidecar;

    const-string v0, "EuiccOperationSidecar"

    if-ne p1, p0, :cond_2

    iget p1, p0, Lcom/android/settings/SidecarFragment;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const-string p0, "mSwitchSlotSidecar ERROR"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/android/settings/SidecarFragment;->setState(II)V

    const-string p0, "mSwitchSlotSidecar SUCCESS"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "Received state change from a sidecar not expected."

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
