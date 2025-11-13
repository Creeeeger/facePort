.class public abstract Landroidx/navigation/NavController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final _currentBackStack:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _currentBackStackEntryFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public _graph:Landroidx/navigation/NavGraph;

.field public final _navigatorProvider:Landroidx/navigation/NavigatorProvider;

.field public final _visibleEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final activity:Landroid/app/Activity;

.field public addToBackStackHandler:Lkotlin/jvm/functions/Function1;

.field public final backQueue:Lkotlin/collections/ArrayDeque;

.field public final backStackEntriesToDispatch:Ljava/util/List;

.field public final backStackMap:Ljava/util/Map;

.field public final backStackStates:Ljava/util/Map;

.field public backStackToRestore:[Landroid/os/Parcelable;

.field public final childToParentEntries:Ljava/util/Map;

.field public final context:Landroid/content/Context;

.field public deepLinkHandled:Z

.field public dispatchReentrantCount:I

.field public final enableOnBackPressedCallback:Z

.field public final entrySavedState:Ljava/util/Map;

.field public hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

.field public final lifecycleObserver:Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

.field public lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public final navInflater$delegate:Lkotlin/Lazy;

.field public final navigatorState:Ljava/util/Map;

.field public navigatorStateToRestore:Landroid/os/Bundle;

.field public final onBackPressedCallback:Landroidx/navigation/NavController$onBackPressedCallback$1;

.field public final onDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final parentToChildCount:Ljava/util/Map;

.field public popFromBackStackHandler:Lkotlin/jvm/functions/Function1;

.field public viewModel:Landroidx/navigation/NavControllerViewModel;

.field public final visibleEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    sget-object v0, Landroidx/navigation/NavController$activity$1;->INSTANCE:Landroidx/navigation/NavController$activity$1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->_currentBackStack:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavController;->_visibleEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavController;->visibleEntries:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavController;->childToParentEntries:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavController;->onDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/navigation/NavController;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    new-instance p1, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavController;)V

    iput-object p1, p0, Landroidx/navigation/NavController;->lifecycleObserver:Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    new-instance p1, Landroidx/navigation/NavController$onBackPressedCallback$1;

    invoke-direct {p1, p0}, Landroidx/navigation/NavController$onBackPressedCallback$1;-><init>(Landroidx/navigation/NavController;)V

    iput-object p1, p0, Landroidx/navigation/NavController;->onBackPressedCallback:Landroidx/navigation/NavController$onBackPressedCallback$1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/navigation/NavController;->enableOnBackPressedCallback:Z

    new-instance v0, Landroidx/navigation/NavigatorProvider;

    invoke-direct {v0}, Landroidx/navigation/NavigatorProvider;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/navigation/NavController;->entrySavedState:Ljava/util/Map;

    new-instance v1, Landroidx/navigation/NavGraphNavigator;

    invoke-direct {v1, v0}, Landroidx/navigation/NavGraphNavigator;-><init>(Landroidx/navigation/NavigatorProvider;)V

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)V

    new-instance v1, Landroidx/navigation/ActivityNavigator;

    iget-object v2, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/navigation/ActivityNavigator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->backStackEntriesToDispatch:Ljava/util/List;

    new-instance v0, Landroidx/navigation/NavController$navInflater$2;

    invoke-direct {v0, p0}, Landroidx/navigation/NavController$navInflater$2;-><init>(Landroidx/navigation/NavController;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->navInflater$delegate:Lkotlin/Lazy;

    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavController;->_currentBackStackEntryFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/MutableSharedFlow;)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    return-void
.end method

.method public static findDestinationComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;
    .locals 1

    iget v0, p1, Landroidx/navigation/NavDestination;->id:I

    if-ne v0, p0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/navigation/NavGraph;

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1, p0, p1, p2}, Landroidx/navigation/NavGraph;->findNodeComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public static navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;I)V
    .locals 3

    and-int/lit8 p3, p3, 0x2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object p2, v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "route"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget p3, Landroidx/navigation/NavDestination;->$r8$clinit:I

    invoke-static {p1}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p3, "Uri.parse(this)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Landroidx/navigation/NavDeepLinkRequest;

    invoke-direct {p3, p1, v0, v0}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p3}, Landroidx/navigation/NavGraph;->matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p3, v1, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    iget-object v2, v1, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v2}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    if-nez p3, :cond_1

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_1
    iget-object v1, v1, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android-support-nav:controller:deepLinkIntent"

    invoke-virtual {p3, p1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v1, p3, p2}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Navigation destination that matches request "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " cannot be found in the navigation graph "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot navigate to "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ". Navigation graph has not been set for NavController "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic popEntryFromBackStack$default(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;)V
    .locals 2

    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroidx/navigation/NavController;->popEntryFromBackStack(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public final addEntryToBackStack(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V
    .locals 10

    iget-object v0, p3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    instance-of v1, v0, Landroidx/navigation/FloatingWindow;

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    instance-of v1, v1, Landroidx/navigation/FloatingWindow;

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget v1, v1, Landroidx/navigation/NavDestination;->id:I

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    new-instance v1, Lkotlin/collections/ArrayDeque;

    invoke-direct {v1}, Lkotlin/collections/ArrayDeque;-><init>()V

    instance-of v4, p1, Landroidx/navigation/NavGraph;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    move-object v4, v0

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    if-eqz v4, :cond_6

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p4, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    iget-object v8, v8, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_4
    move-object v7, v5

    :goto_0
    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    if-nez v7, :cond_5

    iget-object v6, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v7

    iget-object v8, p0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    invoke-static {v6, v4, p2, v7, v8}, Landroidx/navigation/NavBackStackEntry$Companion;->create$default(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v7

    :cond_5
    invoke-virtual {v1, v7}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    iget-object v6, v6, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    if-ne v6, v4, :cond_6

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    invoke-static {p0, v6}, Landroidx/navigation/NavController;->popEntryFromBackStack$default(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;)V

    :cond_6
    if-eqz v4, :cond_7

    if-ne v4, p1, :cond_2

    :cond_7
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v0

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    iget-object v4, v4, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    :cond_9
    :goto_1
    if-eqz v4, :cond_e

    iget v6, v4, Landroidx/navigation/NavDestination;->id:I

    invoke-virtual {p0, v6}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v6

    if-eq v6, v4, :cond_e

    iget-object v4, v4, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    if-eqz v4, :cond_9

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-ne v6, v2, :cond_a

    move-object v6, v5

    goto :goto_2

    :cond_a
    move-object v6, p2

    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {p4, v7}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v7

    :cond_b
    invoke-interface {v7}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Landroidx/navigation/NavBackStackEntry;

    iget-object v9, v9, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_3

    :cond_c
    move-object v8, v5

    :goto_3
    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    if-nez v8, :cond_d

    iget-object v7, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v8

    iget-object v9, p0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    invoke-static {v7, v4, v6, v8, v9}, Landroidx/navigation/NavBackStackEntry$Companion;->create$default(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v8

    :cond_d
    invoke-virtual {v1, v8}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :cond_e
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_4

    :cond_f
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    :goto_4
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    instance-of v2, v2, Landroidx/navigation/NavGraph;

    if-eqz v2, :cond_10

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    const-string v4, "null cannot be cast to non-null type androidx.navigation.NavGraph"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/navigation/NavGraph;

    iget-object v2, v2, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    iget v4, v0, Landroidx/navigation/NavDestination;->id:I

    invoke-virtual {v2, v4}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_10

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-static {p0, v2}, Landroidx/navigation/NavController;->popEntryFromBackStack$default(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_4

    :cond_10
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, v5

    goto :goto_5

    :cond_11
    iget-object v0, v3, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v2, v3, Lkotlin/collections/ArrayDeque;->head:I

    aget-object v0, v0, v2

    :goto_5
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-nez v0, :cond_13

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, v5

    goto :goto_6

    :cond_12
    iget-object v0, v1, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v2, v1, Lkotlin/collections/ArrayDeque;->head:I

    aget-object v0, v0, v2

    :goto_6
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    :cond_13
    if-eqz v0, :cond_14

    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    goto :goto_7

    :cond_14
    move-object v0, v5

    :goto_7
    iget-object v2, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p4, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p4

    :cond_15
    invoke-interface {p4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget-object v4, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v5, v0

    :cond_16
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    if-nez v5, :cond_17

    iget-object p4, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p2}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    iget-object v4, p0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    invoke-static {p4, v0, p2, v2, v4}, Landroidx/navigation/NavBackStackEntry$Companion;->create$default(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v5

    :cond_17
    invoke-virtual {v1, v5}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/navigation/NavBackStackEntry;

    iget-object v0, p4, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget-object v0, v0, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    iget-object v2, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v2, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    iget-object v2, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    check-cast v0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v0, p4}, Landroidx/navigation/NavController$NavControllerNavigatorState;->addInternal(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_8

    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "NavigatorBackStack for "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    const-string p2, " should already be created"

    invoke-static {p0, p1, p2}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-virtual {v3, v1}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, p3}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-static {v1, p3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    iget-object p3, p2, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget-object p3, p3, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    if-eqz p3, :cond_1b

    iget p3, p3, Landroidx/navigation/NavDestination;->id:I

    invoke-virtual {p0, p3}, Landroidx/navigation/NavController;->getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroidx/navigation/NavController;->linkChildToParent(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_9

    :cond_1c
    return-void
.end method

.method public final dispatchOnDestinationChanged()Z
    .locals 8

    :goto_0
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    instance-of v1, v1, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-static {p0, v0}, Landroidx/navigation/NavController;->popEntryFromBackStack$default(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/navigation/NavController;->backStackEntriesToDispatch:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v2, p0, Landroidx/navigation/NavController;->dispatchReentrantCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/navigation/NavController;->dispatchReentrantCount:I

    invoke-virtual {p0}, Landroidx/navigation/NavController;->updateBackStackLifecycle$navigation_runtime_release()V

    iget v2, p0, Landroidx/navigation/NavController;->dispatchReentrantCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/navigation/NavController;->dispatchReentrantCount:I

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/navigation/NavController;->backStackEntriesToDispatch:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Landroidx/navigation/NavController;->backStackEntriesToDispatch:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    iget-object v6, p0, Landroidx/navigation/NavController;->onDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v5, p0, Landroidx/navigation/NavController;->_currentBackStackEntryFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {v5, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    iget-object p0, v4, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    throw v5

    :cond_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Landroidx/navigation/NavController;->_currentBackStack:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2, v5, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/navigation/NavController;->populateVisibleEntries$navigation_runtime_release()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Landroidx/navigation/NavController;->_visibleEntries:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v5, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    return v3
.end method

.method public final executePopOperations(Ljava/util/List;Landroidx/navigation/NavDestination;ZZ)Z
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p4

    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v9, Lkotlin/collections/ArrayDeque;

    invoke-direct {v9}, Lkotlin/collections/ArrayDeque;-><init>()V

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/navigation/Navigator;

    new-instance v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v0, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/navigation/NavBackStackEntry;

    new-instance v15, Landroidx/navigation/NavController$executePopOperations$1;

    move-object v0, v15

    move-object v1, v13

    move-object v2, v8

    move-object/from16 v3, p0

    move/from16 v4, p4

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavController$executePopOperations$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/NavController;ZLkotlin/collections/ArrayDeque;)V

    iput-object v15, v6, Landroidx/navigation/NavController;->popFromBackStackHandler:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12, v14, v7}, Landroidx/navigation/Navigator;->popBackStack(Landroidx/navigation/NavBackStackEntry;Z)V

    iput-object v11, v6, Landroidx/navigation/NavController;->popFromBackStackHandler:Lkotlin/jvm/functions/Function1;

    iget-boolean v0, v13, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_0

    :cond_1
    if-eqz v7, :cond_6

    if-nez p3, :cond_4

    sget-object v0, Landroidx/navigation/NavController$executePopOperations$2;->INSTANCE:Landroidx/navigation/NavController$executePopOperations$2;

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    new-instance v1, Landroidx/navigation/NavController$executePopOperations$3;

    invoke-direct {v1, v6}, Landroidx/navigation/NavController$executePopOperations$3;-><init>(Landroidx/navigation/NavController;)V

    new-instance v2, Lkotlin/sequences/TakeWhileSequence;

    invoke-direct {v2, v0, v1}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lkotlin/sequences/TakeWhileSequence$iterator$1;

    invoke-direct {v0, v2}, Lkotlin/sequences/TakeWhileSequence$iterator$1;-><init>(Lkotlin/sequences/TakeWhileSequence;)V

    :goto_0
    invoke-virtual {v0}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    iget-object v2, v6, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    iget v1, v1, Landroidx/navigation/NavDestination;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v11

    goto :goto_1

    :cond_2
    iget-object v3, v9, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    iget v4, v9, Lkotlin/collections/ArrayDeque;->head:I

    aget-object v3, v3, v4

    :goto_1
    check-cast v3, Landroidx/navigation/NavBackStackEntryState;

    if-eqz v3, :cond_3

    iget-object v3, v3, Landroidx/navigation/NavBackStackEntryState;->id:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v3, v11

    :goto_2
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntryState;

    iget v1, v0, Landroidx/navigation/NavBackStackEntryState;->destinationId:I

    invoke-virtual {v6, v1}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    sget-object v2, Landroidx/navigation/NavController$executePopOperations$5;->INSTANCE:Landroidx/navigation/NavController$executePopOperations$5;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt___SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    new-instance v2, Landroidx/navigation/NavController$executePopOperations$6;

    invoke-direct {v2, v6}, Landroidx/navigation/NavController$executePopOperations$6;-><init>(Landroidx/navigation/NavController;)V

    new-instance v3, Lkotlin/sequences/TakeWhileSequence;

    invoke-direct {v3, v1, v2}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lkotlin/sequences/TakeWhileSequence$iterator$1;

    invoke-direct {v1, v3}, Lkotlin/sequences/TakeWhileSequence$iterator$1;-><init>(Lkotlin/sequences/TakeWhileSequence;)V

    :goto_3
    invoke-virtual {v1}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lkotlin/sequences/TakeWhileSequence$iterator$1;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDestination;

    iget-object v3, v6, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    iget v2, v2, Landroidx/navigation/NavDestination;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, v0, Landroidx/navigation/NavBackStackEntryState;->id:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object v1, v6, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, v0, Landroidx/navigation/NavBackStackEntryState;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v6, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    iget-object v0, v0, Landroidx/navigation/NavBackStackEntryState;->id:Ljava/lang/String;

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    iget-boolean v0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return v0
.end method

.method public final findDestination(I)Landroidx/navigation/NavDestination;
    .locals 2

    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v1, v0, Landroidx/navigation/NavDestination;->id:I

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_3
    const/4 p0, 0x0

    invoke-static {p1, v0, p0}, Landroidx/navigation/NavController;->findDestinationComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public final getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;
    .locals 3

    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget v2, v2, Landroidx/navigation/NavDestination;->id:I

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    const-string v0, "No destination with ID "

    const-string v1, " is on the NavController\'s back stack. The current destination is "

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getCurrentDestination()Landroidx/navigation/NavDestination;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getDestinationCountOnBackStack()I
    .locals 2

    iget-object p0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    instance-of v0, v0, Landroidx/navigation/NavGraph;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Count overflow has happened."

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return v1
.end method

.method public final getGraph()Landroidx/navigation/NavGraph;
    .locals 1

    iget-object p0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-eqz p0, :cond_0

    const-string v0, "null cannot be cast to non-null type androidx.navigation.NavGraph"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You must call setGraph() before calling getGraph()"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/NavController;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-nez v0, :cond_0

    sget-object p0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/navigation/NavController;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    :goto_0
    return-object p0
.end method

.method public final linkChildToParent(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V
    .locals 2

    iget-object v0, p0, Landroidx/navigation/NavController;->childToParentEntries:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final navigate(I)V
    .locals 9

    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    :goto_0
    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroidx/navigation/NavDestination;->getAction(I)Landroidx/navigation/NavAction;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, v1, Landroidx/navigation/NavAction;->navOptions:Landroidx/navigation/NavOptions;

    iget-object v4, v1, Landroidx/navigation/NavAction;->defaultArguments:Landroid/os/Bundle;

    iget v5, v1, Landroidx/navigation/NavAction;->destinationId:I

    if-eqz v4, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    move v5, p1

    move-object v3, v2

    :cond_2
    :goto_1
    if-nez v5, :cond_6

    if-eqz v3, :cond_6

    iget-object v4, v3, Landroidx/navigation/NavOptions;->popUpToRouteClass:Lkotlin/reflect/KClass;

    iget-object v6, v3, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    const/4 v7, -0x1

    iget v8, v3, Landroidx/navigation/NavOptions;->popUpToId:I

    if-ne v8, v7, :cond_3

    if-nez v6, :cond_3

    if-eqz v4, :cond_6

    :cond_3
    const/4 p1, 0x0

    iget-boolean v0, v3, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0, v6, v0, p1}, Landroidx/navigation/NavController;->popBackStackInternal(Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    goto/16 :goto_2

    :cond_4
    if-eqz v4, :cond_5

    invoke-static {v4}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1, v0, p1}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    goto :goto_2

    :cond_5
    if-eq v8, v7, :cond_9

    invoke-virtual {p0, v8, v0, p1}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_a

    invoke-virtual {p0, v5}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v4

    if-nez v4, :cond_8

    sget v2, Landroidx/navigation/NavDestination;->$r8$clinit:I

    iget-object v2, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-static {v2, v5}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " cannot be found from the current destination "

    if-nez v1, :cond_7

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Navigation action/destination "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const-string v1, "Navigation destination "

    const-string v4, " referenced from action "

    invoke-static {v1, v2, v4}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-virtual {p0, v4, v2, v3}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    :cond_9
    :goto_2
    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No current destination found. Ensure a navigation graph has been set for NavController "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavController$NavControllerNavigatorState;

    iput-boolean v5, v4, Landroidx/navigation/NavigatorState;->isNavigating:Z

    goto :goto_0

    :cond_0
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v4, -0x1

    if-eqz v2, :cond_6

    iget-object v7, v2, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    iget-boolean v8, v2, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    iget-boolean v9, v2, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    if-eqz v7, :cond_1

    invoke-virtual {v0, v7, v9, v8}, Landroidx/navigation/NavController;->popBackStackInternal(Ljava/lang/String;ZZ)Z

    move-result v7

    goto/16 :goto_2

    :cond_1
    iget-object v7, v2, Landroidx/navigation/NavOptions;->popUpToRouteClass:Lkotlin/reflect/KClass;

    if-eqz v7, :cond_2

    invoke-static {v7}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v0, v7, v9, v8}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    move-result v7

    goto/16 :goto_2

    :cond_2
    iget-object v7, v2, Landroidx/navigation/NavOptions;->popUpToRouteObject:Ljava/lang/Object;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v11, v10}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v10}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v12

    invoke-static {v10, v12, v5}, Landroidx/navigation/NavController;->findDestinationComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v10, v10, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    invoke-static {v10}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v12

    invoke-static {v12}, Lkotlin/collections/MapsKt__MapsKt;->mapCapacity(I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/navigation/NavArgument;

    iget-object v12, v12, Landroidx/navigation/NavArgument;->type:Landroidx/navigation/NavType;

    invoke-interface {v11, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {v7, v11}, Landroidx/navigation/serialization/RouteSerializerKt;->generateRouteWithArgs(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v9, v8}, Landroidx/navigation/NavController;->popBackStackInternal(Ljava/lang/String;ZZ)Z

    move-result v7

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Destination with route "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v11, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be found in navigation graph "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget v7, v2, Landroidx/navigation/NavOptions;->popUpToId:I

    if-eq v7, v4, :cond_6

    invoke-virtual {v0, v7, v9, v8}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    move-result v7

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p2}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    if-eqz v2, :cond_7

    iget-boolean v9, v2, Landroidx/navigation/NavOptions;->restoreState:Z

    if-ne v9, v5, :cond_7

    iget-object v9, v0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    iget v10, v1, Landroidx/navigation/NavDestination;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget v1, v1, Landroidx/navigation/NavDestination;->id:I

    invoke-virtual {v0, v1, v8, v2}, Landroidx/navigation/NavController;->restoreStateInternal(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)Z

    move-result v1

    iput-boolean v1, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move-object v6, v3

    move/from16 v22, v7

    const/4 v5, 0x0

    goto/16 :goto_8

    :cond_7
    iget-object v9, v0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    if-eqz v2, :cond_f

    iget-boolean v10, v2, Landroidx/navigation/NavOptions;->singleTop:Z

    if-ne v10, v5, :cond_f

    iget-object v10, v0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/navigation/NavBackStackEntry;

    instance-of v12, v1, Landroidx/navigation/NavGraph;

    if-eqz v12, :cond_8

    sget v12, Landroidx/navigation/NavGraph;->$r8$clinit:I

    move-object v12, v1

    check-cast v12, Landroidx/navigation/NavGraph;

    invoke-static {v12}, Landroidx/navigation/NavGraph$Companion;->findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;

    move-result-object v12

    iget v12, v12, Landroidx/navigation/NavDestination;->id:I

    goto :goto_3

    :cond_8
    iget v12, v1, Landroidx/navigation/NavDestination;->id:I

    :goto_3
    if-eqz v11, :cond_f

    iget-object v11, v11, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    if-eqz v11, :cond_f

    iget v11, v11, Landroidx/navigation/NavDestination;->id:I

    if-ne v12, v11, :cond_f

    new-instance v11, Lkotlin/collections/ArrayDeque;

    invoke-direct {v11}, Lkotlin/collections/ArrayDeque;-><init>()V

    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v12

    :cond_9
    invoke-interface {v12}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v12}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/navigation/NavBackStackEntry;

    iget-object v13, v13, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    if-ne v13, v1, :cond_9

    invoke-interface {v12}, Ljava/util/ListIterator;->nextIndex()I

    move-result v4

    :cond_a
    :goto_4
    invoke-static {v10}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v12

    if-lt v12, v4, :cond_b

    invoke-virtual {v10}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0, v12}, Landroidx/navigation/NavController;->unlinkChildFromParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;)V

    new-instance v15, Landroidx/navigation/NavBackStackEntry;

    iget-object v13, v12, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    move-object/from16 v14, p2

    invoke-virtual {v13, v14}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v16

    iget-object v13, v12, Landroidx/navigation/NavBackStackEntry;->context:Landroid/content/Context;

    iget-object v5, v12, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget-object v6, v12, Landroidx/navigation/NavBackStackEntry;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    move/from16 v21, v4

    iget-object v4, v12, Landroidx/navigation/NavBackStackEntry;->savedState:Landroid/os/Bundle;

    move/from16 v22, v7

    iget-object v7, v12, Landroidx/navigation/NavBackStackEntry;->viewModelStoreProvider:Landroidx/navigation/NavControllerViewModel;

    iget-object v2, v12, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    move-object/from16 v17, v13

    move-object v13, v15

    move-object/from16 v14, v17

    move-object/from16 v23, v3

    move-object v3, v15

    move-object v15, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    invoke-direct/range {v13 .. v20}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, v12, Landroidx/navigation/NavBackStackEntry;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    iput-object v2, v3, Landroidx/navigation/NavBackStackEntry;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    iget-object v2, v12, Landroidx/navigation/NavBackStackEntry;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3, v2}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    invoke-virtual {v11, v3}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    move-object/from16 v2, p3

    move/from16 v4, v21

    move/from16 v7, v22

    move-object/from16 v3, v23

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    move-object/from16 v23, v3

    move/from16 v22, v7

    invoke-virtual {v11}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    iget-object v4, v3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget-object v4, v4, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    if-eqz v4, :cond_c

    iget v4, v4, Landroidx/navigation/NavDestination;->id:I

    invoke-virtual {v0, v4}, Landroidx/navigation/NavController;->getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroidx/navigation/NavController;->linkChildToParent(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    :cond_c
    invoke-virtual {v10, v3}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v11}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    iget-object v4, v3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget-object v4, v4, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/navigation/Navigator;->onLaunchSingleTop(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_6

    :cond_e
    const/4 v5, 0x1

    goto :goto_7

    :cond_f
    move-object/from16 v23, v3

    move/from16 v22, v7

    const/4 v5, 0x0

    :goto_7
    if-nez v5, :cond_10

    iget-object v2, v0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v3

    iget-object v4, v0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    invoke-static {v2, v1, v8, v3, v4}, Landroidx/navigation/NavBackStackEntry$Companion;->create$default(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v2

    iget-object v3, v1, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Landroidx/navigation/NavController$navigate$5;

    move-object/from16 v6, v23

    invoke-direct {v4, v6, v0, v1, v8}, Landroidx/navigation/NavController$navigate$5;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    iput-object v4, v0, Landroidx/navigation/NavController;->addToBackStackHandler:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p3

    invoke-virtual {v3, v2, v1}, Landroidx/navigation/Navigator;->navigate(Ljava/util/List;Landroidx/navigation/NavOptions;)V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/navigation/NavController;->addToBackStackHandler:Lkotlin/jvm/functions/Function1;

    goto :goto_8

    :cond_10
    move-object/from16 v6, v23

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    iget-object v1, v0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/navigation/NavigatorState;->isNavigating:Z

    goto :goto_9

    :cond_11
    if-nez v22, :cond_13

    iget-boolean v1, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v1, :cond_13

    if-eqz v5, :cond_12

    goto :goto_a

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->updateBackStackLifecycle$navigation_runtime_release()V

    goto :goto_b

    :cond_13
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    :goto_b
    return-void
.end method

.method public final navigateUp()V
    .locals 13

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getDestinationCountOnBackStack()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    const-string v5, "android-support-nav:controller:deepLinkIds"

    if-eqz v4, :cond_1

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    const-string v6, "android-support-nav:controller:deepLinkExtras"

    const-string v7, "android-support-nav:controller:deepLinkIntent"

    if-eqz v4, :cond_e

    iget-boolean v4, p0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    if-nez v4, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([I)Ljava/util/List;

    move-result-object v5

    const-string v9, "android-support-nav:controller:deepLinkArgs"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    move-object v10, v5

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    const-string v12, "List is empty."

    if-nez v11, :cond_d

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v9}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v11

    invoke-interface {v9, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v12}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v11

    invoke-static {v5, v11, v1}, Landroidx/navigation/NavController;->findDestinationComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object v11

    instance-of v12, v11, Landroidx/navigation/NavGraph;

    if-eqz v12, :cond_6

    sget v5, Landroidx/navigation/NavGraph;->$r8$clinit:I

    check-cast v11, Landroidx/navigation/NavGraph;

    invoke-static {v11}, Landroidx/navigation/NavGraph$Companion;->findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;

    move-result-object v5

    iget v5, v5, Landroidx/navigation/NavDestination;->id:I

    :cond_6
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v11

    if-eqz v11, :cond_c

    iget v11, v11, Landroidx/navigation/NavDestination;->id:I

    if-ne v5, v11, :cond_c

    new-instance v5, Landroidx/navigation/NavDeepLinkBuilder;

    invoke-direct {v5, p0}, Landroidx/navigation/NavDeepLinkBuilder;-><init>(Landroidx/navigation/NavController;)V

    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v7, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v8, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_7
    iget-object v4, v5, Landroidx/navigation/NavDeepLinkBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v6, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v1, 0x1

    if-ltz v1, :cond_a

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz v9, :cond_8

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_4

    :cond_8
    move-object v1, v3

    :goto_4
    iget-object v7, v5, Landroidx/navigation/NavDeepLinkBuilder;->destinations:Ljava/util/List;

    new-instance v8, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;

    invoke-direct {v8, v4, v1}, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;-><init>(ILandroid/os/Bundle;)V

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v5, Landroidx/navigation/NavDeepLinkBuilder;->graph:Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_9

    invoke-virtual {v5}, Landroidx/navigation/NavDeepLinkBuilder;->verifyAllDestinations()V

    :cond_9
    move v1, v6

    goto :goto_3

    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v3

    :cond_b
    invoke-virtual {v5}, Landroidx/navigation/NavDeepLinkBuilder;->createTaskStackBuilder()Landroidx/core/app/TaskStackBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_c
    :goto_5
    return-void

    :cond_d
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v12}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v1, Landroidx/navigation/NavDestination;->id:I

    iget-object v1, v1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    :goto_6
    if-eqz v1, :cond_13

    iget v4, v1, Landroidx/navigation/NavGraph;->startDestId:I

    if-eq v4, v2, :cond_12

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v4, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v5, Landroidx/navigation/NavDeepLinkRequest;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "activity!!.intent"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v4, v5}, Landroidx/navigation/NavGraph;->matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v5, v4, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    goto :goto_7

    :cond_f
    move-object v5, v3

    :goto_7
    if-eqz v5, :cond_10

    iget-object v5, v4, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    iget-object v4, v4, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_10
    new-instance v4, Landroidx/navigation/NavDeepLinkBuilder;

    invoke-direct {v4, p0}, Landroidx/navigation/NavDeepLinkBuilder;-><init>(Landroidx/navigation/NavController;)V

    iget p0, v1, Landroidx/navigation/NavDestination;->id:I

    iget-object v1, v4, Landroidx/navigation/NavDeepLinkBuilder;->destinations:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v4, Landroidx/navigation/NavDeepLinkBuilder;->destinations:Ljava/util/List;

    new-instance v5, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;

    invoke-direct {v5, p0, v3}, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;-><init>(ILandroid/os/Bundle;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v4, Landroidx/navigation/NavDeepLinkBuilder;->graph:Landroidx/navigation/NavGraph;

    if-eqz p0, :cond_11

    invoke-virtual {v4}, Landroidx/navigation/NavDeepLinkBuilder;->verifyAllDestinations()V

    :cond_11
    iget-object p0, v4, Landroidx/navigation/NavDeepLinkBuilder;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v4}, Landroidx/navigation/NavDeepLinkBuilder;->createTaskStackBuilder()Landroidx/core/app/TaskStackBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_8

    :cond_12
    iget v2, v1, Landroidx/navigation/NavDestination;->id:I

    iget-object v1, v1, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    goto/16 :goto_6

    :cond_13
    :goto_8
    return-void

    :cond_14
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_9

    :cond_15
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v0, Landroidx/navigation/NavDestination;->id:I

    invoke-virtual {p0, v0, v2, v1}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    :cond_16
    :goto_9
    return-void
.end method

.method public final popBackStackInternal(IZZ)Z
    .locals 6

    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget-object v4, v3, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    iget-object v5, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v5, v4}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v4

    if-nez p2, :cond_2

    iget v5, v3, Landroidx/navigation/NavDestination;->id:I

    if-eq v5, p1, :cond_3

    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v4, v3, Landroidx/navigation/NavDestination;->id:I

    if-ne v4, p1, :cond_1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_5

    sget p2, Landroidx/navigation/NavDestination;->$r8$clinit:I

    iget-object p0, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Ignoring popBackStack to destination "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as it was not found on the current back stack"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    invoke-virtual {p0, v1, v3, p2, p3}, Landroidx/navigation/NavController;->executePopOperations(Ljava/util/List;Landroidx/navigation/NavDestination;ZZ)Z

    move-result p0

    return p0
.end method

.method public final popBackStackInternal(Ljava/lang/String;ZZ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return v5

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    iget-object v9, v8, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "route"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v9, Landroidx/navigation/NavDestination;->route:Ljava/lang/String;

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v9, v1}, Landroidx/navigation/NavDestination;->matchDeepLink(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v11

    if-eqz v11, :cond_3

    iget-object v13, v11, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    :goto_0
    invoke-virtual {v9, v13}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :goto_1
    move v12, v5

    goto :goto_5

    :cond_4
    if-eqz v10, :cond_b

    iget-object v9, v11, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    const-string v13, "matchingArgs.keySet()"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_1

    :cond_7
    iget-object v14, v11, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    iget-object v14, v14, Landroidx/navigation/NavDestination;->_arguments:Ljava/util/Map;

    check-cast v14, Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/navigation/NavArgument;

    if-eqz v14, :cond_8

    iget-object v14, v14, Landroidx/navigation/NavArgument;->type:Landroidx/navigation/NavType;

    goto :goto_2

    :cond_8
    const/4 v14, 0x0

    :goto_2
    const-string v15, "key"

    if-eqz v14, :cond_9

    iget-object v7, v11, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v7, v13}, Landroidx/navigation/NavType;->get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    :goto_3
    if-eqz v14, :cond_a

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v10, v13}, Landroidx/navigation/NavType;->get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_4

    :cond_a
    const/4 v13, 0x0

    :goto_4
    if-eqz v14, :cond_6

    invoke-virtual {v14, v7, v13}, Landroidx/navigation/NavType;->valueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    :cond_b
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_c
    :goto_5
    if-nez v2, :cond_d

    if-nez v12, :cond_e

    :cond_d
    iget-object v7, v8, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget-object v7, v7, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    iget-object v8, v0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v8, v7}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    if-eqz v12, :cond_1

    goto :goto_6

    :cond_f
    const/4 v6, 0x0

    :goto_6
    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    if-eqz v6, :cond_10

    iget-object v7, v6, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    goto :goto_7

    :cond_10
    const/4 v7, 0x0

    :goto_7
    if-nez v7, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring popBackStack to route "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as it was not found on the current back stack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_11
    move/from16 v1, p3

    invoke-virtual {v0, v4, v7, v2, v1}, Landroidx/navigation/NavController;->executePopOperations(Ljava/util/List;Landroidx/navigation/NavDestination;ZZ)Z

    move-result v0

    return v0
.end method

.method public final popEntryFromBackStack(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V
    .locals 3

    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    iget-object p1, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget-object p1, p1, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    iget-object v0, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object p1

    iget-object v0, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavController$NavControllerNavigatorState;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/navigation/NavigatorState;->transitionsInProgress:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p1, v1, Landroidx/navigation/NavBackStackEntry;->_lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    iget-object p1, p1, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual {v1, v2}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    new-instance p1, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {p1, v1}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    invoke-virtual {p3, p1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    :cond_2
    if-nez v0, :cond_3

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, p1}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    invoke-virtual {p0, v1}, Landroidx/navigation/NavController;->unlinkChildFromParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    :cond_4
    :goto_1
    if-nez p2, :cond_5

    if-nez v0, :cond_5

    iget-object p0, p0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    if-eqz p0, :cond_5

    const-string p1, "backStackEntryId"

    iget-object p2, v1, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/navigation/NavControllerViewModel;->viewModelStores:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ViewModelStore;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelStore;->clear()V

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Attempted to pop "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", which is not the top of the back stack ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final populateVisibleEntries$navigation_runtime_release()Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    iget-object v2, v2, Landroidx/navigation/NavigatorState;->transitionsInProgress:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v6, v6, Landroidx/navigation/NavBackStackEntry;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v6, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-ltz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v4, v4, Landroidx/navigation/NavBackStackEntry;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-ltz v4, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    instance-of v2, v2, Landroidx/navigation/NavGraph;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    return-object p0
.end method

.method public final restoreState(Landroid/os/Bundle;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "android-support-nav:controller:navigatorState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->navigatorStateToRestore:Landroid/os/Bundle;

    const-string v0, "android-support-nav:controller:backStack"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->backStackToRestore:[Landroid/os/Parcelable;

    iget-object v0, p0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const-string v0, "android-support-nav:controller:backStackDestIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "android-support-nav:controller:backStackIds"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v7, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_1
    const-string v0, "android-support-nav:controller:backStackStates"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android-support-nav:controller:backStackStates:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    const-string v4, "id"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lkotlin/collections/ArrayDeque;

    array-length v5, v2

    invoke-direct {v4}, Lkotlin/collections/AbstractMutableList;-><init>()V

    if-nez v5, :cond_3

    sget-object v5, Lkotlin/collections/ArrayDeque;->emptyElementData:[Ljava/lang/Object;

    goto :goto_2

    :cond_3
    if-lez v5, :cond_5

    new-array v5, v5, [Ljava/lang/Object;

    :goto_2
    iput-object v5, v4, Lkotlin/collections/ArrayDeque;->elementData:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Lkotlin/jvm/internal/ArrayIterator;

    move-result-object v2

    :goto_3
    invoke-virtual {v2}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    const-string v6, "null cannot be cast to non-null type androidx.navigation.NavBackStackEntryState"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroidx/navigation/NavBackStackEntryState;

    invoke-virtual {v4, v5}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal Capacity: "

    invoke-static {v5, p1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const-string v0, "android-support-nav:controller:deepLinkHandled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    return-void
.end method

.method public final restoreStateInternal(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)Z
    .locals 12

    iget-object v0, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Landroidx/navigation/NavController$restoreStateInternal$1;

    invoke-direct {v1, p1}, Landroidx/navigation/NavController$restoreStateInternal$1;-><init>(Ljava/lang/String;)V

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->filterInPlace$CollectionsKt__MutableCollectionsKt(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;Z)Z

    iget-object v0, p0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/collections/ArrayDeque;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v1

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntryState;

    iget v4, v3, Landroidx/navigation/NavBackStackEntryState;->destinationId:I

    invoke-static {v4, v1, v2}, Landroidx/navigation/NavController;->findDestinationComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v1, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v5

    iget-object v6, p0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    invoke-virtual {v3, v1, v4, v5, v6}, Landroidx/navigation/NavBackStackEntryState;->instantiate(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v4

    goto :goto_0

    :cond_3
    sget p1, Landroidx/navigation/NavDestination;->$r8$clinit:I

    iget-object p0, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    iget p1, v3, Landroidx/navigation/NavBackStackEntryState;->destinationId:I

    invoke-static {p0, p1}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Restore State failed: destination "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be found from the current destination "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    iget-object v4, v4, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    instance-of v4, v4, Landroidx/navigation/NavGraph;

    if-nez v4, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_7

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    if-eqz v4, :cond_7

    iget-object v4, v4, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    if-eqz v4, :cond_7

    iget-object v9, v4, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    :cond_7
    iget-object v4, v2, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget-object v4, v4, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    filled-new-array {v2}, [Landroidx/navigation/NavBackStackEntry;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget-object v3, v3, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    iget-object v4, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v4, v3}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v10

    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v11, Landroidx/navigation/NavController$executeRestoreState$3;

    move-object v3, v11

    move-object v4, v1

    move-object v5, v0

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Landroidx/navigation/NavController$executeRestoreState$3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/navigation/NavController;Landroid/os/Bundle;)V

    iput-object v11, p0, Landroidx/navigation/NavController;->addToBackStackHandler:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v10, v2, p3}, Landroidx/navigation/Navigator;->navigate(Ljava/util/List;Landroidx/navigation/NavOptions;)V

    iput-object v9, p0, Landroidx/navigation/NavController;->addToBackStackHandler:Lkotlin/jvm/functions/Function1;

    goto :goto_3

    :cond_a
    iget-boolean p0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return p0
.end method

.method public final saveState()Landroid/os/Bundle;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    iget-object v2, v2, Landroidx/navigation/NavigatorProvider;->_navigators:Ljava/util/Map;

    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/Navigator;

    invoke-virtual {v3}, Landroidx/navigation/Navigator;->onSaveState()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android-support-nav:controller:navigatorState:names"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "android-support-nav:controller:navigatorState"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    if-nez v2, :cond_3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_3
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v1

    new-array v1, v1, [Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v4

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    add-int/lit8 v7, v5, 0x1

    new-instance v8, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {v8, v6}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    aput-object v8, v1, v5

    move v5, v7

    goto :goto_2

    :cond_4
    const-string v0, "android-support-nav:controller:backStack"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_5
    iget-object v0, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    if-nez v2, :cond_6

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_6
    iget-object v0, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    check-cast v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    aput v8, v0, v6

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v6, v9

    goto :goto_3

    :cond_7
    const-string v5, "android-support-nav:controller:backStackDestIds"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android-support-nav:controller:backStackIds"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_8
    iget-object v0, p0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    if-nez v2, :cond_9

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/collections/ArrayDeque;

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v7

    new-array v7, v7, [Landroid/os/Parcelable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v4

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-ltz v8, :cond_a

    check-cast v9, Landroidx/navigation/NavBackStackEntryState;

    aput-object v9, v7, v8

    move v8, v10

    goto :goto_5

    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v3

    :cond_b
    const-string v5, "android-support-nav:controller:backStackStates:"

    invoke-static {v5, v6}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_4

    :cond_c
    const-string v1, "android-support-nav:controller:backStackStates"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_d
    iget-boolean v0, p0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    if-eqz v0, :cond_f

    if-nez v2, :cond_e

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_e
    const-string v0, "android-support-nav:controller:deepLinkHandled"

    iget-boolean p0, p0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_f
    return-object v2
.end method

.method public final setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x1

    const-string v3, "graph"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v1, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    const/4 v15, 0x0

    if-nez v3, :cond_2f

    iget-object v3, v1, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x1

    if-eqz v3, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v1, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    const-string v9, "id"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v1, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    check-cast v9, Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/navigation/NavController$NavControllerNavigatorState;

    iput-boolean v14, v10, Landroidx/navigation/NavigatorState;->isNavigating:Z

    goto :goto_1

    :cond_1
    sget-object v9, Landroidx/navigation/NavController$clearBackStackInternal$restored$1;->INSTANCE:Landroidx/navigation/NavController$clearBackStackInternal$restored$1;

    invoke-static {v9}, Landroidx/navigation/NavOptionsBuilderKt;->navOptions(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;

    move-result-object v9

    invoke-virtual {v1, v8, v6, v9}, Landroidx/navigation/NavController;->restoreStateInternal(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)Z

    move-result v9

    iget-object v10, v1, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    check-cast v10, Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/navigation/NavController$NavControllerNavigatorState;

    iput-boolean v15, v11, Landroidx/navigation/NavigatorState;->isNavigating:Z

    goto :goto_2

    :cond_2
    if-eqz v9, :cond_0

    invoke-virtual {v1, v8, v14, v15}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    move-result v8

    goto :goto_0

    :cond_3
    iget v3, v3, Landroidx/navigation/NavDestination;->id:I

    invoke-virtual {v1, v3, v2, v5}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    :cond_4
    iput-object v0, v1, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    iget-object v0, v1, Landroidx/navigation/NavController;->navigatorStateToRestore:Landroid/os/Bundle;

    iget-object v3, v1, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    if-eqz v0, :cond_6

    const-string v7, "android-support-nav:controller:navigatorState:names"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "name"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v9

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v9, v8}, Landroidx/navigation/Navigator;->onRestoreState(Landroid/os/Bundle;)V

    goto :goto_3

    :cond_6
    iget-object v0, v1, Landroidx/navigation/NavController;->backStackToRestore:[Landroid/os/Parcelable;

    const-string v7, " cannot be found from the current destination "

    if-eqz v0, :cond_b

    array-length v8, v0

    move v9, v15

    :goto_4
    if-ge v9, v8, :cond_a

    aget-object v10, v0, v9

    const-string v11, "null cannot be cast to non-null type androidx.navigation.NavBackStackEntryState"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroidx/navigation/NavBackStackEntryState;

    iget v11, v10, Landroidx/navigation/NavBackStackEntryState;->destinationId:I

    invoke-virtual {v1, v11}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v11

    if-eqz v11, :cond_9

    iget-object v12, v1, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v13

    iget-object v5, v1, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    invoke-virtual {v10, v12, v11, v13, v5}, Landroidx/navigation/NavBackStackEntryState;->instantiate(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v5

    iget-object v10, v11, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v10

    iget-object v11, v1, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    check-cast v11, Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_7

    new-instance v12, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-direct {v12, v1, v10}, Landroidx/navigation/NavController$NavControllerNavigatorState;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V

    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    check-cast v12, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v4, v5}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-virtual {v12, v5}, Landroidx/navigation/NavController$NavControllerNavigatorState;->addInternal(Landroidx/navigation/NavBackStackEntry;)V

    iget-object v10, v5, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget-object v10, v10, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    if-eqz v10, :cond_8

    iget v10, v10, Landroidx/navigation/NavDestination;->id:I

    invoke-virtual {v1, v10}, Landroidx/navigation/NavController;->getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v10

    invoke-virtual {v1, v5, v10}, Landroidx/navigation/NavController;->linkChildToParent(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    :cond_8
    add-int/2addr v9, v2

    const/4 v5, 0x0

    goto :goto_4

    :cond_9
    sget v0, Landroidx/navigation/NavDestination;->$r8$clinit:I

    iget-object v0, v1, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    iget v2, v10, Landroidx/navigation/NavBackStackEntryState;->destinationId:I

    invoke-static {v0, v2}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Restoring the Navigation back stack failed: destination "

    invoke-static {v3, v0, v7}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    iput-object v6, v1, Landroidx/navigation/NavController;->backStackToRestore:[Landroid/os/Parcelable;

    :cond_b
    iget-object v0, v3, Landroidx/navigation/NavigatorProvider;->_navigators:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroidx/navigation/Navigator;

    iget-boolean v8, v8, Landroidx/navigation/Navigator;->isAttached:Z

    if-nez v8, :cond_c

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/Navigator;

    iget-object v5, v1, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    check-cast v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_e

    new-instance v8, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-direct {v8, v1, v3}, Landroidx/navigation/NavController$NavControllerNavigatorState;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V

    invoke-interface {v5, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    check-cast v8, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-virtual {v3, v8}, Landroidx/navigation/Navigator;->onAttach(Landroidx/navigation/NavController$NavControllerNavigatorState;)V

    goto :goto_6

    :cond_f
    iget-object v0, v1, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_2e

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-boolean v0, v1, Landroidx/navigation/NavController;->deepLinkHandled:Z

    if-nez v0, :cond_2d

    iget-object v3, v1, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_10

    goto/16 :goto_16

    :cond_10
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "NavController"

    if-eqz v8, :cond_11

    :try_start_0
    const-string v0, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "handleDeepLink() could not extract deepLink from "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    move-object v0, v6

    :goto_7
    if-eqz v8, :cond_12

    const-string v10, "android-support-nav:controller:deepLinkArgs"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_8

    :cond_12
    move-object v10, v6

    :goto_8
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    if-eqz v8, :cond_13

    const-string v12, "android-support-nav:controller:deepLinkExtras"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    goto :goto_9

    :cond_13
    move-object v8, v6

    :goto_9
    if-eqz v8, :cond_14

    invoke-virtual {v11, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_14
    if-eqz v0, :cond_15

    array-length v8, v0

    if-nez v8, :cond_17

    :cond_15
    iget-object v8, v1, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v12, Landroidx/navigation/NavDeepLinkRequest;

    invoke-direct {v12, v5}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v8, v12}, Landroidx/navigation/NavGraph;->matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v8

    if-eqz v8, :cond_17

    iget-object v0, v8, Landroidx/navigation/NavDestination$DeepLinkMatch;->destination:Landroidx/navigation/NavDestination;

    invoke-virtual {v0, v6}, Landroidx/navigation/NavDestination;->buildDeepLinkIds(Landroidx/navigation/NavDestination;)[I

    move-result-object v10

    iget-object v8, v8, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v8}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_16
    move-object v0, v10

    move-object v10, v6

    :cond_17
    if-eqz v0, :cond_2d

    array-length v8, v0

    if-nez v8, :cond_18

    goto/16 :goto_16

    :cond_18
    iget-object v8, v1, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    array-length v12, v0

    move v13, v15

    :goto_a
    if-ge v13, v12, :cond_1e

    aget v6, v0, v13

    if-nez v13, :cond_1a

    iget-object v2, v1, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Landroidx/navigation/NavDestination;->id:I

    if-ne v2, v6, :cond_19

    iget-object v2, v1, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    goto :goto_b

    :cond_19
    const/4 v2, 0x0

    goto :goto_b

    :cond_1a
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8, v6, v8, v15}, Landroidx/navigation/NavGraph;->findNodeComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object v2

    :goto_b
    if-nez v2, :cond_1b

    sget v2, Landroidx/navigation/NavDestination;->$r8$clinit:I

    iget-object v2, v1, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-static {v2, v6}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_1b
    array-length v6, v0

    sub-int/2addr v6, v14

    if-eq v13, v6, :cond_1d

    instance-of v6, v2, Landroidx/navigation/NavGraph;

    if-eqz v6, :cond_1d

    check-cast v2, Landroidx/navigation/NavGraph;

    :goto_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v6, v2, Landroidx/navigation/NavGraph;->startDestId:I

    invoke-virtual {v2, v6, v2, v15}, Landroidx/navigation/NavGraph;->findNodeComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object v6

    instance-of v6, v6, Landroidx/navigation/NavGraph;

    if-eqz v6, :cond_1c

    iget v6, v2, Landroidx/navigation/NavGraph;->startDestId:I

    invoke-virtual {v2, v6, v2, v15}, Landroidx/navigation/NavGraph;->findNodeComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavGraph;

    goto :goto_c

    :cond_1c
    move-object v8, v2

    :cond_1d
    const/4 v2, 0x1

    add-int/2addr v13, v2

    const/4 v6, 0x0

    goto :goto_a

    :cond_1e
    const/4 v2, 0x0

    :goto_d
    if-eqz v2, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Could not find destination "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in the navigation graph, ignoring the deep link from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_1f
    const-string v2, "android-support-nav:controller:deepLinkIntent"

    invoke-virtual {v11, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    array-length v2, v0

    new-array v13, v2, [Landroid/os/Bundle;

    move v6, v15

    :goto_e
    if-ge v6, v2, :cond_21

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    if-eqz v10, :cond_20

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    if-eqz v9, :cond_20

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_20
    aput-object v8, v13, v6

    const/4 v8, 0x1

    add-int/2addr v6, v8

    goto :goto_e

    :cond_21
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v6, 0x10000000

    and-int/2addr v6, v2

    if-eqz v6, :cond_22

    const v8, 0x8000

    and-int/2addr v2, v8

    if-nez v2, :cond_22

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v1, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    new-instance v1, Landroidx/core/app/TaskStackBuilder;

    invoke-direct {v1, v0}, Landroidx/core/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroidx/core/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)V

    invoke-virtual {v1}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    invoke-virtual {v3, v15, v15}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto/16 :goto_1a

    :cond_22
    const-string v2, "Deep Linking failed: destination "

    if-eqz v6, :cond_26

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v1, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v3, Landroidx/navigation/NavDestination;->id:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5, v4}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    :goto_f
    array-length v3, v0

    if-ge v15, v3, :cond_25

    aget v3, v0, v15

    add-int/lit8 v4, v15, 0x1

    aget-object v5, v13, v15

    invoke-virtual {v1, v3}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v6

    if-eqz v6, :cond_24

    new-instance v3, Landroidx/navigation/NavController$handleDeepLink$2;

    invoke-direct {v3, v6, v1}, Landroidx/navigation/NavController$handleDeepLink$2;-><init>(Landroidx/navigation/NavDestination;Landroidx/navigation/NavController;)V

    invoke-static {v3}, Landroidx/navigation/NavOptionsBuilderKt;->navOptions(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;

    move-result-object v3

    invoke-virtual {v1, v6, v5, v3}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    move v15, v4

    :cond_23
    const/4 v5, 0x1

    goto :goto_f

    :cond_24
    sget v0, Landroidx/navigation/NavDestination;->$r8$clinit:I

    iget-object v0, v1, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-static {v0, v3}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-static {v2, v0, v7}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_25
    iput-boolean v14, v1, Landroidx/navigation/NavController;->deepLinkHandled:Z

    goto/16 :goto_1a

    :cond_26
    iget-object v3, v1, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    array-length v4, v0

    move v12, v15

    :goto_10
    if-ge v12, v4, :cond_2c

    aget v5, v0, v12

    aget-object v11, v13, v12

    if-nez v12, :cond_27

    iget-object v6, v1, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    :goto_11
    move-object v10, v6

    goto :goto_12

    :cond_27
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v3, v15}, Landroidx/navigation/NavGraph;->findNodeComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object v6

    goto :goto_11

    :goto_12
    if-eqz v10, :cond_2b

    array-length v5, v0

    sub-int/2addr v5, v14

    if-eq v12, v5, :cond_2a

    instance-of v5, v10, Landroidx/navigation/NavGraph;

    if-eqz v5, :cond_29

    check-cast v10, Landroidx/navigation/NavGraph;

    :goto_13
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v10, Landroidx/navigation/NavGraph;->startDestId:I

    invoke-virtual {v10, v3, v10, v15}, Landroidx/navigation/NavGraph;->findNodeComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object v3

    instance-of v3, v3, Landroidx/navigation/NavGraph;

    if-eqz v3, :cond_28

    iget v3, v10, Landroidx/navigation/NavGraph;->startDestId:I

    invoke-virtual {v10, v3, v10, v15}, Landroidx/navigation/NavGraph;->findNodeComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroidx/navigation/NavGraph;

    goto :goto_13

    :cond_28
    move-object v3, v10

    :cond_29
    move/from16 v17, v12

    move-object/from16 v21, v13

    move v15, v14

    :goto_14
    const/4 v5, 0x1

    goto :goto_15

    :cond_2a
    iget-object v5, v1, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v8, v5, Landroidx/navigation/NavDestination;->id:I

    new-instance v9, Landroidx/navigation/NavOptions;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, -0x1

    move-object v5, v9

    move-object/from16 v18, v9

    move v9, v14

    move-object/from16 v19, v10

    move v10, v15

    move-object/from16 v20, v11

    move v11, v15

    move/from16 v17, v12

    move v12, v15

    move-object/from16 v21, v13

    move/from16 v13, v16

    move v15, v14

    move/from16 v14, v16

    invoke-direct/range {v5 .. v14}, Landroidx/navigation/NavOptions;-><init>(ZZIZZIIII)V

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    invoke-virtual {v1, v6, v5, v7}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    goto :goto_14

    :goto_15
    add-int/lit8 v12, v17, 0x1

    move v14, v15

    move-object/from16 v13, v21

    const/4 v15, 0x0

    goto :goto_10

    :cond_2b
    sget v0, Landroidx/navigation/NavDestination;->$r8$clinit:I

    iget-object v0, v1, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-static {v0, v5}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be found in graph "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    move v15, v14

    iput-boolean v15, v1, Landroidx/navigation/NavController;->deepLinkHandled:Z

    goto/16 :goto_1a

    :cond_2d
    :goto_16
    iget-object v0, v1, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    goto/16 :goto_1a

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    goto/16 :goto_1a

    :cond_2f
    iget-object v2, v0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_32

    iget-object v5, v0, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v5, v3}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavDestination;

    iget-object v6, v1, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v6, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v6, v3}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v6

    iget-object v7, v1, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v7, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    iget-boolean v8, v7, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v8, :cond_30

    invoke-static {v7}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    :cond_30
    iget-object v8, v7, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v9, v7, Landroidx/collection/SparseArrayCompat;->size:I

    invoke-static {v9, v6, v8}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch(II[I)I

    move-result v6

    if-ltz v6, :cond_31

    iget-object v7, v7, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aget-object v8, v7, v6

    aput-object v5, v7, v6

    :cond_31
    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_17

    :cond_32
    invoke-virtual {v4}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    sget v4, Landroidx/navigation/NavDestination;->$r8$clinit:I

    iget-object v4, v3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    invoke-static {v4}, Landroidx/navigation/NavDestination$Companion;->getHierarchy(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    move-result-object v4

    invoke-static {v4}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v4

    const-string v5, "<this>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lkotlin/collections/ReversedListReadOnly;

    invoke-direct {v5, v4}, Lkotlin/collections/ReversedListReadOnly;-><init>(Ljava/util/List;)V

    iget-object v4, v1, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lkotlin/collections/ReversedListReadOnly;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    move-object v6, v5

    check-cast v6, Lkotlin/collections/ReversedListReadOnly$listIterator$1;

    iget-object v7, v6, Lkotlin/collections/ReversedListReadOnly$listIterator$1;->delegateIterator:Ljava/util/ListIterator;

    invoke-interface {v7}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_35

    iget-object v6, v6, Lkotlin/collections/ReversedListReadOnly$listIterator$1;->delegateIterator:Ljava/util/ListIterator;

    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavDestination;

    iget-object v7, v1, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    :cond_33
    const/4 v7, 0x0

    goto :goto_19

    :cond_34
    instance-of v7, v4, Landroidx/navigation/NavGraph;

    if-eqz v7, :cond_33

    check-cast v4, Landroidx/navigation/NavGraph;

    iget v6, v6, Landroidx/navigation/NavDestination;->id:I

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v4, v7}, Landroidx/navigation/NavGraph;->findNodeComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_19

    :cond_35
    const/4 v7, 0x0

    const-string v5, "<set-?>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    goto :goto_18

    :cond_36
    :goto_1a
    return-void
.end method

.method public final unlinkChildFromParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;)V
    .locals 2

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/NavController;->childToParentEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iget-object v0, v0, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    iget-object v1, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v1, v0}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    iget-object v1, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroidx/navigation/NavController$NavControllerNavigatorState;->markTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    :cond_3
    iget-object p0, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public final updateBackStackLifecycle$navigation_runtime_release()V
    .locals 12

    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    instance-of v4, v2, Landroidx/navigation/FloatingWindow;

    if-eqz v4, :cond_2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    iget-object v5, v5, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v6, v5, Landroidx/navigation/FloatingWindow;

    if-nez v6, :cond_1

    instance-of v5, v5, Landroidx/navigation/NavGraph;

    if-nez v5, :cond_1

    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    iget-object v6, v5, Landroidx/navigation/NavBackStackEntry;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    iget-object v7, v5, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    sget-object v9, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    if-eqz v2, :cond_9

    iget v10, v7, Landroidx/navigation/NavDestination;->id:I

    iget v11, v2, Landroidx/navigation/NavDestination;->id:I

    if-ne v10, v11, :cond_9

    if-eq v6, v8, :cond_7

    iget-object v6, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    iget-object v10, v7, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v6

    iget-object v10, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    check-cast v10, Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavController$NavControllerNavigatorState;

    if-eqz v6, :cond_4

    iget-object v6, v6, Landroidx/navigation/NavigatorState;->transitionsInProgress:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    if-eqz v6, :cond_4

    iget-object v6, v6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    if-eqz v6, :cond_4

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    check-cast v6, Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {v4, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_3
    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavDestination;

    if-eqz v5, :cond_8

    iget v5, v5, Landroidx/navigation/NavDestination;->id:I

    iget v6, v7, Landroidx/navigation/NavDestination;->id:I

    if-ne v5, v6, :cond_8

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    :cond_8
    iget-object v2, v2, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    goto :goto_0

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_c

    iget v7, v7, Landroidx/navigation/NavDestination;->id:I

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/navigation/NavDestination;

    iget v10, v10, Landroidx/navigation/NavDestination;->id:I

    if-ne v7, v10, :cond_c

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/navigation/NavDestination;

    if-ne v6, v8, :cond_a

    invoke-virtual {v5, v9}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_4

    :cond_a
    if-eq v6, v9, :cond_b

    invoke-virtual {v4, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_4
    iget-object v5, v7, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    if-eqz v5, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v6}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/Lifecycle$State;

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->updateState()V

    goto :goto_5

    :cond_f
    return-void
.end method

.method public final updateOnBackPressedCallbackEnabled()V
    .locals 2

    iget-boolean v0, p0, Landroidx/navigation/NavController;->enableOnBackPressedCallback:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getDestinationCountOnBackStack()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Landroidx/navigation/NavController;->onBackPressedCallback:Landroidx/navigation/NavController$onBackPressedCallback$1;

    invoke-virtual {p0, v1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    return-void
.end method
