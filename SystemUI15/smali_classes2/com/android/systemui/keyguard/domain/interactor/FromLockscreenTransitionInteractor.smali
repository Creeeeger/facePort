.class public final Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;
.super Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$Companion;

.field public static final DEFAULT_DURATION:J

.field public static final TO_AOD_DURATION:J

.field public static final TO_DOZING_DURATION:J

.field public static final TO_DREAMING_DURATION:J

.field public static final TO_DREAMING_HOSTED_DURATION:J

.field public static final TO_GLANCEABLE_HUB_DURATION:J

.field public static final TO_GONE_DURATION:J

.field public static final TO_OCCLUDED_DURATION:J

.field public static final TO_PRIMARY_BOUNCER_DURATION:J


# instance fields
.field public final glanceableHubTransitions:Lcom/android/systemui/keyguard/domain/interactor/GlanceableHubTransitions;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

.field public final surfaceBehindVisibility:Lkotlinx/coroutines/flow/Flow;

.field public final swipeToDismissInteractor:Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor;

.field public final transitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->Companion:Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$Companion;

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    const/16 v1, 0x190

    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v1

    sput-wide v1, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->DEFAULT_DURATION:J

    const/16 v3, 0x1f4

    invoke-static {v3, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v4

    sput-wide v4, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_DOZING_DURATION:J

    const/16 v4, 0x3a5

    invoke-static {v4, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v5

    sput-wide v5, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_DREAMING_DURATION:J

    invoke-static {v4, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v4

    sput-wide v4, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_DREAMING_HOSTED_DURATION:J

    const/16 v4, 0x1c2

    invoke-static {v4, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v4

    sput-wide v4, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_OCCLUDED_DURATION:J

    invoke-static {v3, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v3

    sput-wide v3, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_AOD_DURATION:J

    sput-wide v1, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_PRIMARY_BOUNCER_DURATION:J

    const/16 v1, 0x279

    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_GONE_DURATION:J

    const/4 v0, 0x1

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_GLANCEABLE_HUB_DURATION:J

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/keyguard/domain/interactor/GlanceableHubTransitions;Lcom/android/systemui/keyguard/domain/interactor/SwipeToDismissInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;)V
    .locals 11

    move-object v9, p0

    sget-object v10, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, v10

    move-object v2, p2

    move-object/from16 v3, p5

    move-object v4, p4

    move-object/from16 v5, p8

    move-object/from16 v6, p11

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardOcclusionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, p1

    iput-object v0, v9, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->transitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    move-object v0, p3

    iput-object v0, v9, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v0, p7

    iput-object v0, v9, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/Edge;->Companion:Lcom/android/systemui/keyguard/shared/model/Edge$Companion;

    sget-object v1, Lcom/android/systemui/scene/shared/model/Scenes;->Gone:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;

    invoke-direct {v0, v10, v1}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToScene;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/compose/animation/scene/SceneKey;)V

    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v1, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v1, v10, v0}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    move-object v0, p2

    invoke-virtual {p2, v1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$special$$inlined$map$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$surfaceBehindVisibility$2;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$surfaceBehindVisibility$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v2, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->surfaceBehindVisibility:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final getDefaultAnimatorForTransitionsToState(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Landroid/animation/ValueAnimator;
    .locals 4

    new-instance p0, Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->DEFAULT_DURATION:J

    goto :goto_0

    :pswitch_0
    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_GLANCEABLE_HUB_DURATION:J

    goto :goto_0

    :pswitch_1
    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_DREAMING_HOSTED_DURATION:J

    goto :goto_0

    :pswitch_2
    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_DOZING_DURATION:J

    goto :goto_0

    :pswitch_3
    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_AOD_DURATION:J

    goto :goto_0

    :pswitch_4
    sget-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_OCCLUDED_DURATION:J

    goto :goto_0

    :pswitch_5
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 p1, 0x64

    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sget-wide v2, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_DREAMING_DURATION:J

    invoke-static {v2, v3, v0, v1}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTransitionRepository()Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->transitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    return-object p0
.end method

.method public final start()V
    .locals 7

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToGone$$inlined$launch$default$1;

    const-string v2, "FromLockscreenTransitionInteractor#listenForLockscreenToGone"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToGone$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v4, 0x2

    invoke-static {v2, v0, v3, v1, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToOccludedOrDreaming$$inlined$launch$default$2;

    const-string v5, "FromLockscreenTransitionInteractor#listenForLockscreenToOccludedOrDreaming"

    invoke-direct {v1, v5, v3, p0}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToOccludedOrDreaming$$inlined$launch$default$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;)V

    invoke-static {v2, v0, v3, v1, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToAodOrDozing$$inlined$launch$default$1;

    const-string v5, "FromLockscreenTransitionInteractor#listenForLockscreenToAodOrDozing"

    invoke-direct {v1, v5, v3, p0}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToAodOrDozing$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;)V

    invoke-static {v2, v0, v3, v1, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncer$$inlined$launch$default$1;

    const-string v5, "FromLockscreenTransitionInteractor#listenForLockscreenToPrimaryBouncer"

    invoke-direct {v1, v5, v3, p0}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncer$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;)V

    invoke-static {v2, v0, v3, v1, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardWmStateRefactor()V

    sget-object v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v5, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DOZING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    filled-new-array {v1, v5}, [Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    new-instance v5, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$$inlined$launch$default$1;

    const-string v6, "FromLockscreenTransitionInteractor#listenForLockscreenToDreaming"

    invoke-direct {v5, v6, v3, p0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;Ljava/util/Set;)V

    invoke-static {v2, v0, v3, v5, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v5, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncerDragging$$inlined$launch$default$1;

    const-string v6, "FromLockscreenTransitionInteractor#listenForLockscreenToPrimaryBouncerDragging"

    invoke-direct {v5, v6, v3, p0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncerDragging$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v2, v0, v3, v5, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToAlternateBouncer$$inlined$launch$default$1;

    const-string v5, "FromLockscreenTransitionInteractor#listenForLockscreenToAlternateBouncer"

    invoke-direct {v1, v5, v3, p0}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToAlternateBouncer$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;)V

    invoke-static {v2, v0, v3, v1, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;->listenForTransitionToCamera(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-static {}, Lcom/android/systemui/Flags;->communalHub()V

    return-void
.end method
