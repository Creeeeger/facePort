.class public final Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$packageUpdateMonitor$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$packageUpdateMonitor$1$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$packageUpdateMonitor$1$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    sget v1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->BIND_FLAGS:I

    const-string v1, "package updated"

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->unbindAndCleanup(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$packageUpdateMonitor$1$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->lastForPanel:Z

    new-instance v1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;ZZ)V

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
