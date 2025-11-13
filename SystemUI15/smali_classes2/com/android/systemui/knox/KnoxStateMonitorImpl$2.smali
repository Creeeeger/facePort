.class public final Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.knox.keyguard.show"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "personaId"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "isShown"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p2, p2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x138a

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p2, "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p2, p2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x138b

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const-string p2, "com.samsung.knox.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl$2;->this$0:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p0, p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mHandler:Lcom/android/systemui/knox/KnoxStateMonitorImpl$3;

    const/16 p1, 0x138c

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method
