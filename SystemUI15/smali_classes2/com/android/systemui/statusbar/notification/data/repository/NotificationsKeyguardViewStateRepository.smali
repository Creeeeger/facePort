.class public final Lcom/android/systemui/statusbar/notification/data/repository/NotificationsKeyguardViewStateRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final areNotificationsFullyHidden:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isPulseExpanding:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/data/repository/NotificationsKeyguardViewStateRepository;->areNotificationsFullyHidden:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/data/repository/NotificationsKeyguardViewStateRepository;->isPulseExpanding:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method
