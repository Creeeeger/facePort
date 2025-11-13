.class public final Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final connected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    const-string v1, "onBindingDied componentName = "

    invoke-static {v1, p1, v0}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    const-string v1, "onBindingDied "

    invoke-static {v1, p1, v0}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1$onBindingDied$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1$onBindingDied$1;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    const-string v1, "onNullBinding "

    invoke-static {v1, p1, v0}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1$onNullBinding$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1$onNullBinding$1;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    const-string v1, "onServiceConnected "

    invoke-static {v1, p1, v0}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    new-instance v0, Lcom/android/systemui/controls/controller/ServiceWrapper;

    invoke-static {p2}, Landroid/service/controls/IControlsProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/controls/IControlsProvider;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/android/systemui/controls/controller/ServiceWrapper;-><init>(Landroid/service/controls/IControlsProvider;)V

    iput-object v0, p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-object p1, p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->packageUpdateMonitor:Lcom/android/systemui/controls/controller/PackageUpdateMonitor;

    iget-object p2, p1, Lcom/android/systemui/controls/controller/PackageUpdateMonitor;->monitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/android/systemui/controls/controller/PackageUpdateMonitor;->context:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/systemui/controls/controller/PackageUpdateMonitor;->user:Landroid/os/UserHandle;

    iget-object v1, p1, Lcom/android/systemui/controls/controller/PackageUpdateMonitor;->bgHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-object p2, p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->queuedServiceMethods:Ljava/util/Set;

    monitor-enter p2

    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->queuedServiceMethods:Ljava/util/Set;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->queuedServiceMethods:Ljava/util/Set;

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;

    iget-object v1, p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handle PendingServiceMethod = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;->run()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-boolean p2, p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->requiresBound:Z

    if-nez p2, :cond_2

    iget-object p2, p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iget-object p1, p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "com.samsung.android.oneconnect"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-object p1, p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    const-string p2, "Call onServiceConnected after request unbind. Request Unbinding"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    :try_start_1
    iget-object p1, p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    const-string p1, "Failed to unbind to service"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    const-string v1, "onServiceDisconnected "

    invoke-static {v1, p1, v0}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    return-void
.end method
