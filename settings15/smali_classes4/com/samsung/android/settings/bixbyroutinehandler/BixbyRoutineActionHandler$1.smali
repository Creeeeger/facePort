.class public final Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$param:Ljava/lang/String;

.field public final synthetic val$selectedProfile:Lcom/android/internal/net/VpnProfile;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;Lcom/android/internal/net/VpnProfile;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;->this$0:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    iput-object p2, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;->val$selectedProfile:Lcom/android/internal/net/VpnProfile;

    iput-object p3, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;->val$param:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 7

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    sget-object p1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sInstance:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    const-string p1, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    const-string v1, "NetworkCallback: onAvailable"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;->this$0:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    iget-object v1, v1, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mVpnHelper:Lcom/samsung/android/settings/vpn/bixby/VpnHelper;

    iget-object v2, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;->val$selectedProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;->val$param:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/vpn/bixby/VpnHelper;->connect(Lcom/android/internal/net/VpnProfile;Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;->this$0:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mCallback:Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;

    if-eqz p0, :cond_2

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/16 v1, 0xc8

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(IZ)V

    check-cast p0, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;->this$0:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$1;->val$context:Landroid/content/Context;

    iget-object p0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mVpnStateReceiver:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$2;

    if-nez p0, :cond_2

    new-instance p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$2;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$2;-><init>(Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;)V

    iput-object p0, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mVpnStateReceiver:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$2;

    const-string p0, "com.samsung.android.vpn.action.VPN_STATE_CHANGED"

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    iget-object v2, v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mVpnStateReceiver:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$2;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v4, "android.permission.NETWORK_SETTINGS"

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string/jumbo p0, "registerVpnStateReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
