.class Lcom/att/iqi/lib/IQIManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/att/iqi/lib/IQIManager;->forceStopService(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/att/iqi/lib/IQIManager;

.field public final synthetic val$msg:Landroid/os/Message;

.field public final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/att/iqi/lib/IQIManager;Landroid/os/Message;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/lib/IQIManager$1;->this$0:Lcom/att/iqi/lib/IQIManager;

    iput-object p2, p0, Lcom/att/iqi/lib/IQIManager$1;->val$msg:Landroid/os/Message;

    iput-object p3, p0, Lcom/att/iqi/lib/IQIManager$1;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager$1;->this$0:Lcom/att/iqi/lib/IQIManager;

    iget-object p2, p2, Lcom/att/iqi/lib/IQIManager;->mMessageDispatcher:Landroid/os/Handler;

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager$1;->val$msg:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager$1;->val$task:Ljava/lang/Runnable;

    invoke-virtual {p2, v0, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager$1;->this$0:Lcom/att/iqi/lib/IQIManager;

    iget-object p2, p2, Lcom/att/iqi/lib/IQIManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager$1;->val$task:Ljava/lang/Runnable;

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
