.class public final Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $bind:Z

.field public final synthetic $forPanel:Z

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iput-boolean p2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;->$bind:Z

    iput-boolean p3, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;->$forPanel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-boolean v1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;->$bind:Z

    iget-boolean p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;->$forPanel:Z

    iget-object v2, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->serviceConnection:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;

    const-string v3, "Couldn\'t bind to "

    iput-boolean v1, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->requiresBound:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->intent:Landroid/content/Intent;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Binding service "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v6, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iput-boolean p0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->lastForPanel:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->BIND_FLAGS_PANEL:I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    sget p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->BIND_FLAGS:I

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->context:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->intent:Landroid/content/Intent;

    iget-object v8, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v7, v2, p0, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    goto :goto_1

    :cond_1
    iget-object v1, v2, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iget-object v7, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "com.samsung.android.oneconnect"

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->context:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->intent:Landroid/content/Intent;

    iget-object v8, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v7, v2, p0, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    goto :goto_1

    :cond_2
    move p0, v4

    :goto_1
    if-nez p0, :cond_4

    iget-object p0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->intent:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->serviceConnection:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v0, "Failed to bind to service"

    invoke-static {v6, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, v2, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :cond_3
    const-string/jumbo p0, "unbind requested"

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->unbindAndCleanup(Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->packageUpdateMonitor:Lcom/android/systemui/controls/controller/PackageUpdateMonitor;

    iget-object v0, p0, Lcom/android/systemui/controls/controller/PackageUpdateMonitor;->monitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    :cond_4
    :goto_3
    return-void
.end method
