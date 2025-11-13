.class public final Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;
.super Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$Companion;

.field public static final DEFAULT_DURATION:J

.field public static final TO_GONE_DURATION:J

.field public static final TO_LOCKSCREEN_DURATION:J

.field public static final TO_PRIMARY_BOUNCER_DURATION:J


# instance fields
.field public final canTransitionToGoneOnWake:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

.field public final deviceEntryRepository:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepository;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final transitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;->Companion:Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$Companion;

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v0, 0x1f4

    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;->DEFAULT_DURATION:J

    sput-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;->TO_LOCKSCREEN_DURATION:J

    sput-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;->TO_GONE_DURATION:J

    sput-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;->TO_PRIMARY_BOUNCER_DURATION:J

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepository;)V
    .locals 11

    move-object v9, p0

    move-object/from16 v10, p6

    sget-object v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DOZING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p5

    move-object v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    iput-object v0, v9, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;->transitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    move-object v0, p3

    iput-object v0, v9, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v0, p8

    iput-object v0, v9, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    move-object/from16 v0, p10

    iput-object v0, v9, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;->deviceEntryRepository:Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepository;

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$canTransitionToGoneOnWake$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$canTransitionToGoneOnWake$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v2, v10, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardShowing:Lkotlinx/coroutines/flow/Flow;

    iget-object v3, v10, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardDismissible:Lkotlinx/coroutines/flow/StateFlow;

    invoke-direct {v1, v2, v3, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iput-object v1, v9, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;->canTransitionToGoneOnWake:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    return-void
.end method


# virtual methods
.method public final getDefaultAnimatorForTransitionsToState(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Landroid/animation/ValueAnimator;
    .locals 2

    new-instance p0, Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object p1, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;->DEFAULT_DURATION:J

    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final getTransitionRepository()Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;->transitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    return-object p0
.end method

.method public final start()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToAny$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x3

    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToGoneViaBiometrics$1;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor$listenForDozingToGoneViaBiometrics$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromDozingTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->listenForTransitionToCamera(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V

    return-void
.end method
