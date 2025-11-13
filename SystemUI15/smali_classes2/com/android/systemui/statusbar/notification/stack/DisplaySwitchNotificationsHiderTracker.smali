.class public final Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final latencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final notificationsInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/internal/util/LatencyTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker;->notificationsInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker;->latencyTracker:Lcom/android/internal/util/LatencyTracker;

    return-void
.end method


# virtual methods
.method public final trackNotificationHideTimeWhenVisible(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker;->notificationsInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker$trackNotificationHideTimeWhenVisible$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker$trackNotificationHideTimeWhenVisible$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v2, p1, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker$trackNotificationHideTimeWhenVisible$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker$trackNotificationHideTimeWhenVisible$3;-><init>(Lcom/android/systemui/statusbar/notification/stack/DisplaySwitchNotificationsHiderTracker;)V

    invoke-interface {p1, v0, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
