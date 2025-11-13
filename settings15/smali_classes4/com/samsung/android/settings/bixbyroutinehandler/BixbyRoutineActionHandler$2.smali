.class public final Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$2;->this$0:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->sInstance:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onReceive: action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.settings.bixbyroutinehandler.BixbyRoutineActionHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.android.vpn.action.VPN_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive: state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string/jumbo p2, "onReceive: act FAILED"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$2;->this$0:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    iget-object p2, p2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mCallback:Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;

    if-eqz p2, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(I)V

    check-cast p2, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    goto :goto_0

    :cond_1
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$2;->this$0:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    iget-object p2, p2, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->mCallback:Lcom/samsung/android/sdk/routines/v3/interfaces/ActionResultCallback;

    if-eqz p2, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;

    sget-object v1, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;->SUCCESS:Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;-><init>(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$ResultCode;)V

    check-cast p2, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/routines/v3/internal/ActionDispatcher$$ExternalSyntheticLambda8;->actionFinished(Lcom/samsung/android/sdk/routines/v3/data/ActionResult$Error;)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler$2;->this$0:Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->unregisterVpnStateReceiver(Landroid/content/Context;)V

    :cond_3
    :goto_1
    return-void
.end method
