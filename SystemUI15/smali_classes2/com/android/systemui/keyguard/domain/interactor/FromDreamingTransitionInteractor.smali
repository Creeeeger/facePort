.class public final Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;
.super Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$Companion;

.field public static final DEFAULT_DURATION:J

.field public static final TO_AOD_DURATION:J

.field public static final TO_GLANCEABLE_HUB_DURATION:J

.field public static final TO_GONE_DURATION:J

.field public static final TO_LOCKSCREEN_DURATION:J


# instance fields
.field public final glanceableHubTransitions:Lcom/android/systemui/keyguard/domain/interactor/GlanceableHubTransitions;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final transitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->Companion:Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$Companion;

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const/16 v1, 0x1f4

    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v1

    sput-wide v1, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->DEFAULT_DURATION:J

    const/4 v3, 0x1

    sget-object v4, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v3, v4}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v3

    sput-wide v3, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->TO_GLANCEABLE_HUB_DURATION:J

    const/16 v3, 0x48f

    invoke-static {v3, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v3

    sput-wide v3, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->TO_LOCKSCREEN_DURATION:J

    const/16 v3, 0x12c

    invoke-static {v3, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v3

    sput-wide v3, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->TO_AOD_DURATION:J

    sput-wide v1, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->TO_GONE_DURATION:J

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/domain/interactor/GlanceableHubTransitions;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;)V
    .locals 10

    move-object v9, p0

    sget-object v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DREAMING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p4

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    iput-object v0, v9, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->transitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    move-object v0, p3

    iput-object v0, v9, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final getDefaultAnimatorForTransitionsToState(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Landroid/animation/ValueAnimator;
    .locals 2

    new-instance p0, Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->DEFAULT_DURATION:J

    goto :goto_0

    :cond_0
    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->TO_GLANCEABLE_HUB_DURATION:J

    goto :goto_0

    :cond_1
    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->TO_LOCKSCREEN_DURATION:J

    :goto_0
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final getTransitionRepository()Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->transitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    return-object p0
.end method

.method public final start()V
    .locals 5

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$listenForDreamingToAlternateBouncer$$inlined$launch$default$1;

    const-string v2, "FromDreamingTransitionInteractor#listenForDreamingToAlternateBouncer"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$listenForDreamingToAlternateBouncer$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;)V

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v4, v0, v3, v1, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$listenForDreamingToOccluded$2;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$listenForDreamingToOccluded$2;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {v4, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$listenForDreamingToGoneWhenDismissable$1;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$listenForDreamingToGoneWhenDismissable$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$listenForDreamingToGoneFromBiometricUnlock$1;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$listenForDreamingToGoneFromBiometricUnlock$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$listenForDreamingToAodOrDozing$1;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$listenForDreamingToAodOrDozing$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->listenForTransitionToCamera(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V

    invoke-static {}, Lcom/android/systemui/Flags;->communalHub()V

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$listenForDreamingToPrimaryBouncer$1;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$listenForDreamingToPrimaryBouncer$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final startToLockscreenTransition()V
    .locals 3

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$startToLockscreenTransition$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$startToLockscreenTransition$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
