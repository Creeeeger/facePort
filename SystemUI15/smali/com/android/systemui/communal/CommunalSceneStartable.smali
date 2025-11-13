.class public final Lcom/android/systemui/communal/CommunalSceneStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final AWAKE_DEBOUNCE_DELAY:J

.field public static final Companion:Lcom/android/systemui/communal/CommunalSceneStartable$Companion;

.field public static final DEFAULT_SCREEN_TIMEOUT:I


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final bgScope:Lkotlinx/coroutines/CoroutineScope;

.field public final centralSurfaces$delegate:Ljava/util/Optional;

.field public final communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

.field public final communalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

.field public final dockManager:Lcom/android/systemui/dock/DockManager;

.field public isDreaming:Z

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public screenTimeout:I

.field public final systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

.field public timeoutJob:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v1, "getCentralSurfaces()Lcom/android/systemui/statusbar/phone/CentralSurfaces;"

    const/4 v2, 0x0

    const-class v3, Lcom/android/systemui/communal/CommunalSceneStartable;

    const-string v4, "centralSurfaces"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0}, [Lkotlin/reflect/KProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/communal/CommunalSceneStartable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/android/systemui/communal/CommunalSceneStartable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/CommunalSceneStartable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/CommunalSceneStartable;->Companion:Lcom/android/systemui/communal/CommunalSceneStartable$Companion;

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v1

    sput-wide v1, Lcom/android/systemui/communal/CommunalSceneStartable;->AWAKE_DEBOUNCE_DELAY:J

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    const/16 v0, 0x3a98

    sput v0, Lcom/android/systemui/communal/CommunalSceneStartable;->DEFAULT_SCREEN_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/util/settings/SystemSettings;Ljava/util/Optional;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dock/DockManager;",
            "Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;",
            "Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;",
            "Lcom/android/systemui/util/settings/SystemSettings;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
            ">;",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->dockManager:Lcom/android/systemui/dock/DockManager;

    iput-object p2, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iput-object p3, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->communalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

    iput-object p4, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iput-object p5, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iput-object p6, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    iput-object p8, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iput-object p9, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p10, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->bgScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p11, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    sget p1, Lcom/android/systemui/communal/CommunalSceneStartable;->DEFAULT_SCREEN_TIMEOUT:I

    iput p1, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->screenTimeout:I

    iput-object p7, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->centralSurfaces$delegate:Ljava/util/Optional;

    return-void
.end method

.method public static final access$determineSceneAfterTransition(Lcom/android/systemui/communal/CommunalSceneStartable;Lcom/android/systemui/keyguard/shared/model/TransitionStep;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcom/android/systemui/communal/CommunalSceneStartable$determineSceneAfterTransition$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/communal/CommunalSceneStartable$determineSceneAfterTransition$1;

    iget v1, v0, Lcom/android/systemui/communal/CommunalSceneStartable$determineSceneAfterTransition$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/communal/CommunalSceneStartable$determineSceneAfterTransition$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/communal/CommunalSceneStartable$determineSceneAfterTransition$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/communal/CommunalSceneStartable$determineSceneAfterTransition$1;-><init>(Lcom/android/systemui/communal/CommunalSceneStartable;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/communal/CommunalSceneStartable$determineSceneAfterTransition$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/communal/CommunalSceneStartable$determineSceneAfterTransition$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    iget-object v2, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->dockManager:Lcom/android/systemui/dock/DockManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->centralSurfaces$delegate:Ljava/util/Optional;

    sget-object v4, Lcom/android/systemui/communal/CommunalSceneStartable;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v2, p0, v4}, Lcom/android/systemui/util/kotlin/DaggerKt;->getValue(Ljava/util/Optional;Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    if-eqz v2, :cond_3

    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean v5, v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsLaunchingActivityOverLockscreen:Z

    :cond_3
    sget-object v2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OCCLUDED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne p2, v2, :cond_4

    if-nez v5, :cond_4

    sget-object p0, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Blank:Lcom/android/compose/animation/scene/SceneKey;

    :goto_1
    move-object v1, p0

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GLANCEABLE_HUB:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne p2, v4, :cond_5

    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->from:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne p1, v2, :cond_5

    sget-object p0, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    if-ne p2, p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->editModeOpen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_6

    sget-object p0, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Blank:Lcom/android/compose/animation/scene/SceneKey;

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->Companion:Lcom/android/systemui/keyguard/shared/model/KeyguardState$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/keyguard/shared/model/KeyguardState$Companion;->deviceIsAwakeInState(Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Z

    move-result p0

    if-nez p0, :cond_8

    iput v3, v0, Lcom/android/systemui/communal/CommunalSceneStartable$determineSceneAfterTransition$1;->label:I

    sget-wide p0, Lcom/android/systemui/communal/CommunalSceneStartable;->AWAKE_DEBOUNCE_DELAY:J

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    sget-object p0, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Blank:Lcom/android/compose/animation/scene/SceneKey;

    goto :goto_1

    :cond_8
    const/4 p0, 0x0

    goto :goto_1

    :goto_3
    return-object v1
.end method


# virtual methods
.method public final start()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$2;

    new-instance v1, Lcom/android/systemui/communal/CommunalSceneStartable$start$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/communal/CommunalSceneStartable$start$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/communal/CommunalSceneStartable$start$2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/communal/CommunalSceneStartable$start$2;-><init>(Lcom/android/systemui/communal/CommunalSceneStartable;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v3, v1, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v3, v0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    sget-object v0, Lcom/android/systemui/util/settings/SettingsProxyExt;->INSTANCE:Lcom/android/systemui/util/settings/SettingsProxyExt;

    const-string v1, "screen_off_timeout"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/util/settings/SettingsProxyExt;->observerFlow(Lcom/android/systemui/util/settings/SettingsProxy;[Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/util/kotlin/FlowKt$emitOnStart$1;

    invoke-direct {v1, v2}, Lcom/android/systemui/util/kotlin/FlowKt$emitOnStart$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v3, v1, v0}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance v0, Lcom/android/systemui/communal/CommunalSceneStartable$start$3;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/communal/CommunalSceneStartable$start$3;-><init>(Lcom/android/systemui/communal/CommunalSceneStartable;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v1, v3, v0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    iget-object v0, p0, Lcom/android/systemui/communal/CommunalSceneStartable;->bgScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/android/systemui/communal/CommunalSceneStartable$start$4;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/communal/CommunalSceneStartable$start$4;-><init>(Lcom/android/systemui/communal/CommunalSceneStartable;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/android/systemui/communal/CommunalSceneStartable$start$5;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/communal/CommunalSceneStartable$start$5;-><init>(Lcom/android/systemui/communal/CommunalSceneStartable;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/android/systemui/communal/CommunalSceneStartable$start$6;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/communal/CommunalSceneStartable$start$6;-><init>(Lcom/android/systemui/communal/CommunalSceneStartable;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
