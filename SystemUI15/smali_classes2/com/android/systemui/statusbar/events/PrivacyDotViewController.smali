.class public Lcom/android/systemui/statusbar/events/PrivacyDotViewController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final animationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

.field public applyDelayNextViewState:Z

.field public bl:Landroid/view/View;

.field public br:Landroid/view/View;

.field public cancelRunnable:Ljava/lang/Runnable;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

.field public createListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$CreateListener;

.field public currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

.field public final indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public final lock:Ljava/lang/Object;

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

.field public final privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field public showingListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$ShowingListener;

.field public final stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final systemStatusAnimationCallback:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1;

.field public tl:Landroid/view/View;

.field public tr:Landroid/view/View;

.field public uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->animationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    move-object/from16 v4, p8

    iput-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    move-object/from16 v4, p9

    iput-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    new-instance v15, Lcom/android/systemui/statusbar/events/ViewState;

    move-object v4, v15

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v26, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v24, 0x7ffff

    const/16 v25, 0x0

    invoke-direct/range {v4 .. v25}, Lcom/android/systemui/statusbar/events/ViewState;-><init>(ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v26

    iput-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v24, 0x7ffff

    invoke-static/range {v4 .. v24}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIIZI)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    new-instance v4, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$1;

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->listeners:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$2;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$2;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$3;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$3;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    new-instance v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$4;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$4;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    move-object/from16 v2, p10

    iget-object v3, v2, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->expansionStateListeners$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateChangeEvent;

    invoke-virtual/range {p10 .. p10}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateInteractor;->getRepository()Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shade/data/repository/SecPanelExpansionStateRepository;->panelState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/systemui/shade/domain/interactor/SecPanelExpansionStateChangeEvent;-><init>(I)V

    new-instance v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->systemStatusAnimationCallback:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1;

    return-void
.end method

.method public static final access$updateStatusBarState(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    iget-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    move v5, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v22, 0x7fffb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v2 .. v22}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIIZI)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final activeRotationForCorner(Landroid/view/View;Z)I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_8

    :cond_1
    move v2, v3

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x3

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v4

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz p0, :cond_6

    move-object v1, p0

    :cond_6
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v2, 0x2

    if-eqz p0, :cond_7

    if-eqz p2, :cond_1

    goto :goto_3

    :cond_7
    if-eqz p2, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    return v2
.end method

.method public final cornerForView(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x3

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz p0, :cond_6

    move-object v1, p0

    :cond_6
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x2

    :goto_3
    return p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not a corner view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getViews()Lkotlin/sequences/Sequence;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Landroid/view/View;

    invoke-static {p0}, Lkotlin/sequences/SequencesKt__SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    goto :goto_3

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    const/4 v1, 0x1

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v3

    :goto_2
    const/4 v1, 0x2

    aput-object v0, v2, v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz p0, :cond_4

    move-object v3, p0

    :cond_4
    const/4 p0, 0x3

    aput-object v3, v2, p0

    invoke-static {v2}, Lkotlin/sequences/SequencesKt__SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public initialize(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    iget-object v7, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v7, :cond_3

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v6

    :goto_2
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    return-void

    :cond_3
    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    iput-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    iput-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    iput-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->isLayoutRtl()Z

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v2, :cond_4

    move-object v6, v2

    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->selectDesignatedCorner(IZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerForView(Landroid/view/View;)I

    move-result v3

    :goto_3
    move/from16 v19, v3

    goto :goto_4

    :cond_5
    const/4 v3, -0x1

    goto :goto_3

    :goto_4
    iget-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentAreaForRotation(I)Landroid/graphics/Rect;

    move-result-object v15

    iget-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentAreaForRotation(I)Landroid/graphics/Rect;

    move-result-object v12

    iget-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentAreaForRotation(I)Landroid/graphics/Rect;

    move-result-object v13

    iget-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentAreaForRotation(I)Landroid/graphics/Rect;

    move-result-object v14

    iget-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarPaddingTop()I

    move-result v18

    new-instance v3, Lcom/android/systemui/statusbar/events/ViewState;

    move-object/from16 v20, v3

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const v40, 0x7ffff

    const/16 v41, 0x0

    invoke-direct/range {v20 .. v41}, Lcom/android/systemui/statusbar/events/ViewState;-><init>(ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    iget-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v7, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0x7e20e

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v16, v1

    move-object/from16 v20, v2

    invoke-static/range {v7 .. v27}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIIZI)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public innerGravity(I)I
    .locals 2

    const/16 p0, 0x15

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/16 v1, 0x13

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a corner"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move p0, v1

    :cond_2
    :goto_0
    return p0
.end method

.method public needsLayout(Lcom/android/systemui/statusbar/events/ViewState;Lcom/android/systemui/statusbar/events/ViewState;)Z
    .locals 1

    iget p0, p2, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    iget v0, p1, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    if-ne v0, p0, :cond_1

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/events/ViewState;->layoutRtl:Z

    iget-boolean v0, p2, Lcom/android/systemui/statusbar/events/ViewState;->layoutRtl:Z

    if-ne p0, v0, :cond_1

    iget-object p0, p1, Lcom/android/systemui/statusbar/events/ViewState;->portraitRect:Landroid/graphics/Rect;

    iget-object v0, p2, Lcom/android/systemui/statusbar/events/ViewState;->portraitRect:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/systemui/statusbar/events/ViewState;->landscapeRect:Landroid/graphics/Rect;

    iget-object v0, p2, Lcom/android/systemui/statusbar/events/ViewState;->landscapeRect:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/systemui/statusbar/events/ViewState;->upsideDownRect:Landroid/graphics/Rect;

    iget-object v0, p2, Lcom/android/systemui/statusbar/events/ViewState;->upsideDownRect:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/systemui/statusbar/events/ViewState;->seascapeRect:Landroid/graphics/Rect;

    iget-object v0, p2, Lcom/android/systemui/statusbar/events/ViewState;->seascapeRect:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingLeft:I

    iget v0, p2, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingLeft:I

    if-ne p0, v0, :cond_1

    iget p0, p1, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingRight:I

    iget v0, p2, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingRight:I

    if-ne p0, v0, :cond_1

    iget p0, p1, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetLeft:I

    iget v0, p2, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetLeft:I

    if-ne p0, v0, :cond_1

    iget p0, p1, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetRight:I

    iget v0, p2, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetRight:I

    if-ne p0, v0, :cond_1

    iget p0, p1, Lcom/android/systemui/statusbar/events/ViewState;->paddingTop:I

    iget p1, p2, Lcom/android/systemui/statusbar/events/ViewState;->paddingTop:I

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final selectDesignatedCorner(IZ)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_8

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz p0, :cond_a

    :goto_0
    move-object v1, p0

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "unknown rotation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz p0, :cond_a

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz p0, :cond_a

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz p0, :cond_a

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz p0, :cond_a

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_9

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz p0, :cond_a

    goto :goto_0

    :cond_a
    :goto_2
    return-object v1
.end method

.method public setCameraListener(Lcom/android/systemui/CameraAvailabilityListener;)V
    .locals 0

    return-void
.end method

.method public setCornerSizes(Lcom/android/systemui/statusbar/events/ViewState;)V
    .locals 10

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070d0b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move-object v3, v2

    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070c58

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const v5, 0x7f0a092d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_6

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move-object v0, v2

    :goto_6
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/events/ViewState;->layoutRtl:Z

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v4, :cond_9

    goto :goto_7

    :cond_9
    move-object v4, v2

    :goto_7
    const/4 v5, 0x0

    iget v6, p1, Lcom/android/systemui/statusbar/events/ViewState;->paddingTop:I

    invoke-virtual {v4, v5, v6, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v4, :cond_a

    goto :goto_8

    :cond_a
    move-object v4, v2

    :goto_8
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v0, p1, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingRight:I

    iget v7, p1, Lcom/android/systemui/statusbar/events/ViewState;->statusBarPaddingLeft:I

    if-eqz v3, :cond_b

    sub-int v8, v7, v1

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_9

    :cond_b
    sub-int v8, v0, v1

    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v4, :cond_c

    goto :goto_a

    :cond_c
    move-object v4, v2

    :goto_a
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v8, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v8, :cond_d

    goto :goto_b

    :cond_d
    move-object v8, v2

    :goto_b
    invoke-virtual {v8, v5, v6, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v8, :cond_e

    goto :goto_c

    :cond_e
    move-object v8, v2

    :goto_c
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v4, Landroid/graphics/Rect;->top:I

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v3, :cond_f

    sub-int v4, v7, v1

    iput v4, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_d

    :cond_f
    sub-int v4, v0, v1

    iput v4, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_d
    iget-object v4, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v4, :cond_10

    goto :goto_e

    :cond_10
    move-object v4, v2

    :goto_e
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v8, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v8, :cond_11

    goto :goto_f

    :cond_11
    move-object v8, v2

    :goto_f
    invoke-virtual {v8, v5, v6, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v8, :cond_12

    goto :goto_10

    :cond_12
    move-object v8, v2

    :goto_10
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v4, Landroid/graphics/Rect;->top:I

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v3, :cond_13

    sub-int v4, v7, v1

    iput v4, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_11

    :cond_13
    iget v4, p1, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetRight:I

    add-int/2addr v4, v0

    sub-int/2addr v4, v1

    iput v4, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_11
    iget-object v4, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v4, :cond_14

    goto :goto_12

    :cond_14
    move-object v4, v2

    :goto_12
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->activeRotationForCorner(Landroid/view/View;Z)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/events/ViewState;->contentRectForRotation(I)Landroid/graphics/Rect;

    move-result-object v4

    iget-object v8, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v8, :cond_15

    goto :goto_13

    :cond_15
    move-object v8, v2

    :goto_13
    invoke-virtual {v8, v5, v6, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz p0, :cond_16

    move-object v2, p0

    :cond_16
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eqz v3, :cond_17

    iget p1, p1, Lcom/android/systemui/statusbar/events/ViewState;->stableInsetLeft:I

    add-int/2addr v7, p1

    sub-int/2addr v7, v1

    iput v7, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_14

    :cond_17
    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_14
    return-void
.end method

.method public final setCornerVisibilities()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->showingListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$ShowingListener;

    if-eqz v2, :cond_0

    check-cast v2, Lcom/android/systemui/ScreenDecorations$2;

    iget-object v2, v2, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {v2, v1}, Lcom/android/systemui/ScreenDecorations;->updateOverlayWindowVisibilityIfViewExists(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setNewRotation(I)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v11, p1

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    iget v3, v2, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne v11, v3, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/events/ViewState;->layoutRtl:Z

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setCornerVisibilities()V

    invoke-virtual {v0, v11, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->selectDesignatedCorner(IZ)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerForView(Landroid/view/View;)I

    move-result v1

    :goto_0
    move v13, v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarPaddingTop()I

    move-result v12

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v15, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0x7e1ff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object/from16 v22, v15

    move-object/from16 v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v23, v1

    move-object/from16 v1, v22

    move/from16 v11, p1

    :try_start_3
    invoke-static/range {v1 .. v21}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIIZI)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v23

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v23, v1

    :goto_2
    monitor-exit v23

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    iget v0, v0, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    iget v1, p1, Lcom/android/systemui/statusbar/events/ViewState;->rotation:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->applyDelayNextViewState:Z

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cancelRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$scheduleUpdate$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$scheduleUpdate$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->applyDelayNextViewState:Z

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x12c

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cancelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public shouldShowDot(Lcom/android/systemui/statusbar/events/ViewState;)Z
    .locals 0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/events/ViewState;->systemPrivacyEventIsActive:Z

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/events/ViewState;->shadeExpanded:Z

    if-nez p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/events/ViewState;->qsExpanded:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateGarden(IILandroid/view/WindowInsets;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v4

    iget v14, v4, Landroid/graphics/Insets;->left:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->right:I

    iget-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarPaddingTop()I

    move-result v18

    const/16 v17, 0x0

    const/16 v22, 0x0

    const v23, 0x43bff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v20, v14

    move/from16 v14, v18

    move/from16 v18, p1

    move/from16 v19, p2

    move/from16 v21, v1

    invoke-static/range {v3 .. v23}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIILandroid/view/View;Ljava/lang/String;IIIIZI)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public updateRotations(II)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerForView(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v2, p1

    if-gez v2, :cond_0

    add-int/lit8 v2, v2, 0x4

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    const/16 v4, 0x53

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not a corner"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/16 v4, 0x55

    goto :goto_1

    :cond_3
    const/16 v4, 0x35

    goto :goto_1

    :cond_4
    const/16 v4, 0x33

    :goto_1
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v3, 0x7f0a092d

    invoke-virtual {v1, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->innerGravity(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_5
    return-void
.end method
