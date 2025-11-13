.class public final Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $largeCoverVisCallback:Ljava/util/function/Consumer;

.field public final synthetic $sensitivityCallback:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;->$sensitivityCallback:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;->$largeCoverVisCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldCache:Z

    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;->$sensitivityCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldCache:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;->this$0:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$addCallback$2;->$largeCoverVisCallback:Ljava/util/function/Consumer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    if-eqz v0, :cond_2

    iget-boolean v1, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->foldCache:Z

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->displayListener:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$displayListener$1;

    iget-object v4, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->componentCallbacks:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$componentCallbacks$1;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mCommandQueueCallbacks:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;->onDisplayReady(I)V

    iget-object v0, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    new-instance v0, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;-><init>(Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;Ljava/util/function/Consumer;)V

    iput-object v0, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->coverTask:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    iget-object v0, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->coverTask:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;

    invoke-interface {p0, v0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    iget-object p0, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->windowContext:Landroid/content/Context;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v4}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_1

    :cond_1
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    iget-object p0, v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->mCommandQueueCallbacks:Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;

    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl$1;->onDisplayRemoved(I)V

    iget-object p0, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v3}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 p0, -0x1

    iput p0, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->lastRotation:I

    const/4 p0, 0x0

    iput p0, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->lastCoverRotation:I

    iput-boolean p0, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->coverTaskCache:Z

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    iget-object v0, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->coverTask:Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor$CoverTask;

    invoke-interface {p0, v0}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    iget-object p0, p1, Lcom/android/systemui/navigationbar/interactor/DeviceStateInteractor;->windowContext:Landroid/content/Context;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v4}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_2
    :goto_1
    return-void
.end method
