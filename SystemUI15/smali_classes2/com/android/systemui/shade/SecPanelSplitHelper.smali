.class public final Lcom/android/systemui/shade/SecPanelSplitHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field public static final Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

.field public static final RATIO_URI:Landroid/net/Uri;

.field public static final REVERSED_URI:Landroid/net/Uri;

.field public static final SPLIT_URI:Landroid/net/Uri;

.field public static final USER_CHANGED:Landroid/net/Uri;

.field public static isEnabled:Z


# instance fields
.field public final context:Landroid/content/Context;

.field public currentOrientation:I

.field public currentState:I

.field public draggedFraction:F

.field public enabled:Z

.field public final executor:Ljava/util/concurrent/Executor;

.field public final expansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public isOnceOverExpanded:Z

.field public onceOverSlide:Z

.field public overSlideAmount:F

.field public panelExpanded:Z

.field public panelRootView:Landroid/view/View;

.field public final panelSlideEventHandler:Lcom/android/systemui/shade/PanelSlideEventHandler;

.field public qs:Lcom/android/systemui/plugins/qs/QS;

.field public qsAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

.field public qsFrame:Landroid/view/View;

.field public qsScrollView:Landroid/view/View;

.field public final quickSALog:Lcom/android/systemui/shade/SecPanelSplitHelper$QuickSALog;

.field public final quickSettingsControllerImpl:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

.field public final repository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

.field public reversed:Z

.field public final settingsHelper$delegate:Lkotlin/Lazy;

.field public final shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public shadeRootView:Landroid/view/View;

.field public shouldQsDownInLockscreen:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

.field public stateOnDown:I

.field public stateToChange:I

.field public final statusBarStateController$delegate:Lkotlin/Lazy;

.field public synthesizedActionDown:Landroid/view/MotionEvent;

.field public final userChanged:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    const-string/jumbo v0, "split_quick_panel"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->SPLIT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "split_quick_panel_reversed"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->REVERSED_URI:Landroid/net/Uri;

    const-string v0, "USER_CHANGED"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->USER_CHANGED:Landroid/net/Uri;

    const-string/jumbo v0, "split_quick_panel_ratio"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->RATIO_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/shade/QuickSettingsControllerImpl;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iput-object p3, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->quickSettingsControllerImpl:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iput-object p5, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->repository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    iput-object p7, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p8, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->executor:Ljava/util/concurrent/Executor;

    sget-object p7, Lcom/android/systemui/shade/SecPanelSplitHelper$settingsHelper$2;->INSTANCE:Lcom/android/systemui/shade/SecPanelSplitHelper$settingsHelper$2;

    invoke-static {p7}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p7

    iput-object p7, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->settingsHelper$delegate:Lkotlin/Lazy;

    sget-object p8, Lcom/android/systemui/shade/SecPanelSplitHelper$statusBarStateController$2;->INSTANCE:Lcom/android/systemui/shade/SecPanelSplitHelper$statusBarStateController$2;

    invoke-static {p8}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p8

    iput-object p8, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->statusBarStateController$delegate:Lkotlin/Lazy;

    new-instance p8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p8, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->expansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p8, Lcom/android/systemui/shade/PanelSlideEventHandler;

    invoke-direct {p8, p1, p2, p3, p0}, Lcom/android/systemui/shade/PanelSlideEventHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/shade/QuickSettingsControllerImpl;Lcom/android/systemui/shade/SecPanelSplitHelper;)V

    new-instance p1, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;-><init>(Lcom/android/systemui/shade/SecPanelSplitHelper;)V

    iput-object p1, p8, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    iput-object p8, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelSlideEventHandler:Lcom/android/systemui/shade/PanelSlideEventHandler;

    new-instance p1, Lcom/android/systemui/shade/SecPanelSplitHelper$QuickSALog;

    invoke-direct {p1}, Lcom/android/systemui/shade/SecPanelSplitHelper$QuickSALog;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->quickSALog:Lcom/android/systemui/shade/SecPanelSplitHelper$QuickSALog;

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateToChange:I

    sget-object v1, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->UNDECIDED:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    iput-object v1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->shouldQsDownInLockscreen:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    invoke-interface {p7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    new-array p1, p1, [Landroid/net/Uri;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/systemui/shade/SecPanelSplitHelper;->SPLIT_URI:Landroid/net/Uri;

    aput-object v3, p1, v2

    sget-object v2, Lcom/android/systemui/shade/SecPanelSplitHelper;->REVERSED_URI:Landroid/net/Uri;

    aput-object v2, p1, v0

    const/4 v0, 0x2

    sget-object v2, Lcom/android/systemui/shade/SecPanelSplitHelper;->RATIO_URI:Landroid/net/Uri;

    aput-object v2, p1, v0

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-interface {p7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplit()Z

    move-result p1

    iput-boolean p1, p8, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSplitEnabled:Z

    iget-object v0, p8, Lcom/android/systemui/shade/PanelSlideEventHandler;->statusBarStateController$delegate:Lkotlin/Lazy;

    iget-object v1, p8, Lcom/android/systemui/shade/PanelSlideEventHandler;->configurationController$delegate:Lkotlin/Lazy;

    iget-object v2, p8, Lcom/android/systemui/shade/PanelSlideEventHandler;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    if-eqz p1, :cond_0

    invoke-virtual {v2, p8}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, p8}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p8}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p8}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->removeExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)V

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, p8}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p8}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->setEnabled$1(Z)V

    invoke-interface {p7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplitReversed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->reversed:Z

    invoke-virtual {p6, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->addCallback(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;)V

    check-cast p9, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p9, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    check-cast p5, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object p1, p5, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->lockscreenShadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p5, p5, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyShadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p6, Lcom/android/systemui/shade/SecPanelSplitHelper$2$1;

    const/4 p7, 0x0

    invoke-direct {p6, p0, p7}, Lcom/android/systemui/shade/SecPanelSplitHelper$2$1;-><init>(Lcom/android/systemui/shade/SecPanelSplitHelper;Lkotlin/coroutines/Continuation;)V

    new-instance p7, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p7, p1, p5, p6}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p7}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    invoke-virtual {p2, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->getStatusBarStateController$2()Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object p1, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    new-instance p1, Lcom/android/systemui/shade/SecPanelSplitHelper$userChanged$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/shade/SecPanelSplitHelper$userChanged$1;-><init>(Lcom/android/systemui/shade/SecPanelSplitHelper;)V

    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->userChanged:Lcom/android/systemui/settings/UserTracker$Callback;

    return-void
.end method

.method public static final isEnabled()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    return v0
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->expansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->enabled:Z

    iget v1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->draggedFraction:F

    iget v2, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    invoke-direct {p1, v0, v1, v2}, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;-><init>(ZFI)V

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->expansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/PanelTransitionStateListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/shade/PanelTransitionStateListener;->onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getMaxSlideDistance()F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getScreenWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public final getStatusBarStateController$2()Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->statusBarStateController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-object p0
.end method

.method public final handleTouch(Landroid/view/MotionEvent;)Z
    .locals 11

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelSlideEventHandler:Lcom/android/systemui/shade/PanelSlideEventHandler;

    iget-boolean v0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSplitEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->initialX:F

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->initialY:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_1

    const/4 v7, 0x3

    if-eq v3, v7, :cond_3

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/shade/PanelSlideEventHandler;->updateDirection(FF)V

    iget-boolean v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSliderIntercepted:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    sget-object v3, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->DOWN:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne v1, v3, :cond_2

    move v0, v2

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz v2, :cond_b

    iget-boolean p0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->tracking:Z

    iget-object v2, v2, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v2, v0, v1, p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->slide(FLcom/android/systemui/shade/PanelSlideEventHandler$Direction;Z)V

    goto/16 :goto_3

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSliderIntercepted:Z

    const/4 v7, 0x0

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget v3, v3, Lcom/android/systemui/shade/SecPanelSplitHelper;->draggedFraction:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v3, v6

    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget v3, v3, Lcom/android/systemui/shade/SecPanelSplitHelper;->draggedFraction:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v6

    :goto_1
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    sget-object v8, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->DOWN:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne v3, v8, :cond_6

    move v0, v2

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    new-instance v3, Lkotlin/Pair;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget-object v9, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne v9, v8, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/shade/PanelSlideEventHandler;->createSlideAnimatorAndRun(FF)V

    :cond_8
    iput-boolean v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->tracking:Z

    iput-boolean v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->fullyExpandedOnDown:Z

    iput-boolean v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSliderIntercepted:Z

    iput-boolean v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->slidingInitialized:Z

    iget-object p0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->overSlideAmount:F

    cmpg-float v0, v0, v7

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->draggedFraction:F

    cmpg-float v0, v0, v7

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->springBack()V

    :cond_a
    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->onceOverSlide:Z

    :cond_b
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne v4, p0, :cond_c

    goto :goto_4

    :cond_c
    move-object v6, v0

    :goto_4
    if-eqz v6, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    invoke-static {p0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "handleTouch: "

    const-string v0, ": FINAL: return true"

    const-string v1, "SecPanelSplitHelper"

    invoke-static {p1, p0, v0, v1}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    move v1, v5

    :goto_5
    return v1
.end method

.method public final isQSState()Z
    .locals 0

    iget p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isReversed()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->reversed:Z

    iget-boolean p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->enabled:Z

    if-eqz p0, :cond_3

    if-eqz v0, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public final isShadeState()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onChanged(Landroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_5

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->SPLIT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->REVERSED_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->USER_CHANGED:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->RATIO_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->enabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->panelExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelExpanded:Z

    :cond_1
    sget-object v0, Lcom/android/systemui/shade/SecPanelSplitHelper;->USER_CHANGED:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelExpanded:Z

    if-eqz p1, :cond_2

    sget p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->qsAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    if-eqz p1, :cond_3

    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->onUserSwitched(I)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->settingsHelper$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplit()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->setEnabled$1(Z)V

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isPanelSplitReversed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->reversed:Z

    iget-boolean p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->enabled:Z

    iget-object v1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    if-eqz p1, :cond_4

    invoke-virtual {v1, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->getStatusBarStateController$2()Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->quickSettingsControllerImpl:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->removeExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->getStatusBarStateController$2()Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->setQsFrameX(Z)V

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelSlideEventHandler:Lcom/android/systemui/shade/PanelSlideEventHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "SecPanelSplitHelper"

    const-string v0, "onChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/shade/PanelSlideEventHandler;->updateResource()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentOrientation:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->setQsFrameX(Z)V

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->enabled:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->qsFrame:Landroid/view/View;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onIntercept(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelSlideEventHandler:Lcom/android/systemui/shade/PanelSlideEventHandler;

    iget-boolean v2, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSplitEnabled:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto/16 :goto_1b

    :cond_0
    iget-boolean v2, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSliderIntercepted:Z

    const/4 v4, 0x1

    const-string v5, "onIntercept: "

    const/4 v6, 0x2

    const-string v8, "SecPanelSplitHelper"

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-ne v6, v0, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    move-object v7, v1

    :goto_0
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ": return true: panelSliderIntercepted == true"

    invoke-static {v5, v0, v1, v8}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v3, v4

    goto/16 :goto_1b

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v9, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->initialX:F

    sub-float/2addr v2, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->initialY:F

    sub-float/2addr v9, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    if-eqz v12, :cond_34

    if-eq v12, v4, :cond_2e

    if-eq v12, v6, :cond_4

    const/4 v10, 0x3

    if-eq v12, v10, :cond_2e

    goto/16 :goto_18

    :cond_4
    iget-object v12, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget v12, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->touchSlop:I

    int-to-float v12, v12

    cmpl-float v13, v10, v12

    if-gtz v13, :cond_5

    cmpl-float v14, v11, v12

    if-lez v14, :cond_35

    :cond_5
    invoke-virtual {v1, v2, v9}, Lcom/android/systemui/shade/PanelSlideEventHandler;->updateDirection(FF)V

    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    sget-object v9, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->LEFT:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-eq v2, v9, :cond_6

    sget-object v9, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->RIGHT:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne v2, v9, :cond_7

    :cond_6
    sget-object v2, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-eqz v2, :cond_7

    iget-object v0, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "onIntercept: TabletModel direction = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isEnabled = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    :cond_7
    iget-object v2, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget v2, v2, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    if-nez v2, :cond_8

    move v2, v4

    goto :goto_2

    :cond_8
    move v2, v3

    :goto_2
    if-eqz v2, :cond_9

    iget-object v9, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    sget-object v14, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->DOWN:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne v9, v14, :cond_9

    iget-boolean v9, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->canScrollDownOnDown:Z

    if-eqz v9, :cond_9

    iget-boolean v9, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->isInQsScrollerTopMarginArea:Z

    if-nez v9, :cond_9

    const-string v0, "onIntercept: ACTION_MOVE: return false: direction == DOWN && canScrollDownOnDown && !isInQsScrollerTopMarginArea"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    :cond_9
    cmpl-float v9, v11, v12

    if-lez v9, :cond_b

    iget-object v9, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    sget-object v14, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->DOWN:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne v9, v14, :cond_b

    iget v9, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->initialY:F

    iget-object v14, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->shadeHeaderController$delegate:Lkotlin/Lazy;

    invoke-interface {v14}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v14, v14, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v14

    int-to-float v14, v14

    cmpg-float v9, v9, v14

    if-gez v9, :cond_a

    iget-boolean v9, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->isInChangeSpotOnDown:Z

    goto :goto_3

    :cond_a
    move v9, v3

    :goto_3
    if-eqz v9, :cond_b

    move v9, v4

    goto :goto_4

    :cond_b
    move v9, v3

    :goto_4
    if-lez v13, :cond_e

    iget-object v13, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    sget-object v14, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->RIGHT:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-eq v13, v14, :cond_c

    sget-object v14, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->LEFT:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne v13, v14, :cond_e

    :cond_c
    iget-object v13, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz v13, :cond_d

    iget-object v13, v13, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget-boolean v13, v13, Lcom/android/systemui/shade/SecPanelSplitHelper;->isOnceOverExpanded:Z

    if-nez v13, :cond_d

    move v13, v4

    goto :goto_5

    :cond_d
    move v13, v3

    :goto_5
    if-eqz v13, :cond_e

    move v13, v4

    goto :goto_6

    :cond_e
    move v13, v3

    :goto_6
    if-eqz v2, :cond_10

    if-eqz v13, :cond_f

    iget-boolean v2, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->isInSlidableAreaOnDown:Z

    if-nez v2, :cond_f

    move v13, v4

    goto :goto_7

    :cond_f
    move v13, v3

    :cond_10
    :goto_7
    iget-boolean v2, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSliderIntercepted:Z

    const v14, 0x3f666666    # 0.9f

    if-nez v2, :cond_14

    iget-boolean v2, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->fullyExpandedOnDown:Z

    if-eqz v2, :cond_14

    iget-boolean v2, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelExpanded:Z

    if-eqz v2, :cond_14

    if-nez v9, :cond_11

    if-eqz v13, :cond_14

    :cond_11
    sget v2, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    if-ne v2, v4, :cond_12

    move v2, v4

    goto :goto_8

    :cond_12
    move v2, v3

    :goto_8
    if-nez v2, :cond_14

    iget v2, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelExpandFraction:F

    cmpl-float v2, v2, v14

    if-lez v2, :cond_14

    iget-boolean v2, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->isInGestureArea:Z

    if-nez v2, :cond_14

    iput-boolean v4, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSliderIntercepted:Z

    iget-object v0, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->interceptCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_13
    iget-object v0, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onIntercept: ACTION_MOVE: return true: direction: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->tracking:Z

    goto/16 :goto_1

    :cond_14
    iget-boolean v2, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelFullyExpanded:Z

    if-eqz v2, :cond_35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v15, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSliderIntercepted:Z

    if-eqz v15, :cond_15

    move-object v15, v2

    goto :goto_9

    :cond_15
    const/4 v15, 0x0

    :goto_9
    if-eqz v15, :cond_16

    const-string v7, "panelSliderIntercepted true, "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    iget-boolean v7, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->fullyExpandedOnDown:Z

    if-nez v7, :cond_17

    move-object v7, v2

    goto :goto_a

    :cond_17
    const/4 v7, 0x0

    :goto_a
    if-eqz v7, :cond_18

    const-string v15, "fullyExpandedOnDown false, "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    iget-boolean v7, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelExpanded:Z

    if-nez v7, :cond_19

    move-object v7, v2

    goto :goto_b

    :cond_19
    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_1a

    const-string v15, "panelExpanded false, "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    if-nez v9, :cond_23

    if-nez v13, :cond_23

    iget-object v7, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    sget-object v9, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->DOWN:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne v7, v9, :cond_1e

    cmpg-float v7, v11, v12

    if-gtz v7, :cond_1b

    move-object v7, v2

    goto :goto_c

    :cond_1b
    const/4 v7, 0x0

    :goto_c
    if-eqz v7, :cond_1c

    const-string v9, "isVerticalAllowed false by { height <= touchSlop }, "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    iget-boolean v7, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->isInChangeSpotOnDown:Z

    if-nez v7, :cond_1d

    move-object v7, v2

    goto :goto_d

    :cond_1d
    const/4 v7, 0x0

    :goto_d
    if-eqz v7, :cond_1e

    const-string v9, "isVerticalAllowed false by { !isInChangeSpotOnDown }, "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    iget-object v7, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    sget-object v9, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->LEFT:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-eq v7, v9, :cond_1f

    sget-object v9, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->RIGHT:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne v7, v9, :cond_23

    :cond_1f
    cmpg-float v7, v10, v12

    if-gtz v7, :cond_20

    move-object v7, v2

    goto :goto_e

    :cond_20
    const/4 v7, 0x0

    :goto_e
    if-eqz v7, :cond_21

    const-string v9, "isHorizontalAllowed false by { width <= touchSlop }, "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    iget-object v7, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz v7, :cond_22

    iget-object v7, v7, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget-boolean v7, v7, Lcom/android/systemui/shade/SecPanelSplitHelper;->isOnceOverExpanded:Z

    if-ne v7, v4, :cond_22

    move-object v7, v2

    goto :goto_f

    :cond_22
    const/4 v7, 0x0

    :goto_f
    if-eqz v7, :cond_23

    const-string v9, "isHorizontalAllowed false by { panelSlideEventCallback?.isOnCeOverExpanded }, "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    sget v7, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    if-ne v7, v4, :cond_24

    move v7, v4

    goto :goto_10

    :cond_24
    move v7, v3

    :goto_10
    if-eqz v7, :cond_25

    move-object v7, v2

    goto :goto_11

    :cond_25
    const/4 v7, 0x0

    :goto_11
    if-eqz v7, :cond_26

    const-string v9, "isKeyguardShowing() true, "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    iget v7, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelExpandFraction:F

    cmpg-float v7, v7, v14

    if-gtz v7, :cond_27

    move-object v7, v2

    goto :goto_12

    :cond_27
    const/4 v7, 0x0

    :goto_12
    if-eqz v7, :cond_28

    const-string v9, "panelExpandFraction <= PANEL_EXPANDED_FRACTION_THRESHOLD, "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    iget-boolean v7, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->isInGestureArea:Z

    if-eqz v7, :cond_29

    move-object v7, v2

    goto :goto_13

    :cond_29
    const/4 v7, 0x0

    :goto_13
    if-eqz v7, :cond_2a

    const-string v9, "isInGestureArea true, "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    iget-boolean v7, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->isInQsScrollerTopMarginArea:Z

    if-eqz v7, :cond_2b

    move-object v7, v2

    goto :goto_14

    :cond_2b
    const/4 v7, 0x0

    :goto_14
    if-eqz v7, :cond_2c

    const-string v9, "isInQsScrollerTopMarginArea true, "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->logBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2d

    goto :goto_15

    :cond_2d
    const/4 v2, 0x0

    :goto_15
    if-eqz v2, :cond_35

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "##############  not intercepted "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :cond_2e
    iget-boolean v7, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSliderIntercepted:Z

    if-eqz v7, :cond_33

    iget-object v7, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz v7, :cond_2f

    iget-object v7, v7, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget v7, v7, Lcom/android/systemui/shade/SecPanelSplitHelper;->draggedFraction:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_16

    :cond_2f
    const/4 v7, 0x0

    :goto_16
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v7

    if-nez v7, :cond_33

    iget-object v7, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz v7, :cond_30

    iget-object v7, v7, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget v7, v7, Lcom/android/systemui/shade/SecPanelSplitHelper;->draggedFraction:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_17

    :cond_30
    const/4 v7, 0x0

    :goto_17
    const/4 v10, 0x0

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v7

    if-nez v7, :cond_33

    iget-object v7, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    sget-object v10, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->DOWN:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne v7, v10, :cond_31

    move v2, v9

    :cond_31
    iget-object v7, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    invoke-virtual {v7, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    new-instance v9, Lkotlin/Pair;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual {v9}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v9}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    iget-object v11, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->direction:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne v11, v10, :cond_32

    move v7, v9

    :cond_32
    invoke-virtual {v1, v7, v2}, Lcom/android/systemui/shade/PanelSlideEventHandler;->createSlideAnimatorAndRun(FF)V

    iget-object v2, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    :cond_33
    iput-boolean v3, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->tracking:Z

    iput-boolean v3, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->fullyExpandedOnDown:Z

    iput-boolean v3, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->isInChangeSpotOnDown:Z

    iput-boolean v3, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->isInSlidableAreaOnDown:Z

    iput-boolean v3, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSliderIntercepted:Z

    iput-boolean v3, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->isInGestureArea:Z

    iput-boolean v3, v1, Lcom/android/systemui/shade/PanelSlideEventHandler;->isInQsScrollerTopMarginArea:Z

    goto :goto_18

    :cond_34
    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/PanelSlideEventHandler;->initiateSlide(Landroid/view/MotionEvent;)V

    :cond_35
    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ne v6, v1, :cond_36

    goto :goto_19

    :cond_36
    move v4, v3

    :goto_19
    if-nez v4, :cond_37

    move-object v7, v2

    goto :goto_1a

    :cond_37
    const/4 v7, 0x0

    :goto_1a
    if-eqz v7, :cond_38

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ": FINAL: return false"

    invoke-static {v5, v0, v1, v8}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    :goto_1b
    return v3
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelExpanded:Z

    iget-boolean p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->expanded:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelExpanded:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    sget v0, Lcom/android/systemui/shade/PanelTransitionState;->$r8$clinit:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->slide$1(I)V

    :goto_0
    const/4 p1, 0x0

    sput-boolean p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->isSliding:Z

    iput-boolean p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->onceOverSlide:Z

    iput-boolean p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->isOnceOverExpanded:Z

    :cond_2
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->quickSettingsControllerImpl:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->closeQs()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateOnDown:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->slide$1(I)V

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateToChange:I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final onStatePostChange()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->shadeRootView:Landroid/view/View;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final removeListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->expansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setDraggedFraction(F)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->draggedFraction:F

    new-instance v0, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;

    iget-boolean v1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->enabled:Z

    iget v2, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    invoke-direct {v0, v1, p1, v2}, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;-><init>(ZFI)V

    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->expansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/PanelTransitionStateListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/shade/PanelTransitionStateListener;->onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateOnDown:I

    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->draggedFraction:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/SecPanelSplitHelper;->setQsFrameX(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->setQsFrameX(Z)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_4

    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->draggedFraction:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->setQsFrameX(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/SecPanelSplitHelper;->setQsFrameX(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final setEnabled$1(Z)V
    .locals 5

    sput-boolean p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    iput-boolean p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->enabled:Z

    new-instance v0, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;

    iget v1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->draggedFraction:F

    iget v2, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;-><init>(ZFI)V

    iget-object v1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->expansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/PanelTransitionStateListener;

    invoke-interface {v2, v0}, Lcom/android/systemui/shade/PanelTransitionStateListener;->onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_DEBUG_LOG:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->enabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelExpanded:Z

    const-string v2, "enabled = "

    const-string v3, ", panelExpanded = "

    const-string v4, "SecPanelSplitHelper"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->enabled:Z

    iget-object v1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->quickSettingsControllerImpl:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelExpanded:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    sget v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    if-eq v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/SecPanelSplitHelper;->slide$1(I)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/shade/SecPanelSplitHelper;->setQsFrameX(Z)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->slide$1(I)V

    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->repository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_legacyExpandImmediate:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v4, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/qs/QS;->setOverScrollAmount(I)V

    :cond_4
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->qsFrame:Landroid/view/View;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    :cond_6
    :goto_2
    iput-boolean p1, v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelSplitEnabled:Z

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelSlideEventHandler:Lcom/android/systemui/shade/PanelSlideEventHandler;

    iput-boolean p1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSplitEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->statusBarStateController$delegate:Lkotlin/Lazy;

    iget-object v1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->configurationController$delegate:Lkotlin/Lazy;

    iget-object v2, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    if-eqz p1, :cond_7

    invoke-virtual {v2, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v2, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->removeExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)V

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    :goto_3
    return-void
.end method

.method public final setQsFrameX(Z)V
    .locals 6

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->enabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->shadeRootView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float/2addr v3, v1

    cmpl-float v3, v3, v0

    if-gtz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_3

    :cond_2
    int-to-float v3, v4

    div-float v4, v0, v3

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070b9a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result v1

    if-eqz v1, :cond_3

    sub-float/2addr v4, v0

    goto :goto_1

    :cond_3
    sub-float v4, v0, v4

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->qsFrame:Landroid/view/View;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    :cond_4
    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->qsFrame:Landroid/view/View;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final setTransitionToFullShadeAmount(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->enabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->getStatusBarStateController$2()Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->shouldQsDownInLockscreen:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    sget-object v1, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->UNDECIDED:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->shouldQsDownInLockscreen:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    sget-object v2, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->LEFT:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->getMaxSlideDistance()F

    move-result v0

    mul-float/2addr v0, p1

    sget-object p1, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->DOWN:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->slide(FLcom/android/systemui/shade/PanelSlideEventHandler$Direction;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->getMaxSlideDistance()F

    move-result v0

    mul-float/2addr v0, p1

    sget-object p1, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->DOWN:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->slide(FLcom/android/systemui/shade/PanelSlideEventHandler$Direction;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final shouldQSDown(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->synthesizedActionDown:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->panelSlideEventHandler:Lcom/android/systemui/shade/PanelSlideEventHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    :cond_2
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_DEBUG_LOG:Z

    const/4 v2, 0x0

    const-string v3, "SecPanelSplitHelper"

    if-eqz v0, :cond_4

    sget v4, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    iget-object v5, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget v5, v5, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v2

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "shouldQSDown statusBarState = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", state = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " y = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " statusBarHeight = "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->secPanelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v4}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->headsUpManager$delegate:Lkotlin/Lazy;

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    check-cast v5, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->mHasPinnedNotification:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    iget-object p0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz p0, :cond_5

    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget v0, p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    if-nez v0, :cond_5

    if-eqz p0, :cond_5

    invoke-virtual {p1, v6}, Lcom/android/systemui/shade/SecPanelSplitHelper;->slide$1(I)V

    :cond_5
    :goto_2
    move v1, v6

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_8

    iget-object p0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {p0, v6}, Lcom/android/systemui/shade/SecPanelSplitHelper;->slide$1(I)V

    :cond_7
    if-eqz v0, :cond_10

    const-string/jumbo p0, "shouldQSDown y, SHADE_STATE return false"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v5, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->displayWidthOfDivider:I

    int-to-float v5, v5

    cmpl-float p1, p1, v5

    if-ltz p1, :cond_c

    sget p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->state:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    iget p1, p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    if-ne p1, v6, :cond_9

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {p1, v4}, Lcom/android/systemui/shade/SecPanelSplitHelper;->slide$1(I)V

    :cond_a
    if-eqz v0, :cond_b

    const-string/jumbo p1, "shouldQSDown x, "

    invoke-static {v4, p1, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    if-eqz v0, :cond_5

    iget p0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->displayWidthOfDivider:I

    const-string/jumbo p1, "shouldQSDown x, displayWidthOfDivider = "

    const-string v0, ", return true"

    invoke-static {p0, p1, v0, v3}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    xor-int/lit8 p1, v4, 0x1

    iget-object v4, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->panelSlideEventCallback:Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;

    if-eqz v4, :cond_d

    iget-object v4, v4, Lcom/android/systemui/shade/SecPanelSplitHelper$panelSlideEventHandler$1$1;->this$0:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v4, p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->slide$1(I)V

    :cond_d
    if-eqz v0, :cond_e

    const-string/jumbo v0, "shouldQSDown else, "

    const-string v4, " return false"

    invoke-static {p1, v0, v4, v3}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object p0, p0, Lcom/android/systemui/shade/PanelSlideEventHandler;->secPanelSAStatusLogInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-nez p1, :cond_f

    goto :goto_4

    :cond_f
    iget-object p0, p0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openNotificationPanelFromStatusbar:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const-wide/16 v3, 0x1

    invoke-static {p1, v3, v4, p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    :cond_10
    :goto_4
    return v1
.end method

.method public final slide(FLcom/android/systemui/shade/PanelSlideEventHandler$Direction;Z)V
    .locals 11

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailOpening:Z

    const-string v1, "SecPanelSplitHelper"

    const-string v2, ", "

    if-nez v0, :cond_1a

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailClosing:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isCustomizerShowing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isReversed()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_TABLET_HORIZONTAL_PANEL_POSITION:Z

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iget v5, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateOnDown:I

    const/4 v6, 0x0

    if-ne v5, v0, :cond_2

    cmpl-float v5, p1, v6

    if-lez v5, :cond_4

    goto :goto_1

    :cond_2
    xor-int/lit8 v7, v0, 0x1

    if-ne v5, v7, :cond_5

    sget-object v5, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->DOWN:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne p2, v5, :cond_3

    cmpl-float v5, p1, v6

    if-lez v5, :cond_4

    goto :goto_1

    :cond_3
    cmpg-float v5, p1, v6

    if-gez v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/systemui/shade/SecPanelSplitHelper;->setDraggedFraction(F)V

    iput p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->overSlideAmount:F

    goto :goto_3

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->getMaxSlideDistance()F

    move-result v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v7

    invoke-static {v5, v7}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(FF)F

    move-result v5

    iget-boolean v7, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->onceOverSlide:Z

    if-eqz v7, :cond_6

    move v5, v6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->getMaxSlideDistance()F

    move-result v7

    div-float/2addr v5, v7

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/systemui/shade/SecPanelSplitHelper;->setDraggedFraction(F)V

    iput v6, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->overSlideAmount:F

    :goto_3
    iget v5, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->overSlideAmount:F

    cmpg-float v7, v5, v6

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    iput-boolean v3, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->onceOverSlide:Z

    :goto_4
    iget v7, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->draggedFraction:F

    iget-boolean v8, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->onceOverSlide:Z

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "slide ( "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ) draggedFraction : "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " overSlideAmount : "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " onceOverSlide : "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->draggedFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    iget-object v2, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->quickSALog:Lcom/android/systemui/shade/SecPanelSplitHelper$QuickSALog;

    const/4 v5, 0x2

    if-nez v1, :cond_14

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->getStatusBarStateController$2()Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-ne p1, v3, :cond_8

    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateOnDown:I

    goto :goto_5

    :cond_8
    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateToChange:I

    :goto_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->updateState(I)V

    sput-boolean v4, Lcom/android/systemui/qs/animator/QsAnimatorState;->isSliding:Z

    if-eqz v2, :cond_17

    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->getStatusBarStateController$2()Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    iget-object v1, v2, Lcom/android/systemui/shade/SecPanelSplitHelper$QuickSALog;->panelSAStatusLogInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    iget-boolean v4, v2, Lcom/android/systemui/shade/SecPanelSplitHelper$QuickSALog;->isDone:Z

    const/4 v6, 0x0

    if-nez v4, :cond_9

    goto :goto_6

    :cond_9
    move-object v1, v6

    :goto_6
    if-eqz v1, :cond_17

    sget-object v4, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->DOWN:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    const-wide/16 v7, 0x1

    iget-object v1, v1, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;

    if-ne p2, v4, :cond_c

    if-nez p1, :cond_c

    if-eqz v0, :cond_b

    if-eq v0, v5, :cond_a

    goto/16 :goto_7

    :cond_a
    iget-object p1, v1, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFromWipeDownInKeyguard:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v7, v8, p1, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    goto :goto_7

    :cond_b
    iget-object p1, v1, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFromWipeDownInShade:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v7, v8, p1, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    goto :goto_7

    :cond_c
    sget-object v9, Lcom/android/systemui/shade/SecPanelSplitHelper;->Companion:Lcom/android/systemui/shade/SecPanelSplitHelper$Companion;

    if-ne p2, v4, :cond_e

    if-ne p1, v3, :cond_e

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-nez p1, :cond_d

    goto :goto_7

    :cond_d
    iget-object p1, v1, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openNotificationPanelFromStatusbarOnQS:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v7, v8, p1, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    goto :goto_7

    :cond_e
    sget-object v4, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->LEFT:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne p2, v4, :cond_11

    if-nez p1, :cond_11

    if-eqz v0, :cond_10

    if-eq v0, v5, :cond_f

    goto :goto_7

    :cond_f
    iget-object p1, v1, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFromHorizontalSwipingInKeyguard:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v7, v8, p1, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    goto :goto_7

    :cond_10
    iget-object p1, v1, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFromHorizontalSwipingInShade:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v7, v8, p1, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    goto :goto_7

    :cond_11
    sget-object v0, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->RIGHT:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    if-ne p2, v0, :cond_13

    if-ne p1, v3, :cond_13

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled:Z

    if-nez p1, :cond_12

    goto :goto_7

    :cond_12
    iget-object p1, v1, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openNotificationPanelFromQS:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v7, v8, p1, v6}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    :cond_13
    :goto_7
    iput-boolean v3, v2, Lcom/android/systemui/shade/SecPanelSplitHelper$QuickSALog;->isDone:Z

    goto :goto_9

    :cond_14
    cmpg-float p1, p1, v6

    if-nez p1, :cond_16

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->getStatusBarStateController$2()Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-ne p1, v3, :cond_15

    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateToChange:I

    goto :goto_8

    :cond_15
    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateOnDown:I

    :goto_8
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->updateState(I)V

    sput-boolean v4, Lcom/android/systemui/qs/animator/QsAnimatorState;->isSliding:Z

    goto :goto_9

    :cond_16
    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    if-eq p1, v5, :cond_17

    invoke-virtual {p0, v5}, Lcom/android/systemui/shade/SecPanelSplitHelper;->updateState(I)V

    sput-boolean v3, Lcom/android/systemui/qs/animator/QsAnimatorState;->isSliding:Z

    if-eqz v2, :cond_17

    iput-boolean v4, v2, Lcom/android/systemui/shade/SecPanelSplitHelper$QuickSALog;->isDone:Z

    :cond_17
    :goto_9
    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->overSlideAmount:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->getMaxSlideDistance()F

    move-result v0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_18

    if-nez p3, :cond_18

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->springBack()V

    :cond_18
    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->qsAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    if-eqz p1, :cond_19

    iget p3, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->draggedFraction:F

    iget v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->overSlideAmount:F

    iget p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateToChange:I

    invoke-virtual {p1, p3, v0, p2, p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->slide(FFLcom/android/systemui/shade/PanelSlideEventHandler$Direction;I)V

    :cond_19
    return-void

    :cond_1a
    :goto_a
    sget-boolean p0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailOpening:Z

    sget-boolean p1, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

    sget-boolean p2, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailClosing:Z

    sget-boolean p3, Lcom/android/systemui/qs/animator/QsAnimatorState;->isCustomizerShowing:Z

    const-string v0, "can\'t slide : "

    invoke-static {v0, v2, v2, p0, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p2, v2, p3, v1}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public final slide$1(I)V
    .locals 5

    invoke-static {p1}, Lcom/android/systemui/shade/PanelTransitionState;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, " - "

    invoke-static {v1, v2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "slide ( "

    const-string v3, " )\n"

    const-string v4, "SecPanelSplitHelper"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->updateState(I)V

    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->quickSALog:Lcom/android/systemui/shade/SecPanelSplitHelper$QuickSALog;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->getStatusBarStateController$2()Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/shade/SecPanelSplitHelper$QuickSALog;->panelSAStatusLogInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/shade/domain/interactor/SecPanelSAStatusLogInteractor;->repository:Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/SecPanelSAStatusLogRepository;->_openQuickPanelFromStatusBarInShade:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    const-wide/16 v3, 0x1

    invoke-static {v1, v3, v4, v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/Number;JLkotlinx/coroutines/flow/StateFlowImpl;Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->qsAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    if-eqz p0, :cond_3

    sget-object v0, Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;->DOWN:Lcom/android/systemui/shade/PanelSlideEventHandler$Direction;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->slide(FFLcom/android/systemui/shade/PanelSlideEventHandler$Direction;I)V

    :cond_3
    return-void
.end method

.method public final springBack()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->overSlideAmount:F

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/shade/SecPanelSplitHelper$springBack$animator$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/shade/SecPanelSplitHelper$springBack$animator$1$1;-><init>(Lcom/android/systemui/shade/SecPanelSplitHelper;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 v2, 0xc8

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->overSlideAmount:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->getMaxSlideDistance()F

    move-result p0

    div-float/2addr v3, p0

    mul-float/2addr v3, v2

    float-to-long v2, v3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f147ae1    # 0.58f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ed70a3d    # 0.42f

    invoke-direct {p0, v4, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final updatePanelVisibility()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    invoke-static {v0}, Lcom/android/systemui/shade/PanelTransitionState;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updatePanelVisibility "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecPanelSplitHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->qsScrollView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->shadeRootView:Landroid/view/View;

    if-nez p0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->qsScrollView:Landroid/view/View;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->shadeRootView:Landroid/view/View;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->qsScrollView:Landroid/view/View;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->shadeRootView:Landroid/view/View;

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final updateState(I)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/shade/PanelTransitionState;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "updateState "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecPanelSplitHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    new-instance v0, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;

    iget-boolean v1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->enabled:Z

    iget v2, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->draggedFraction:F

    invoke-direct {v0, v1, v2, p1}, Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;-><init>(ZFI)V

    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->expansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/PanelTransitionStateListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/shade/PanelTransitionStateListener;->onPanelTransitionStateChanged(Lcom/android/systemui/shade/PanelTransitionStateChangeEvent;)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->currentState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->shadeRootView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/SecPanelSplitHelper;->setQsFrameX(Z)V

    goto :goto_1

    :cond_2
    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->setQsFrameX(Z)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->updatePanelVisibility()V

    iget p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateOnDown:I

    if-nez p1, :cond_4

    move v0, v1

    :cond_4
    iput v0, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->stateToChange:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/shade/SecPanelSplitHelper;->overSlideAmount:F

    return-void
.end method
