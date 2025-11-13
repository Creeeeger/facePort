.class final Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onNext$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $control:Landroid/service/controls/Control;

.field final synthetic $token:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;Landroid/os/IBinder;Landroid/service/controls/Control;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onNext$1;->this$0:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onNext$1;->$token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onNext$1;->$control:Landroid/service/controls/Control;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onNext$1;->this$0:Lcom/android/systemui/controls/controller/StatefulControlSubscriber;

    iget-boolean v1, v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->subscriptionOpen:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onNext$1;->$token:Landroid/os/IBinder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Refresh outside of window for token:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StatefulControlSubscriber"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->componentName:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onNext$1;->$control:Landroid/service/controls/Control;

    check-cast v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "ControlsControllerImpl"

    const-string v0, "Controls not available"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/service/controls/Control;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    iget-object v4, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    if-ne v2, v3, :cond_2

    new-instance v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl$refreshStatus$1;

    invoke-direct {v2, v0, p0, v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$refreshStatus$1;-><init>(Landroid/content/ComponentName;Landroid/service/controls/Control;Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    invoke-interface {v4, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    iget-boolean v2, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->isAutoRemove:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/service/controls/Control;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->confirmAvailability()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->secUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    check-cast v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$removeControl$1;

    invoke-direct {v3, v2, v0, p0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$removeControl$1;-><init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Landroid/content/ComponentName;Landroid/service/controls/Control;)V

    iget-object v2, v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorite$1;

    invoke-direct {v2, v0, p0, v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorite$1;-><init>(Landroid/content/ComponentName;Landroid/service/controls/Control;Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V

    invoke-interface {v4, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    check-cast v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onRefreshState$1;

    invoke-direct {v2, v1, v0, p0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$onRefreshState$1;-><init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Landroid/content/ComponentName;Ljava/util/List;)V

    iget-object p0, v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
