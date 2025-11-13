.class public final Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$1$2;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/events/StatusEvent;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_2

    sget p2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$1$2;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->hasPersistentDot:Z

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getShowAnimation()Z

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->scheduledEvent:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->animationState:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->notifyTransitionToPersistentDot(Lcom/android/systemui/statusbar/events/StatusEvent;)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->currentlyDisplayedEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getViewCreator()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/events/BatteryEvent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    invoke-virtual {v3, p2, v2}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->prepareChipAnimation(Lkotlin/jvm/functions/Function1;Z)V

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/android/systemui/statusbar/events/BatteryEvent;

    if-eqz p2, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/android/systemui/statusbar/events/StatusEvent;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/events/StatusEvent;->getViewCreator()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->headerBatteryChipController:Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;

    iget-object v3, v2, Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;->context:Landroid/content/Context;

    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    iget-object v3, v2, Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;->batteryChipContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, p2

    check-cast v4, Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iput-object p2, v2, Lcom/android/systemui/statusbar/events/HeaderBatteryStatusChipController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    :cond_1
    new-instance p2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;

    invoke-direct {p2, p0, p1, v1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl$startAnimationLifecycle$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;Lcom/android/systemui/statusbar/events/StatusEvent;Lkotlin/coroutines/Continuation;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x3

    invoke-static {p1, v1, v1, p2, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerImpl;->currentlyRunningAnimationJob:Lkotlinx/coroutines/Job;

    :goto_0
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
