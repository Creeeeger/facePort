.class public Lcom/android/systemui/dreams/DreamOverlayService;
.super Landroid/service/dreams/DreamOverlayService;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAmbientTouchComponent:Lcom/android/systemui/ambient/touch/dagger/AmbientTouchComponent;

.field public mBouncerShowing:Z

.field public final mBouncerShowingConsumer:Lcom/android/systemui/dreams/DreamOverlayService$3;

.field public mCommunalAvailable:Z

.field public final mCommunalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

.field public mCommunalVisible:Z

.field public final mCommunalVisibleConsumer:Lcom/android/systemui/dreams/DreamOverlayService$2;

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public final mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

.field public final mDreamOverlayCallbackController:Lcom/android/systemui/dreams/DreamOverlayCallbackController;

.field public final mDreamOverlayComponent:Lcom/android/systemui/dreams/dagger/DreamOverlayComponent;

.field public mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

.field public final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mExitAnimationFinishedCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

.field public final mHomeControlPanelDreamComponent:Landroid/content/ComponentName;

.field public final mIsCommunalAvailableCallback:Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda0;

.field public final mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field public final mLowLightDreamComponent:Landroid/content/ComponentName;

.field public final mScrimManager:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;

.field public mShadeExpanded:Z

.field public mStarted:Z

.field public final mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mSystemDialogsCloser:Lcom/android/systemui/dreams/SystemDialogsCloser;

.field public mTouchMonitor:Lcom/android/systemui/ambient/touch/TouchMonitor;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mWindow:Landroid/view/Window;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final mWindowTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DreamOverlayService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/dreams/DreamOverlayService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/dreams/DreamOverlayLifecycleOwner;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/view/WindowManager;Lcom/android/systemui/complication/dagger/ComplicationComponent$Factory;Lcom/android/systemui/dreams/complication/dagger/ComplicationComponent$Factory;Lcom/android/systemui/dreams/dagger/DreamOverlayComponent$Factory;Lcom/android/systemui/ambient/touch/dagger/AmbientTouchComponent$Factory;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/ambient/touch/scrim/ScrimManager;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/dreams/SystemDialogsCloser;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/touch/TouchInsetManager;Landroid/content/ComponentName;Landroid/content/ComponentName;Lcom/android/systemui/dreams/DreamOverlayCallbackController;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p10

    move-object/from16 v4, p12

    move-object/from16 v5, p15

    invoke-direct {p0, p3}, Landroid/service/dreams/DreamOverlayService;-><init>(Ljava/util/concurrent/Executor;)V

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mStarted:Z

    iput-boolean v6, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mDestroyed:Z

    iput-boolean v6, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mShadeExpanded:Z

    iput-boolean v6, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mCommunalVisible:Z

    iput-boolean v6, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mBouncerShowing:Z

    new-instance v6, Landroidx/lifecycle/ServiceLifecycleDispatcher;

    invoke-direct {v6, p0}, Landroidx/lifecycle/ServiceLifecycleDispatcher;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v6, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    new-instance v7, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/DreamOverlayService;)V

    new-instance v8, Lcom/android/systemui/dreams/DreamOverlayService$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/dreams/DreamOverlayService$1;-><init>(Lcom/android/systemui/dreams/DreamOverlayService;)V

    iput-object v8, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v9, Lcom/android/systemui/dreams/DreamOverlayService$2;

    invoke-direct {v9, p0}, Lcom/android/systemui/dreams/DreamOverlayService$2;-><init>(Lcom/android/systemui/dreams/DreamOverlayService;)V

    new-instance v10, Lcom/android/systemui/dreams/DreamOverlayService$3;

    invoke-direct {v10, p0}, Lcom/android/systemui/dreams/DreamOverlayService$3;-><init>(Lcom/android/systemui/dreams/DreamOverlayService;)V

    new-instance v11, Lcom/android/systemui/dreams/DreamOverlayService$4;

    invoke-direct {v11, p0}, Lcom/android/systemui/dreams/DreamOverlayService$4;-><init>(Lcom/android/systemui/dreams/DreamOverlayService;)V

    iput-object v11, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mExitAnimationFinishedCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    move-object v11, p1

    iput-object v11, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mContext:Landroid/content/Context;

    iput-object v2, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v11, p4

    iput-object v11, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindowManager:Landroid/view/WindowManager;

    iput-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mScrimManager:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;

    move-object/from16 v11, p16

    iput-object v11, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mLowLightDreamComponent:Landroid/content/ComponentName;

    move-object/from16 v11, p17

    iput-object v11, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mHomeControlPanelDreamComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v3, p18

    iput-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayCallbackController:Lcom/android/systemui/dreams/DreamOverlayCallbackController;

    move-object/from16 v3, p20

    iput-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindowTitle:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mCommunalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mSystemDialogsCloser:Lcom/android/systemui/dreams/SystemDialogsCloser;

    new-instance v3, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v3}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    new-instance v8, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    move-object/from16 v11, p5

    invoke-interface {v11, p2, v8, v3, v5}, Lcom/android/systemui/complication/dagger/ComplicationComponent$Factory;->create(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/complication/Complication$Host;Landroidx/lifecycle/ViewModelStore;Lcom/android/systemui/touch/TouchInsetManager;)Lcom/android/systemui/complication/dagger/ComplicationComponent;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/complication/dagger/ComplicationComponent;->getVisibilityController()Lcom/android/systemui/complication/ComplicationLayoutEngine;

    move-result-object v8

    move-object/from16 v11, p6

    invoke-interface {v11, v8, v5}, Lcom/android/systemui/dreams/complication/dagger/ComplicationComponent$Factory;->create(Lcom/android/systemui/complication/Complication$VisibilityController;Lcom/android/systemui/touch/TouchInsetManager;)Lcom/android/systemui/dreams/complication/dagger/ComplicationComponent;

    move-result-object v8

    invoke-interface {v3}, Lcom/android/systemui/complication/dagger/ComplicationComponent;->getComplicationHostViewController()Lcom/android/systemui/complication/ComplicationHostViewController;

    move-result-object v3

    move-object/from16 v11, p7

    invoke-interface {v11, p2, v3, v5}, Lcom/android/systemui/dreams/dagger/DreamOverlayComponent$Factory;->create(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/complication/ComplicationHostViewController;Lcom/android/systemui/touch/TouchInsetManager;)Lcom/android/systemui/dreams/dagger/DreamOverlayComponent;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayComponent:Lcom/android/systemui/dreams/dagger/DreamOverlayComponent;

    new-instance v5, Ljava/util/HashSet;

    invoke-interface {v8}, Lcom/android/systemui/dreams/complication/dagger/ComplicationComponent;->getHideComplicationTouchHandler()Lcom/android/systemui/dreams/complication/HideComplicationTouchHandler;

    move-result-object v8

    invoke-interface {v3}, Lcom/android/systemui/dreams/dagger/DreamOverlayComponent;->getCommunalTouchHandler()Lcom/android/systemui/dreams/touch/CommunalTouchHandler;

    move-result-object v3

    filled-new-array {v8, v3}, [Lcom/android/systemui/ambient/touch/TouchHandler;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v3, p8

    invoke-interface {v3, p2, v5}, Lcom/android/systemui/ambient/touch/dagger/AmbientTouchComponent$Factory;->create(Landroidx/lifecycle/LifecycleOwner;Ljava/util/Set;)Lcom/android/systemui/ambient/touch/dagger/AmbientTouchComponent;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mAmbientTouchComponent:Lcom/android/systemui/ambient/touch/dagger/AmbientTouchComponent;

    iget-object v1, v1, Lcom/android/systemui/dreams/DreamOverlayLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    iput-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayService;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/dreams/DreamOverlayService;I)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v6, Landroidx/lifecycle/ServiceLifecycleDispatcher;->registry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v1, v4, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalAvailable:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    invoke-static {v0, v1, v7}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    iget-object v1, v4, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalVisible:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor$special$$inlined$map$2;

    invoke-static {v0, v1, v9}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    move-object/from16 v1, p19

    iget-object v1, v1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->primaryBouncerShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v0, v1, v10}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroidx/lifecycle/Lifecycle;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    iget-object p0, p0, Landroidx/lifecycle/ServiceLifecycleDispatcher;->registry:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final onComeToFront()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mAnyBouncerShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mScrimManager:Lcom/android/systemui/ambient/touch/scrim/ScrimManager;

    iget-object v0, v0, Lcom/android/systemui/ambient/touch/scrim/ScrimManager;->mCurrentController:Lcom/android/systemui/ambient/touch/scrim/ScrimController;

    new-instance v1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;-><init>(FZZ)V

    invoke-interface {v0, v1}, Lcom/android/systemui/ambient/touch/scrim/ScrimController;->expand(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mSystemDialogsCloser:Lcom/android/systemui/dreams/SystemDialogsCloser;

    check-cast v0, Lcom/android/systemui/dreams/dagger/DreamModule$$ExternalSyntheticLambda0;

    iget-object v0, v0, Lcom/android/systemui/dreams/dagger/DreamModule$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->closeSystemDialogs()V

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mCommunalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    sget-object v0, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Blank:Lcom/android/compose/animation/scene/SceneKey;

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->communalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->communalSceneRepository:Lcom/android/systemui/communal/data/repository/CommunalSceneRepository;

    check-cast p0, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;->changeScene(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V

    return-void
.end method

.method public final onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-super {p0}, Landroid/service/dreams/DreamOverlayService;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/dreams/DreamOverlayService$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/dreams/DreamOverlayService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroidx/lifecycle/Lifecycle$Event;)V

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-super {p0}, Landroid/service/dreams/DreamOverlayService;->onDestroy()V

    return-void
.end method

.method public final onEndDream()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayService;->resetCurrentDreamOverlayLocked()V

    return-void
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDispatcher:Landroidx/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-super {p0, p1, p2}, Landroid/service/dreams/DreamOverlayService;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public final onStartDream(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/dreams/DreamOverlayService$DreamOverlayEvent;->DREAM_OVERLAY_ENTER_START:Lcom/android/systemui/dreams/DreamOverlayService$DreamOverlayEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-boolean v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStarted:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayService;->resetCurrentDreamOverlayLocked()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayComponent:Lcom/android/systemui/dreams/dagger/DreamOverlayComponent;

    invoke-interface {v0}, Lcom/android/systemui/dreams/dagger/DreamOverlayComponent;->getDreamOverlayContainerViewController()Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mAmbientTouchComponent:Lcom/android/systemui/ambient/touch/dagger/AmbientTouchComponent;

    invoke-interface {v0}, Lcom/android/systemui/ambient/touch/dagger/AmbientTouchComponent;->getTouchMonitor()Lcom/android/systemui/ambient/touch/TouchMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mTouchMonitor:Lcom/android/systemui/ambient/touch/TouchMonitor;

    iget-boolean v1, v0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mInitialized:Z

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mLifecycleObserver:Lcom/android/systemui/ambient/touch/TouchMonitor$1;

    iget-object v2, v0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    sget-object v1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/ambient/touch/TouchMonitor;->mInitialized:Z

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {p0}, Landroid/service/dreams/DreamOverlayService;->shouldShowComplications()Z

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v2}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/dreams/DreamOverlayStateController;Z)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindowTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v3, 0x0

    const-string v4, "DreamOverlay"

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/WindowInsetsController;->hide(I)V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v3}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    sget-boolean v0, Lcom/android/systemui/dreams/DreamOverlayService;->DEBUG:Z

    const-string v2, "DreamOverlayService"

    if-eqz v0, :cond_2

    const-string v0, "adding overlay window to dream"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    invoke-virtual {v0}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->getContainerView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const-string v5, "Removing dream overlay container view parent!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    iget-object v4, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    invoke-virtual {v4}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->getContainerView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayService;->updateLifecycleStateLocked()V

    iget-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {p1, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->setOverlayActive(Z)V

    invoke-virtual {p0}, Landroid/service/dreams/DreamOverlayService;->getDreamComponent()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mLowLightDreamComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/dreams/DreamOverlayStateController;->setLowLightActive(Z)V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mHomeControlPanelDreamComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v1

    goto :goto_2

    :cond_6
    move p1, v3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_7

    const/4 p1, 0x2

    goto :goto_3

    :cond_7
    move p1, v1

    :goto_3
    const/16 v2, 0x40

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/dreams/DreamOverlayStateController;->modifyState(II)V

    iget-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/dreams/DreamOverlayService$DreamOverlayEvent;->DREAM_OVERLAY_COMPLETE_START:Lcom/android/systemui/dreams/DreamOverlayService$DreamOverlayEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayCallbackController:Lcom/android/systemui/dreams/DreamOverlayCallbackController;

    iput-boolean v1, p1, Lcom/android/systemui/dreams/DreamOverlayCallbackController;->isDreaming:Z

    iget-object p1, p1, Lcom/android/systemui/dreams/DreamOverlayCallbackController;->callbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isDreamingWithOverlay$1$callback$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isDreamingWithOverlay$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    const-string v2, "KeyguardRepositoryImpl"

    const-string/jumbo v5, "updated isDreamingWithOverlay"

    invoke-static {v0, v4, v2, v5}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iput-boolean v1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStarted:Z

    invoke-static {}, Landroid/service/dreams/Flags;->dreamWakeRedirect()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    iget-boolean p1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mCommunalAvailable:Z

    if-eqz p1, :cond_a

    sget-object p1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :cond_a
    move v1, v3

    :goto_5
    invoke-virtual {p0, v1}, Landroid/service/dreams/DreamOverlayService;->redirectWake(Z)V

    :goto_6
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Dream activity window invalid: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayService;->resetCurrentDreamOverlayLocked()V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "TouchMonitor already initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onWakeRequested()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mCommunalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    sget-object v0, Lcom/android/systemui/communal/shared/model/CommunalScenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->communalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->communalSceneRepository:Lcom/android/systemui/communal/data/repository/CommunalSceneRepository;

    check-cast p0, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/communal/data/repository/CommunalSceneRepositoryImpl;->changeScene(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V

    return-void
.end method

.method public final onWakeUp()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayCallbackController:Lcom/android/systemui/dreams/DreamOverlayCallbackController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/dreams/DreamOverlayCallbackController;->isDreaming:Z

    iget-object v0, v0, Lcom/android/systemui/dreams/DreamOverlayCallbackController;->callbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isDreamingWithOverlay$1$callback$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl$isDreamingWithOverlay$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    const-string v2, "KeyguardRepositoryImpl"

    const-string/jumbo v4, "updated isDreamingWithOverlay"

    invoke-static {v1, v3, v2, v4}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    iget-boolean v0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mWakingUpFromSwipe:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->mDreamOverlayAnimationsController:Lcom/android/systemui/dreams/DreamOverlayAnimationsController;

    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->cancelAnimations()V

    const/4 v0, 0x2

    const/16 v1, 0x8

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayAnimationsController;->mOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->modifyState(II)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final resetCurrentDreamOverlayLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mExitAnimationFinishedCallback:Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    invoke-virtual {v0, p0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DreamOverlayService"

    const-string v2, "Error removing decor view when resetting overlay"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->setOverlayActive(Z)V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->setLowLightActive(Z)V

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/dreams/DreamOverlayStateController;->modifyState(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mDreamOverlayContainerViewController:Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    iget-object v3, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mTouchMonitor:Lcom/android/systemui/ambient/touch/TouchMonitor;

    if-eqz v3, :cond_3

    iget-boolean v4, v3, Lcom/android/systemui/ambient/touch/TouchMonitor;->mInitialized:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3, v2}, Lcom/android/systemui/ambient/touch/TouchMonitor;->stopMonitoring(Z)V

    iget-object v2, v3, Lcom/android/systemui/ambient/touch/TouchMonitor;->mLifecycleObserver:Lcom/android/systemui/ambient/touch/TouchMonitor$1;

    iget-object v4, v3, Lcom/android/systemui/ambient/touch/TouchMonitor;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v4, v2}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    sget-object v2, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v1, v3, Lcom/android/systemui/ambient/touch/TouchMonitor;->mInitialized:Z

    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mTouchMonitor:Lcom/android/systemui/ambient/touch/TouchMonitor;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TouchMonitor not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mWindow:Landroid/view/Window;

    iput-boolean v1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mStarted:Z

    return-void
.end method

.method public final updateLifecycleStateLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v1, v0, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v1, v2, :cond_0

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v1, v3, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mShadeExpanded:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mCommunalVisible:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/dreams/DreamOverlayService;->mBouncerShowing:Z

    if-eqz p0, :cond_2

    :cond_1
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method
