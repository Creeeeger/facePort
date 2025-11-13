.class public final Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationsKeyguardInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final areNotificationsFullyHidden:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isPulseExpanding:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final repository:Lcom/android/systemui/statusbar/notification/data/repository/NotificationsKeyguardViewStateRepository;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/data/repository/NotificationsKeyguardViewStateRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationsKeyguardInteractor;->repository:Lcom/android/systemui/statusbar/notification/data/repository/NotificationsKeyguardViewStateRepository;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/data/repository/NotificationsKeyguardViewStateRepository;->isPulseExpanding:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationsKeyguardInteractor;->isPulseExpanding:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/data/repository/NotificationsKeyguardViewStateRepository;->areNotificationsFullyHidden:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationsKeyguardInteractor;->areNotificationsFullyHidden:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method
