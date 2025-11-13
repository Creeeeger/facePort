.class public final Lcom/android/systemui/controls/controller/StatefulControlSubscriber;
.super Landroid/service/controls/IControlsSubscriber$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public controller:Lcom/android/systemui/controls/controller/ControlsController;

.field public final provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

.field public final requestLimit:J

.field public subscription:Landroid/service/controls/IControlsSubscription;

.field public subscriptionOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;J)V
    .locals 0

    invoke-direct {p0}, Landroid/service/controls/IControlsSubscriber$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-wide p4, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->requestLimit:J

    return-void
.end method


# virtual methods
.method public final onComplete(Landroid/os/IBinder;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onComplete$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onComplete$1;-><init>(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->run(Landroid/os/IBinder;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final onError(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onError$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onError$1;-><init>(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->run(Landroid/os/IBinder;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final onNext(Landroid/os/IBinder;Landroid/service/controls/Control;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onNext$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onNext$1;-><init>(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;Landroid/os/IBinder;Landroid/service/controls/Control;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->run(Landroid/os/IBinder;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final onSubscribe(Landroid/os/IBinder;Landroid/service/controls/IControlsSubscription;)V
    .locals 2

    const-string v0, "StatefulControlSubscriber"

    const-string v1, "onSubscribe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onSubscribe$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$onSubscribe$1;-><init>(Lcom/android/systemui/controls/controller/StatefulControlSubscriber;Landroid/service/controls/IControlsSubscription;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->run(Landroid/os/IBinder;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final run(Landroid/os/IBinder;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->token:Landroid/os/IBinder;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p1, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$run$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/controls/controller/StatefulControlSubscriber$run$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/StatefulControlSubscriber;->provider:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->token:Landroid/os/IBinder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Provider token is not same, token = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", provider.token = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatefulControlSubscriber"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
