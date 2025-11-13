.class public final Lcom/android/systemui/shade/GlanceableHubContainerController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field public final ambientTouchComponentFactory:Lcom/android/systemui/ambient/touch/dagger/AmbientTouchComponent$Factory;

.field public anyBouncerShowing:Z

.field public final communalColors:Lcom/android/systemui/communal/util/CommunalColors;

.field public communalContainerView:Landroid/view/View;

.field public final communalContent:Lcom/android/systemui/communal/ui/compose/CommunalContent;

.field public final communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

.field public final communalViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;

.field public final dataSourceDelegator:Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;

.field public hubShowing:Z

.field public isTrackingHubTouch:Z

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field public final powerManager:Landroid/os/PowerManager;

.field public rightEdgeSwipeRegionWidth:I

.field public final shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

.field public shadeShowing:Z

.field public touchMonitor:Lcom/android/systemui/ambient/touch/TouchMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Landroid/os/PowerManager;Lcom/android/systemui/communal/util/CommunalColors;Lcom/android/systemui/ambient/touch/dagger/AmbientTouchComponent$Factory;Lcom/android/systemui/communal/ui/compose/CommunalContent;Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iput-object p2, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->communalViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalViewModel;

    iput-object p3, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iput-object p4, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    iput-object p5, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->powerManager:Landroid/os/PowerManager;

    iput-object p6, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->communalColors:Lcom/android/systemui/communal/util/CommunalColors;

    iput-object p7, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->ambientTouchComponentFactory:Lcom/android/systemui/ambient/touch/dagger/AmbientTouchComponent$Factory;

    iput-object p8, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->communalContent:Lcom/android/systemui/communal/ui/compose/CommunalContent;

    iput-object p9, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->dataSourceDelegator:Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;

    new-instance p1, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {p1, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p1, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-void
.end method

.method public static final access$updateTouchHandlingState(Lcom/android/systemui/shade/GlanceableHubContainerController;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->hubShowing:Z

    iget-object v1, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->shadeShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->anyBouncerShowing:Z

    if-nez v0, :cond_0

    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object p0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->communalContainerView:Landroid/view/View;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final initView$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Landroid/view/View;)Landroid/view/View;
    .locals 15

    move-object v6, p0

    move-object/from16 v14, p1

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, v6, Lcom/android/systemui/shade/GlanceableHubContainerController;->communalContainerView:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, v6, Lcom/android/systemui/shade/GlanceableHubContainerController;->touchMonitor:Lcom/android/systemui/ambient/touch/TouchMonitor;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v6, Lcom/android/systemui/shade/GlanceableHubContainerController;->ambientTouchComponentFactory:Lcom/android/systemui/ambient/touch/dagger/AmbientTouchComponent$Factory;

    invoke-interface {v1, p0, v0}, Lcom/android/systemui/ambient/touch/dagger/AmbientTouchComponent$Factory;->create(Landroidx/lifecycle/LifecycleOwner;Ljava/util/Set;)Lcom/android/systemui/ambient/touch/dagger/AmbientTouchComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/ambient/touch/dagger/AmbientTouchComponent;->getTouchMonitor()Lcom/android/systemui/ambient/touch/TouchMonitor;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mInitialized:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mLifecycleObserver:Lcom/android/systemui/ambient/touch/TouchMonitor$1;

    iget-object v2, v0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    sget-object v1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mInitialized:Z

    iput-object v0, v6, Lcom/android/systemui/shade/GlanceableHubContainerController;->touchMonitor:Lcom/android/systemui/ambient/touch/TouchMonitor;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMonitor already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, v6, Lcom/android/systemui/shade/GlanceableHubContainerController;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    iput-object v14, v6, Lcom/android/systemui/shade/GlanceableHubContainerController;->communalContainerView:Landroid/view/View;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Lcom/android/systemui/shade/GlanceableHubContainerController;->rightEdgeSwipeRegionWidth:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070210

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070208

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    new-instance v7, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$3;-><init>(Lcom/android/systemui/shade/GlanceableHubContainerController;ILandroid/view/View;ILkotlin/coroutines/Continuation;)V

    invoke-static {v14, v7}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    sget-object v0, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->INSTANCE:Lcom/android/systemui/util/kotlin/BooleanFlowOperators;

    iget-object v1, v6, Lcom/android/systemui/shade/GlanceableHubContainerController;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v2, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->primaryBouncerShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->alternateBouncerShowing:Lkotlinx/coroutines/flow/Flow;

    filled-new-array {v2, v3}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->anyOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$4;

    invoke-direct {v9, p0}, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$4;-><init>(Lcom/android/systemui/shade/GlanceableHubContainerController;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x18

    const/4 v13, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow$default(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;Landroidx/lifecycle/Lifecycle$State;ILjava/lang/Object;)V

    iget-object v2, v6, Lcom/android/systemui/shade/GlanceableHubContainerController;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object v8, v2, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalVisible:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor$special$$inlined$map$2;

    new-instance v9, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$5;

    invoke-direct {v9, p0}, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$5;-><init>(Lcom/android/systemui/shade/GlanceableHubContainerController;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x18

    const/4 v13, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow$default(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;Landroidx/lifecycle/Lifecycle$State;ILjava/lang/Object;)V

    iget-object v2, v6, Lcom/android/systemui/shade/GlanceableHubContainerController;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v2, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v3, v2, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isAnyFullyExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->isUserInteracting:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->not(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    filled-new-array {v3, v2}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators;->allOf([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$6;

    invoke-direct {v9, p0}, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$6;-><init>(Lcom/android/systemui/shade/GlanceableHubContainerController;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x18

    const/4 v13, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow$default(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;Landroidx/lifecycle/Lifecycle$State;ILjava/lang/Object;)V

    new-instance v2, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/shade/GlanceableHubContainerController$initView$7;-><init>(Lcom/android/systemui/shade/GlanceableHubContainerController;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isDreaming:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/16 v5, 0x18

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow$default(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;Landroidx/lifecycle/Lifecycle$State;ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/Flags;->glanceableHubFullscreenSwipe()V

    return-object v14

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Communal view has already been initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    sget-object v0, Lcom/android/systemui/flags/RefactorFlagUtils;->INSTANCE:Lcom/android/systemui/flags/RefactorFlagUtils;

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    invoke-static {}, Lcom/android/systemui/Flags;->glanceableHubFullscreenSwipe()V

    iget-object v0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->communalContainerView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->anyBouncerShowing:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->shadeShowing:Z

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    move v6, v1

    goto :goto_4

    :cond_4
    :goto_3
    move v6, v3

    :goto_4
    if-eqz v2, :cond_6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/android/systemui/Flags;->glanceableHubFullscreenSwipe()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->rightEdgeSwipeRegionWidth:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_5

    goto :goto_5

    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->hubShowing:Z

    if-eqz v2, :cond_6

    :goto_5
    iput-boolean v3, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->isTrackingHubTouch:Z

    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->isTrackingHubTouch:Z

    if-eqz v2, :cond_9

    if-nez v4, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    iput-boolean v1, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->isTrackingHubTouch:Z

    :cond_8
    const/4 v2, 0x2

    :try_start_0
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-static {}, Lcom/android/systemui/Flags;->glanceableHubFullscreenSwipe()V

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v2, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    move v1, v3

    goto :goto_6

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/systemui/shade/GlanceableHubContainerController;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v2, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    throw p1

    :cond_9
    :goto_6
    return v1
.end method
