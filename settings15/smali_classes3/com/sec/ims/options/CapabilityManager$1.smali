.class Lcom/sec/ims/options/CapabilityManager$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/ims/options/CapabilityManager;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ims/options/CapabilityManager;


# direct methods
.method public constructor <init>(Lcom/sec/ims/options/CapabilityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {p1}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetLOG_TAG(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Connected to CapabilityDiscoveryService."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {p2}, Lcom/sec/ims/options/ICapabilityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/options/ICapabilityService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fputmImsCapabilityService(Lcom/sec/ims/options/CapabilityManager;Lcom/sec/ims/options/ICapabilityService;)V

    iget-object p1, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {p1}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetmListener(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {p1}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetmListener(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/ims/options/CapabilityManager$ConnectionListener;->onConnected()V

    :cond_0
    iget-object p1, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {p1}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetmQueuedCapabilityListener(Lcom/sec/ims/options/CapabilityManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {p1}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetmQueuedCapabilityListener(Lcom/sec/ims/options/CapabilityManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/options/CapabilityListener;

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-virtual {v0, p2}, Lcom/sec/ims/options/CapabilityManager;->registerListener(Lcom/sec/ims/options/CapabilityListener;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {p1}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetmQueuedCapabilityListener(Lcom/sec/ims/options/CapabilityManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {p0}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetLOG_TAG(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "registerListener failed. RemoteException: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {p1}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetLOG_TAG(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Disconnected to CapabilityDiscoveryService."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {p1}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetmListener(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {p1}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetmListener(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/ims/options/CapabilityManager$ConnectionListener;->onDisconnected()V

    :cond_0
    iget-object p0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fputmImsCapabilityService(Lcom/sec/ims/options/CapabilityManager;Lcom/sec/ims/options/ICapabilityService;)V

    return-void
.end method
