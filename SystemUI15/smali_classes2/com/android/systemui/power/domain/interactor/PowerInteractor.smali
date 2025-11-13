.class public final Lcom/android/systemui/power/domain/interactor/PowerInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final checkEquivalentUnlessEmitDuplicatesUnderTest:Lkotlin/jvm/functions/Function2;

.field public static emitDuplicateWakefulnessValue:Z


# instance fields
.field public final detailedWakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final isAsleep:Lcom/android/systemui/power/domain/interactor/PowerInteractor$special$$inlined$map$2;

.field public final isAwake:Lkotlinx/coroutines/flow/DistinctFlowImpl;

.field public final isInteractive:Lkotlinx/coroutines/flow/Flow;

.field public final repository:Lcom/android/systemui/power/data/repository/PowerRepository;

.field public final screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final screenPowerState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/power/domain/interactor/PowerInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/power/domain/interactor/PowerInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/android/systemui/power/domain/interactor/PowerInteractor$Companion$checkEquivalentUnlessEmitDuplicatesUnderTest$1;->INSTANCE:Lcom/android/systemui/power/domain/interactor/PowerInteractor$Companion$checkEquivalentUnlessEmitDuplicatesUnderTest$1;

    sput-object v0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->checkEquivalentUnlessEmitDuplicatesUnderTest:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/power/data/repository/PowerRepository;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->repository:Lcom/android/systemui/power/data/repository/PowerRepository;

    iput-object p2, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iput-object p3, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iput-object p4, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    check-cast p1, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;

    iget-object p2, p1, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->isInteractive:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->isInteractive:Lkotlinx/coroutines/flow/Flow;

    iget-object p2, p1, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->wakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p2, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->detailedWakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/power/domain/interactor/PowerInteractor$special$$inlined$map$1;

    invoke-direct {p3, p2}, Lcom/android/systemui/power/domain/interactor/PowerInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    sget-object p2, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->checkEquivalentUnlessEmitDuplicatesUnderTest:Lkotlin/jvm/functions/Function2;

    sget-object p4, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->defaultKeySelector:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    invoke-static {p3, p4, p2}, Lkotlinx/coroutines/flow/FlowKt__DistinctKt;->distinctUntilChangedBy$FlowKt__DistinctKt(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/DistinctFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->isAwake:Lkotlinx/coroutines/flow/DistinctFlowImpl;

    new-instance p3, Lcom/android/systemui/power/domain/interactor/PowerInteractor$special$$inlined$map$2;

    invoke-direct {p3, p2}, Lcom/android/systemui/power/domain/interactor/PowerInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p3, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->isAsleep:Lcom/android/systemui/power/domain/interactor/PowerInteractor$special$$inlined$map$2;

    iget-object p1, p1, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->screenPowerState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->screenPowerState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

.method public static onUserTouch$default(Lcom/android/systemui/power/domain/interactor/PowerInteractor;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->repository:Lcom/android/systemui/power/data/repository/PowerRepository;

    check-cast p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;

    iget-object v0, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->manager:Landroid/os/PowerManager;

    iget-object p0, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 p0, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method


# virtual methods
.method public final onScreenPowerStateUpdated(Lcom/android/systemui/power/shared/model/ScreenPowerState;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->repository:Lcom/android/systemui/power/data/repository/PowerRepository;

    check-cast p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->_screenPowerState:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final wakeUpForFullScreenIntent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.android.cts.verifier"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->repository:Lcom/android/systemui/power/data/repository/PowerRepository;

    check-cast p1, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;

    iget-object v0, p1, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->wakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    invoke-virtual {v0}, Lcom/android/systemui/power/shared/model/WakefulnessModel;->isAsleep()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x2

    const-string v0, "full_screen_intent"

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->wakeUp(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final wakeUpIfDozing(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->screenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->isAnimationPlaying()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->repository:Lcom/android/systemui/power/data/repository/PowerRepository;

    check-cast v0, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/power/data/repository/PowerRepositoryImpl;->wakeUp(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {p0}, Lcom/android/systemui/classifier/FalsingCollector;->onScreenOnFromTouch()V

    :cond_3
    :goto_1
    return-void
.end method
