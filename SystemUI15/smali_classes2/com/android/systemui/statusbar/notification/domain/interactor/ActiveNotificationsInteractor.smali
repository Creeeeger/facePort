.class public final Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final activeNotificationRanks:Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$5;

.field public final allRepresentativeNotifications:Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$2;

.field public final hasClearableNotifications:Lkotlinx/coroutines/flow/Flow;

.field public final topLevelRepresentativeNotifications:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationListRepository;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationListRepository;->activeNotifications:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v1, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v1, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;->topLevelRepresentativeNotifications:Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;->allRepresentativeNotifications:Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$2;

    new-instance v1, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v1, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$4;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-static {v1, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$5;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;->activeNotificationRanks:Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$5;

    new-instance v0, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$6;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/data/repository/ActiveNotificationListRepository;->notifStats:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$6;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;->hasClearableNotifications:Lkotlinx/coroutines/flow/Flow;

    new-instance p0, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$7;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$7;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    new-instance p0, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$8;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor$special$$inlined$map$8;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
