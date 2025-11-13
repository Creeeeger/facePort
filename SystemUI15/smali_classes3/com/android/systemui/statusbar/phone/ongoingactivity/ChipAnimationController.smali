.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final AlPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final CARD_TRANSITION_COLLAPSE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final CARD_TRANSITION_EXPAND_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final CHANGE_BOUND_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final animationMap:Ljava/util/Map;

.field public final animationMutex:Lkotlinx/coroutines/sync/MutexImpl;

.field public final clockView:Landroid/view/View;

.field public final coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

.field public hideTransitionView:Landroid/view/View;

.field public final notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field public final onGoingActivityChip:Landroid/view/View;

.field public final onGoingCallChip:Landroid/view/View;

.field public final ongoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

.field public final statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field public final touchInterceptCallChip:Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f2e147b    # 0.68f

    const v3, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v3, v1, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->AlPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->Companion:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->expandInterpolator:Landroid/view/animation/PathInterpolator;

    sput-object v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->CARD_TRANSITION_EXPAND_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackView;->collapseInterpolator:Landroid/view/animation/PathInterpolator;

    sput-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->CARD_TRANSITION_COLLAPSE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->CHANGE_BOUND_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->ongoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    const p2, 0x7f0a02a2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->clockView:Landroid/view/View;

    const p2, 0x7f0a0872

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingCallChip:Landroid/view/View;

    instance-of p3, p2, Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;

    if-eqz p3, :cond_0

    check-cast p2, Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->touchInterceptCallChip:Lcom/android/systemui/statusbar/phone/TouchInterceptFrameLayout;

    const p2, 0x7f0a0841

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingActivityChip:Landroid/view/View;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->animationMap:Ljava/util/Map;

    sget-object p1, Lkotlinx/coroutines/sync/MutexKt;->NO_OWNER:Lkotlinx/coroutines/internal/Symbol;

    new-instance p1, Lkotlinx/coroutines/sync/MutexImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lkotlinx/coroutines/sync/MutexImpl;-><init>(Z)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->animationMutex:Lkotlinx/coroutines/sync/MutexImpl;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-virtual {p1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method

.method public static final access$animateSpring(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p4

    const/4 v1, 0x1

    invoke-direct {v0, p4, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    new-instance p4, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;F)V

    new-instance v1, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v1, p3}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>(F)V

    const p3, 0x3f4ed917    # 0.808f

    invoke-virtual {v1, p3}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    const/high16 p3, 0x42960000    # 75.0f

    invoke-virtual {v1, p3}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-virtual {p4, v1}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$springAnimation$1$2;

    invoke-direct {p3, v0, p2, p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$springAnimation$1$2;-><init>(Lkotlinx/coroutines/CancellableContinuation;Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;)V

    invoke-virtual {p4, p3}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->addEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {p4}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->start()V

    new-instance p3, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$1;

    invoke-direct {p3, p2, p0, p1, p4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateSpring$2$1;-><init>(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;Lcom/android/internal/dynamicanimation/animation/SpringAnimation;)V

    invoke-virtual {v0, p3}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object p0
.end method

.method public static final access$cancelAnimation(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$cancelAnimation$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$cancelAnimation$1;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$cancelAnimation$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$cancelAnimation$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$cancelAnimation$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$cancelAnimation$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$cancelAnimation$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$cancelAnimation$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$cancelAnimation$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/view/View;

    iget-object p0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$cancelAnimation$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "cancelAnimation() v:"

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "{ChipAnimationController}"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->animationMap:Ljava/util/Map;

    check-cast p2, Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/Job;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$cancelAnimation$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$cancelAnimation$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$cancelAnimation$1;->label:I

    invoke-static {p2, v0}, Lkotlinx/coroutines/JobKt;->cancelAndJoin(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "View:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Animation already cancelled/completed !"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->animationMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    return-object v1
.end method

.method public static final access$handleOnGoingActivityChipAnimation(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingActivityChip:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleOnGoingActivityChipAnimation() visible:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " show:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{ChipAnimationController}"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingActivityChip:Landroid/view/View;

    if-eqz v4, :cond_2

    if-eqz p1, :cond_1

    invoke-static {p0, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->startAnimation$default(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;)V

    sget-object v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->CHANGE_BOUND_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->startChipTransitionAnimation(ZLandroid/view/View;ILandroid/view/animation/Interpolator;Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$ViewPropertyObserver;)V

    goto :goto_1

    :cond_1
    sget-object v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->CHANGE_BOUND_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x8

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->startChipTransitionAnimation(ZLandroid/view/View;ILandroid/view/animation/Interpolator;Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$ViewPropertyObserver;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static final access$handleOnGoingCallChipAnimation(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Z)V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingCallChip:Landroid/view/View;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->startAnimation$default(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;)V

    sget-object v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->CHANGE_BOUND_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->startChipTransitionAnimation(ZLandroid/view/View;ILandroid/view/animation/Interpolator;Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$ViewPropertyObserver;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->ongoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->updateAdapter()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingActivityChip:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->CHANGE_BOUND_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/16 v3, 0x8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->startChipTransitionAnimation(ZLandroid/view/View;ILandroid/view/animation/Interpolator;Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$ViewPropertyObserver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static startAnimation$default(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;)V
    .locals 9

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const-string/jumbo v2, "startAnimation() v:"

    const-string v3, " show:true view_visibility:"

    const-string v4, " required_state:"

    invoke-static {v1, v2, v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{ChipAnimationController}"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "startAnimation() Already hidden/Visible! Ignore Animation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->showView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-static {}, Lkotlinx/coroutines/JobKt;->Job$default()Lkotlinx/coroutines/JobImpl;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$1;

    const/4 v4, 0x1

    invoke-direct {v1, v4, p0, p1, v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$1;-><init>(ZLcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lkotlin/coroutines/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startAnimation$2;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;ZILkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v7, v2, v2, v8, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->animationMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final animateChipHide(Landroid/view/View;IZ)V
    .locals 7

    new-instance v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipHide$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;IZLkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, p2, p2, v6, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final animateChipShow(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setAnimationsEnabled(Z)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$animateChipShow$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;ZLkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final hideView(Landroid/view/View;I)V
    .locals 4

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hideView() id:"

    const-string v2, " state:"

    const-string/jumbo v3, "{ChipAnimationController}"

    invoke-static {p2, v1, v0, v2, v3}, Lcom/android/settingslib/SecNotificationBlockManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setAnimationsEnabled(Z)V

    return-void
.end method

.method public final nudgeAnimation(Landroid/view/View;)V
    .locals 4

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nudgeAnimation() view:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{ChipAnimationController}"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p0

    if-ne p0, v1, :cond_0

    neg-float v0, v0

    :cond_0
    new-instance p0, Lcom/android/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {p0}, Lcom/android/internal/dynamicanimation/animation/SpringForce;-><init>()V

    const v1, 0x3f59999a    # 0.85f

    invoke-virtual {p0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object p0

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-virtual {p0, v1}, Lcom/android/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lcom/android/internal/dynamicanimation/animation/SpringForce;

    move-result-object p0

    new-instance v1, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v1, p1, v2}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    invoke-virtual {v1, p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lcom/android/internal/dynamicanimation/animation/SpringForce;)Lcom/android/internal/dynamicanimation/animation/SpringAnimation;

    new-instance p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$nudgeAnimation$1;

    const v2, 0x3ee66666    # 0.45f

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-direct {p0, v2, v3, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$nudgeAnimation$1;-><init>(FFLandroid/view/View;)V

    invoke-virtual {v1, p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->addEndListener(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;

    neg-float p0, v0

    invoke-virtual {v1, p0}, Lcom/android/internal/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public final showView(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showView() id:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{ChipAnimationController}"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setAnimationsEnabled(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->ongoingActivityController:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$startMarqueeAnimation$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController$startMarqueeAnimation$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityController;->mediaPauseTimerHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final startChipTransitionAnimation(ZLandroid/view/View;ILandroid/view/animation/Interpolator;Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$ViewPropertyObserver;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startChipTransitionAnimation() start! show:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{ChipAnimationController}"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    if-eqz p5, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture;

    invoke-direct {v2, p2, p5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/ViewPropertyCapture$ViewPropertyObserver;)V

    invoke-virtual {v0, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_0
    if-nez p1, :cond_1

    new-instance p5, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;

    invoke-direct {p5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;-><init>()V

    const v2, 0x7f0a0872

    invoke-virtual {p5, v2}, Landroid/transition/Visibility;->addTarget(I)Landroid/transition/Transition;

    invoke-virtual {v0, p5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->hideTransitionView:Landroid/view/View;

    :cond_1
    new-instance p5, Landroid/transition/ChangeBounds;

    invoke-direct {p5}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p5, v2, v3}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    invoke-virtual {p5, p4}, Landroid/transition/ChangeBounds;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    invoke-virtual {v0, p5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingCallChip:Landroid/view/View;

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->onGoingActivityChip:Landroid/view/View;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p4

    if-nez p4, :cond_2

    new-instance p4, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;

    invoke-direct {p4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/animation/VisibilityTransition;-><init>()V

    const p5, 0x7f0a0246

    invoke-virtual {p4, p5}, Landroid/transition/Visibility;->addTarget(I)Landroid/transition/Transition;

    invoke-virtual {v0, p4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_2
    const/4 p4, 0x0

    invoke-virtual {v0, p4}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    iget-object p5, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->statusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {p5}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;

    invoke-direct {v2, p1, p0, p2, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController$startChipTransitionAnimation$2;-><init>(ZLcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;Landroid/view/View;Landroid/transition/TransitionSet;)V

    invoke-virtual {v0, v2}, Landroid/transition/TransitionSet;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/ChipAnimationController;->notificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-interface {p0, p4}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->setAnimationsEnabled(Z)V

    invoke-static {p5}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    invoke-static {p5, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "startChipTransitionAnimation() End! show:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
