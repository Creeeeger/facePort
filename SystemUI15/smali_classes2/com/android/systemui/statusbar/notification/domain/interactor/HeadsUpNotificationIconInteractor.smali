.class public final Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationIconInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isolatedIconLocation:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isolatedNotification:Lkotlinx/coroutines/flow/StateFlowImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/data/repository/HeadsUpNotificationIconViewStateRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/data/repository/HeadsUpNotificationIconViewStateRepository;->isolatedIconLocation:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationIconInteractor;->isolatedIconLocation:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/data/repository/HeadsUpNotificationIconViewStateRepository;->isolatedNotification:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationIconInteractor;->isolatedNotification:Lkotlinx/coroutines/flow/StateFlowImpl;

    return-void
.end method
