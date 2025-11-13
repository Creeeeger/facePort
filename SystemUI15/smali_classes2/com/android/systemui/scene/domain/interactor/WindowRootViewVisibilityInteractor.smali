.class public final Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final isLockscreenOrShadeVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isLockscreenOrShadeVisibleAndInteractive:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

.field public notificationPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field public notificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final windowRootViewVisibilityRepository:Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;",
            "Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Lcom/android/systemui/power/domain/interactor/PowerInteractor;",
            "Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->windowRootViewVisibilityRepository:Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;

    iput-object p3, p0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    iput-object p4, p0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p2, p2, Lcom/android/systemui/scene/data/repository/WindowRootViewVisibilityRepository;->isLockscreenOrShadeVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p2, p0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->isLockscreenOrShadeVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p3, p5, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->isAwake:Lkotlinx/coroutines/flow/DistinctFlowImpl;

    new-instance p4, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor$isLockscreenOrShadeVisibleAndInteractive$1;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor$isLockscreenOrShadeVisibleAndInteractive$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p5, p2, p3, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p5, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->isLockscreenOrShadeVisibleAndInteractive:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 3

    new-instance v0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor$start$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor$start$1;-><init>(Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
