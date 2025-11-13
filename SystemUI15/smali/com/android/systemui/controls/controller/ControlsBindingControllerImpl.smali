.class public Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/controller/ControlsBindingController;
.implements Lcom/android/systemui/controls/controller/SecControlsBindingController;


# static fields
.field public static final emptyCallback:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$Companion$emptyCallback$1;


# instance fields
.field public final actionCallbackService:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$actionCallbackService$1;

.field public final backgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final context:Landroid/content/Context;

.field public final controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

.field public currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

.field public currentUser:Landroid/os/UserHandle;

.field public final lazyController:Ldagger/Lazy;

.field public loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

.field public final packageUpdateMonitorFactory:Lcom/android/systemui/controls/controller/PackageUpdateMonitor$Factory;

.field public statefulControlSubscriber:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$Companion$emptyCallback$1;

    invoke-direct {v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$Companion$emptyCallback$1;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->emptyCallback:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$Companion$emptyCallback$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Lcom/android/systemui/controls/controller/PackageUpdateMonitor$Factory;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/controls/util/ControlsUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/controls/controller/PackageUpdateMonitor$Factory;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Lcom/android/systemui/controls/util/ControlsUtil;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->backgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->lazyController:Ldagger/Lazy;

    iput-object p4, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->packageUpdateMonitorFactory:Lcom/android/systemui/controls/controller/PackageUpdateMonitor$Factory;

    iput-object p6, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    check-cast p5, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentUser:Landroid/os/UserHandle;

    new-instance p1, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$actionCallbackService$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$actionCallbackService$1;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;)V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->actionCallbackService:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$actionCallbackService$1;

    return-void
.end method


# virtual methods
.method public final changeUser(Landroid/os/UserHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unbind()V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentUser:Landroid/os/UserHandle;

    return-void
.end method

.method public createProviderManager$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
    .locals 9

    new-instance v8, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentUser:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->packageUpdateMonitorFactory:Lcom/android/systemui/controls/controller/PackageUpdateMonitor$Factory;

    iget-object v7, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->backgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v3, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->actionCallbackService:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$actionCallbackService$1;

    move-object v0, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;-><init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/service/controls/IControlsActionCallback$Stub;Landroid/os/UserHandle;Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/PackageUpdateMonitor$Factory;Lcom/android/systemui/controls/util/ControlsUtil;)V

    return-object v8
.end method

.method public final getCurrentUserId()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentUser:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method public final retrieveLifecycleManager(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->componentName:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->componentName:Landroid/content/ComponentName;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "currentProvider = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", component = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControlsBindingControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unbind()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->createProviderManager$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/content/ComponentName;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  ControlsBindingController:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentUser:Landroid/os/UserHandle;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    currentUser="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->statefulControlSubscriber:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    StatefulControlSubscriber="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    Providers="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unbind()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unbind loadSubscriber = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", currentProvider = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControlsBindingControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->unsubscribe()V

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$loadCancel$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber$loadCancel$1;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->loadSubscriber:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$LoadSubscriber;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->unbindService()V

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->currentProvider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    return-void
.end method

.method public final unsubscribe()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->statefulControlSubscriber:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->subscriptionOpen:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v3, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$cancel$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$cancel$1;-><init>(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->statefulControlSubscriber:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    return-void
.end method
