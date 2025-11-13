.class public final Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isShowingOnLockscreen:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->statusBarState:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackInteractor$special$$inlined$map$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iget-object p1, p2, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->isAsleep:Lcom/android/systemui/power/domain/interactor/PowerInteractor$special$$inlined$map$2;

    filled-new-array {v0, p1}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackInteractor$special$$inlined$combine$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackInteractor$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackInteractor;->isShowingOnLockscreen:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
