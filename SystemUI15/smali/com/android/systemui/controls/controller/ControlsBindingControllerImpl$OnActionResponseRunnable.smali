.class public final Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnActionResponseRunnable;
.super Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final controlId:Ljava/lang/String;

.field public final response:I

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnActionResponseRunnable;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Landroid/os/IBinder;)V

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnActionResponseRunnable;->controlId:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnActionResponseRunnable;->response:I

    return-void
.end method


# virtual methods
.method public final doRun()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;->provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnActionResponseRunnable;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->lazyController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsController;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnActionResponseRunnable;->controlId:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnActionResponseRunnable;->response:I

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    check-cast v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onActionResponse$1;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onActionResponse$1;-><init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Ljava/lang/String;I)V

    iget-object p0, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
