.class Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;
.super Ljava/lang/Object;
.source "LocalServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/service/LocalServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sume/core/service/LocalServiceProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 70
    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    .line 71
    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 75
    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onNullBinding(Landroid/content/ComponentName;)V

    .line 76
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/sume/core/service/LocalService$LocalBinder;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/service/LocalService$LocalBinder;->getService()Lcom/samsung/android/sume/core/service/LocalService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$002(Lcom/samsung/android/sume/core/service/LocalServiceProxy;Lcom/samsung/android/sume/core/service/LocalService;)Lcom/samsung/android/sume/core/service/LocalService;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    invoke-static {v0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$100(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    invoke-static {v0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$000(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Lcom/samsung/android/sume/core/service/LocalService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    invoke-static {v1}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$100(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/service/LocalService;->setEventListener(Lcom/samsung/android/sume/core/controller/MediaController$OnEventListener;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    invoke-static {v0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$000(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Lcom/samsung/android/sume/core/service/LocalService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/service/LocalService;->createMediaFilterController()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$202(Lcom/samsung/android/sume/core/service/LocalServiceProxy;I)I

    .line 57
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    invoke-static {v0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$300(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Ljava/util/function/Consumer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    invoke-static {v0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$300(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Ljava/util/function/Consumer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    invoke-static {v0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$400(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    invoke-static {v0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$500(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 61
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/samsung/android/sume/core/service/LocalServiceProxy$1;->this$0:Lcom/samsung/android/sume/core/service/LocalServiceProxy;

    invoke-static {v0}, Lcom/samsung/android/sume/core/service/LocalServiceProxy;->access$400(Lcom/samsung/android/sume/core/service/LocalServiceProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    return-void
.end method
