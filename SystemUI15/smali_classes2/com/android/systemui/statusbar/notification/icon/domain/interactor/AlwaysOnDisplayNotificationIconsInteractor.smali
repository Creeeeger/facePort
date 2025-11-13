.class public final Lcom/android/systemui/statusbar/notification/icon/domain/interactor/AlwaysOnDisplayNotificationIconsInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final aodNotifs:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p2, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryInteractor;->isBypassEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/AlwaysOnDisplayNotificationIconsInteractor$special$$inlined$flatMapLatest$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p3}, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/AlwaysOnDisplayNotificationIconsInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/statusbar/notification/icon/domain/interactor/NotificationIconsInteractor;)V

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/domain/interactor/AlwaysOnDisplayNotificationIconsInteractor;->aodNotifs:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
