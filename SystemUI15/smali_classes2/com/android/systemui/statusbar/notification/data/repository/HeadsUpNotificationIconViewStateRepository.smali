.class public final Lcom/android/systemui/statusbar/notification/data/repository/HeadsUpNotificationIconViewStateRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isolatedIconLocation:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isolatedNotification:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/data/repository/HeadsUpNotificationIconViewStateRepository;->isolatedNotification:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/data/repository/HeadsUpNotificationIconViewStateRepository;->isolatedIconLocation:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method
