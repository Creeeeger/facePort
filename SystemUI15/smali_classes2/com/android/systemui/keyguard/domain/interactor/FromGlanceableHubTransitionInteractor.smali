.class public final Lcom/android/systemui/keyguard/domain/interactor/FromGlanceableHubTransitionInteractor;
.super Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/domain/interactor/FromGlanceableHubTransitionInteractor$Companion;

.field public static final DEFAULT_DURATION:J

.field public static final TO_LOCKSCREEN_DURATION:J

.field public static final TO_OCCLUDED_DURATION:J


# instance fields
.field public final glanceableHubTransitions:Lcom/android/systemui/keyguard/domain/interactor/GlanceableHubTransitions;

.field public final transitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromGlanceableHubTransitionInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromGlanceableHubTransitionInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/domain/interactor/FromGlanceableHubTransitionInteractor;->Companion:Lcom/android/systemui/keyguard/domain/interactor/FromGlanceableHubTransitionInteractor$Companion;

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v0, 0x1

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromGlanceableHubTransitionInteractor;->DEFAULT_DURATION:J

    sput-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromGlanceableHubTransitionInteractor;->TO_LOCKSCREEN_DURATION:J

    const/16 v0, 0x1c2

    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromGlanceableHubTransitionInteractor;->TO_OCCLUDED_DURATION:J

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyguard/domain/interactor/GlanceableHubTransitions;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;)V
    .locals 9

    sget-object v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GLANCEABLE_HUB:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v2, p7

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/FromGlanceableHubTransitionInteractor;->transitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    return-void
.end method


# virtual methods
.method public final getDefaultAnimatorForTransitionsToState(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Landroid/animation/ValueAnimator;
    .locals 2

    new-instance p0, Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v0, Lcom/android/systemui/keyguard/domain/interactor/FromGlanceableHubTransitionInteractor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromGlanceableHubTransitionInteractor;->DEFAULT_DURATION:J

    goto :goto_0

    :cond_0
    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromGlanceableHubTransitionInteractor;->TO_OCCLUDED_DURATION:J

    goto :goto_0

    :cond_1
    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromGlanceableHubTransitionInteractor;->TO_LOCKSCREEN_DURATION:J

    :goto_0
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final getTransitionRepository()Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/FromGlanceableHubTransitionInteractor;->transitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    return-object p0
.end method

.method public final start()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-static {}, Lcom/android/systemui/Flags;->communalHub()V

    return-void
.end method
