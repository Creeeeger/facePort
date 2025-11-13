.class public final Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;
.super Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor$Companion;

.field public static final DEFAULT_DURATION:J

.field public static final TO_AOD_DURATION:J

.field public static final TO_DOZING_DURATION:J

.field public static final TO_DREAMING_DURATION:J

.field public static final TO_GLANCEABLE_HUB_DURATION:J

.field public static final TO_LOCKSCREEN_DURATION:J


# instance fields
.field public final biometricSettingsRepository:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;

.field public final communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

.field public final keyguardEnabledInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor;

.field public final keyguardRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final transitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->Companion:Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor$Companion;

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const/16 v1, 0x1f4

    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v1

    sput-wide v1, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->DEFAULT_DURATION:J

    const/16 v3, 0x3a5

    invoke-static {v3, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v4

    sput-wide v4, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->TO_DREAMING_DURATION:J

    const/16 v4, 0x514

    invoke-static {v4, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v4

    sput-wide v4, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->TO_AOD_DURATION:J

    invoke-static {v3, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v3

    sput-wide v3, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->TO_DOZING_DURATION:J

    sput-wide v1, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->TO_LOCKSCREEN_DURATION:J

    sput-wide v1, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->TO_GLANCEABLE_HUB_DURATION:J

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardEnabledInteractor;)V
    .locals 10

    move-object v9, p0

    sget-object v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p4

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    iput-object v0, v9, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->transitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    move-object v0, p3

    iput-object v0, v9, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v0, p8

    iput-object v0, v9, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    return-void
.end method


# virtual methods
.method public final getDefaultAnimatorForTransitionsToState(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Landroid/animation/ValueAnimator;
    .locals 2

    new-instance p0, Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v0, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->DEFAULT_DURATION:J

    goto :goto_0

    :cond_0
    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->TO_GLANCEABLE_HUB_DURATION:J

    goto :goto_0

    :cond_1
    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->TO_LOCKSCREEN_DURATION:J

    goto :goto_0

    :cond_2
    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->TO_DOZING_DURATION:J

    goto :goto_0

    :cond_3
    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->TO_AOD_DURATION:J

    goto :goto_0

    :cond_4
    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->TO_DREAMING_DURATION:J

    :goto_0
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final getTransitionRepository()Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->transitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    return-object p0
.end method

.method public final start()V
    .locals 6

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor$listenForGoneToAodOrDozing$$inlined$launch$default$1;

    const-string v2, "FromGoneTransitionInteractor#listenForGoneToAodOrDozing"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor$listenForGoneToAodOrDozing$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v4, 0x2

    invoke-static {v2, v0, v3, v1, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor$listenForGoneToDreaming$$inlined$launch$default$1;

    const-string v5, "FromGoneTransitionInteractor#listenForGoneToDreaming"

    invoke-direct {v1, v5, v3, p0}, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor$listenForGoneToDreaming$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;)V

    invoke-static {v2, v0, v3, v1, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor$listenForGoneToLockscreenOrHub$$inlined$launch$default$2;

    const-string v5, "FromGoneTransitionInteractor#listenForGoneToLockscreenOrHub"

    invoke-direct {v1, v5, v3, p0}, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor$listenForGoneToLockscreenOrHub$$inlined$launch$default$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;)V

    invoke-static {v2, v0, v3, v1, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor$listenForGoneToDreamingLockscreenHosted$$inlined$launch$default$1;

    const-string v5, "FromGoneTransitionInteractor#listenForGoneToDreamingLockscreenHosted"

    invoke-direct {v1, v5, v3, p0}, Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor$listenForGoneToDreamingLockscreenHosted$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromGoneTransitionInteractor;)V

    invoke-static {v2, v0, v3, v1, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
