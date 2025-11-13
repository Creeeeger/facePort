.class Lcom/att/iqi/lib/IQIManager$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/att/iqi/lib/IQIManager;->forceStopService(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/att/iqi/lib/IQIManager;


# direct methods
.method constructor <init>(Lcom/att/iqi/lib/IQIManager;Landroid/os/Message;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/lib/IQIManager$1;->c:Lcom/att/iqi/lib/IQIManager;

    iput-object p2, p0, Lcom/att/iqi/lib/IQIManager$1;->a:Landroid/os/Message;

    iput-object p3, p0, Lcom/att/iqi/lib/IQIManager$1;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager$1;->c:Lcom/att/iqi/lib/IQIManager;

    invoke-static {p2}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgetf(Lcom/att/iqi/lib/IQIManager;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager$1;->a:Landroid/os/Message;

    iget v0, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager$1;->b:Ljava/lang/Runnable;

    invoke-virtual {p2, v0, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager$1;->c:Lcom/att/iqi/lib/IQIManager;

    invoke-static {p2}, Lcom/att/iqi/lib/IQIManager;->-$$Nest$fgeth(Lcom/att/iqi/lib/IQIManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager$1;->b:Ljava/lang/Runnable;

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
