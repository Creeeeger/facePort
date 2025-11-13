.class public final Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final canShowHeadsUp:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

.field public final hasPinnedRows:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final headsUpRepository:Lcom/android/systemui/statusbar/notification/data/repository/HeadsUpRepository;

.field public final isHeadsUpOrAnimatingAway:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final pinnedHeadsUpRows:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final showHeadsUpStatusBar:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final topHeadsUpRow:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/data/repository/HeadsUpRepository;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationsKeyguardInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mTopHeadsUpRow:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v0, Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor$special$$inlined$flatMapLatest$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpNotificationRows:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance v0, Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor$special$$inlined$flatMapLatest$2;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpNotificationRows:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor$isHeadsUpOrAnimatingAway$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor$isHeadsUpOrAnimatingAway$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->mHeadsUpAnimatingAway:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-direct {v3, v0, p1, v2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-interface {p2}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;->isBypassEnabled()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    check-cast p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p2, p4, Lcom/android/systemui/statusbar/notification/domain/interactor/NotificationsKeyguardInteractor;->areNotificationsFullyHidden:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p4, Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor$canShowHeadsUp$1;

    invoke-direct {p4, v1}, Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor$canShowHeadsUp$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object p5, p5, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isShadeFullyCollapsed:Lkotlinx/coroutines/flow/Flow;

    iget-object p3, p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->currentKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p1, p5, p3, p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor$showHeadsUpStatusBar$1;

    invoke-direct {p2, v1}, Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor$showHeadsUpStatusBar$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p3, v0, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor;->showHeadsUpStatusBar:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    return-void
.end method
