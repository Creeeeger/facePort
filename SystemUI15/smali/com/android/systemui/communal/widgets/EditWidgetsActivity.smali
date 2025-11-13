.class public final Lcom/android/systemui/communal/widgets/EditWidgetsActivity;
.super Landroidx/activity/ComponentActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final addWidgetActivityLauncher:Landroidx/activity/result/ActivityResultRegistry$2;

.field public final communalViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;

.field public final logger:Lcom/android/systemui/log/core/Logger;

.field public shouldOpenWidgetPickerOnStart:Z

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final widgetConfigurator$delegate:Lkotlin/Lazy;

.field public final widgetConfiguratorFactory:Lcom/android/systemui/communal/widgets/WidgetConfigurationController$Factory;

.field public final windowManagerService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;Landroid/view/IWindowManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/communal/widgets/WidgetConfigurationController$Factory;Lcom/android/systemui/log/LogBuffer;)V
    .locals 2

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->communalViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;

    iput-object p2, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->windowManagerService:Landroid/view/IWindowManager;

    iput-object p3, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p4, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->widgetConfiguratorFactory:Lcom/android/systemui/communal/widgets/WidgetConfigurationController$Factory;

    new-instance p1, Lcom/android/systemui/log/core/Logger;

    const-string p2, "EditWidgetsActivity"

    invoke-direct {p1, p5, p2}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->logger:Lcom/android/systemui/log/core/Logger;

    new-instance p1, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$widgetConfigurator$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$widgetConfigurator$2;-><init>(Lcom/android/systemui/communal/widgets/EditWidgetsActivity;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->widgetConfigurator$delegate:Lkotlin/Lazy;

    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance p2, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$addWidgetActivityLauncher$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$addWidgetActivityLauncher$1;-><init>(Lcom/android/systemui/communal/widgets/EditWidgetsActivity;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "activity_rq#"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Landroidx/activity/ComponentActivity;->mNextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Landroidx/activity/ComponentActivity;->mActivityResultRegistry:Landroidx/activity/ComponentActivity$1;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p5, p0, Landroidx/activity/ComponentActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v0, p5, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4, p3}, Landroidx/activity/result/ActivityResultRegistry;->registerKey(Ljava/lang/String;)V

    iget-object v0, p4, Landroidx/activity/result/ActivityResultRegistry;->mKeyToLifecycleContainers:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;

    invoke-direct {v0, p5}, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;-><init>(Landroidx/lifecycle/Lifecycle;)V

    :cond_0
    new-instance p5, Landroidx/activity/result/ActivityResultRegistry$1;

    invoke-direct {p5, p4, p3, p2, p1}, Landroidx/activity/result/ActivityResultRegistry$1;-><init>(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/ActivityResultCallback;Landroidx/activity/result/contract/ActivityResultContract;)V

    iget-object p2, v0, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p2, p5}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object p2, v0, Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p4, Landroidx/activity/result/ActivityResultRegistry;->mKeyToLifecycleContainers:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroidx/activity/result/ActivityResultRegistry$2;

    invoke-direct {p2, p4, p3, p1}, Landroidx/activity/result/ActivityResultRegistry$2;-><init>(Landroidx/activity/result/ActivityResultRegistry;Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;)V

    iput-object p2, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->addWidgetActivityLauncher:Landroidx/activity/result/ActivityResultRegistry$2;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "LifecycleOwner "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is attempting to register while current state is "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p5, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". LifecycleOwners must call register before they are STARTED."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;Landroid/view/IWindowManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/communal/widgets/WidgetConfigurationController$Factory;Lcom/android/systemui/log/LogBuffer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;-><init>(Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;Landroid/view/IWindowManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/communal/widgets/WidgetConfigurationController$Factory;Lcom/android/systemui/log/LogBuffer;)V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x64

    if-ne p1, p3, :cond_1

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->widgetConfigurator$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;

    invoke-virtual {p0}, Lcom/android/systemui/communal/widgets/WidgetConfigurationController;->getResult()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    check-cast p0, Lkotlinx/coroutines/CompletableDeferredImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->makeCompleting$external__kotlinx_coroutines__linux_glibc_common__kotlinx_coroutines_host(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$listenForTransitionAndChangeScene$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$listenForTransitionAndChangeScene$1;-><init>(Lcom/android/systemui/communal/widgets/EditWidgetsActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {p1, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p1, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->communalViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;

    iget-object v0, p1, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object v0, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->_editModeOpen:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "preselected_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "open_widget_picker_on_start"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->shouldOpenWidgetPickerOnStart:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->setSelectedKey(Ljava/lang/String;)V

    new-instance p1, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$onCreate$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$onCreate$1;-><init>(Lcom/android/systemui/communal/widgets/EditWidgetsActivity;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x279e2b44

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, v0}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->communalViewModel:Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;

    iget-object v0, p0, Lcom/android/systemui/communal/ui/viewmodel/BaseCommunalViewModel;->communalSceneInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;

    iget-object v0, v0, Lcom/android/systemui/communal/domain/interactor/CommunalSceneInteractor;->_editModeState:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/communal/ui/viewmodel/CommunalEditModeViewModel;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object p0, p0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->_editModeOpen:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-boolean v0, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->shouldOpenWidgetPickerOnStart:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$onOpenWidgetPicker$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/communal/widgets/EditWidgetsActivity$onOpenWidgetPicker$1;-><init>(Lcom/android/systemui/communal/widgets/EditWidgetsActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v0, v1, v1, v2, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->shouldOpenWidgetPickerOnStart:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->logger:Lcom/android/systemui/log/core/Logger;

    const-string v2, "Starting the communal widget editor activity"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lcom/android/systemui/log/core/Logger;->i$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_EDIT_MODE_SHOWN:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public final onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->logger:Lcom/android/systemui/log/core/Logger;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Stopping the communal widget editor activity"

    invoke-static {v0, v3, v1, v2, v1}, Lcom/android/systemui/log/core/Logger;->i$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivity;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/communal/shared/log/CommunalUiEvent;->COMMUNAL_HUB_EDIT_MODE_GONE:Lcom/android/systemui/communal/shared/log/CommunalUiEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
