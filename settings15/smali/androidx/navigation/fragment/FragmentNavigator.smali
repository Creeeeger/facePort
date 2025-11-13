.class public Landroidx/navigation/fragment/FragmentNavigator;
.super Landroidx/navigation/Navigator;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "fragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/Navigator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0017\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0003\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/navigation/fragment/FragmentNavigator;",
        "Landroidx/navigation/Navigator;",
        "Landroidx/navigation/fragment/FragmentNavigator$Destination;",
        "ClearEntryStateViewModel",
        "Destination",
        "navigation-fragment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final containerId:I

.field public final context:Landroid/content/Context;

.field public final fragmentManager:Landroidx/fragment/app/FragmentManager;

.field public final fragmentObserver:Landroidx/navigation/fragment/FragmentNavigator$$ExternalSyntheticLambda0;

.field public final fragmentViewObserver:Lkotlin/jvm/functions/Function1;

.field public final pendingOps:Ljava/util/List;

.field public final savedIds:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    iput p3, p0, Landroidx/navigation/fragment/FragmentNavigator;->containerId:I

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator;->pendingOps:Ljava/util/List;

    new-instance p1, Landroidx/navigation/fragment/FragmentNavigator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/navigation/fragment/FragmentNavigator$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/fragment/FragmentNavigator;)V

    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentObserver:Landroidx/navigation/fragment/FragmentNavigator$$ExternalSyntheticLambda0;

    new-instance p1, Landroidx/navigation/fragment/FragmentNavigator$fragmentViewObserver$1;

    invoke-direct {p1, p0}, Landroidx/navigation/fragment/FragmentNavigator$fragmentViewObserver$1;-><init>(Landroidx/navigation/fragment/FragmentNavigator;)V

    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentViewObserver:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static addPendingOps$default(Landroidx/navigation/fragment/FragmentNavigator;Ljava/lang/String;ZI)V
    .locals 8

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_4

    iget-object p3, p0, Landroidx/navigation/fragment/FragmentNavigator;->pendingOps:Ljava/util/List;

    new-instance v0, Landroidx/navigation/fragment/FragmentNavigator$addPendingOps$1;

    invoke-direct {v0, p1}, Landroidx/navigation/fragment/FragmentNavigator$addPendingOps$1;-><init>(Ljava/lang/String;)V

    const-string v2, "<this>"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlin/ranges/IntRange;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4}, Lkotlin/ranges/IntProgression;-><init>(III)V

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v2

    :goto_0
    iget-boolean v3, v2, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    move-result v3

    move-object v5, p3

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/navigation/fragment/FragmentNavigator$addPendingOps$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v4, :cond_1

    goto :goto_0

    :cond_1
    if-eq v1, v3, :cond_2

    invoke-virtual {v5, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v0, p3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-static {p3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p3

    if-gt v1, p3, :cond_4

    :goto_1
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eq p3, v1, :cond_4

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_4
    iget-object p0, p0, Landroidx/navigation/fragment/FragmentNavigator;->pendingOps:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-instance p3, Lkotlin/Pair;

    invoke-direct {p3, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static isLoggingEnabled()Z
    .locals 2

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FragmentNavigator"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public final attachClearViewModel$navigation_fragment_release(Landroidx/fragment/app/Fragment;Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavController$NavControllerNavigatorState;)V
    .locals 5

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    const-string v1, "fragment.viewModelStore"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;

    invoke-direct {v1}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;-><init>()V

    sget-object v2, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$viewModel$1$1;->INSTANCE:Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$viewModel$1$1;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v4, Landroidx/navigation/fragment/FragmentNavigator$ClearEntryStateViewModel;

    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->addInitializer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1}, Landroidx/lifecycle/viewmodel/InitializerViewModelFactoryBuilder;->build()Landroidx/lifecycle/viewmodel/InitializerViewModelFactory;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    const-string v3, "defaultCreationExtras"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    invoke-direct {v3, v0, v1, v2}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Landroidx/navigation/fragment/FragmentNavigator$ClearEntryStateViewModel;

    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;

    invoke-direct {v2, p2, p3, p0, p1}, Landroidx/navigation/fragment/FragmentNavigator$attachClearViewModel$1;-><init>(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavController$NavControllerNavigatorState;Landroidx/navigation/fragment/FragmentNavigator;Landroidx/fragment/app/Fragment;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Landroidx/navigation/fragment/FragmentNavigator$ClearEntryStateViewModel;->completeTransition:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createDestination()Landroidx/navigation/NavDestination;
    .locals 1

    new-instance v0, Landroidx/navigation/fragment/FragmentNavigator$Destination;

    invoke-direct {v0, p0}, Landroidx/navigation/NavDestination;-><init>(Landroidx/navigation/Navigator;)V

    return-object v0
.end method

.method public final createFragmentTransaction(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavOptions;)Landroidx/fragment/app/BackStackRecord;
    .locals 7

    iget-object v0, p1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    const-string v1, "null cannot be cast to non-null type androidx.navigation.fragment.FragmentNavigator.Destination"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/navigation/fragment/FragmentNavigator$Destination;

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    iget-object v0, v0, Landroidx/navigation/fragment/FragmentNavigator$Destination;->_className:Ljava/lang/String;

    if-eqz v0, :cond_b

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroidx/navigation/fragment/FragmentNavigator;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentManager$3;

    move-result-object v4

    iget-object v5, p0, Landroidx/navigation/fragment/FragmentNavigator;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    invoke-virtual {v4, v0}, Landroidx/fragment/app/FragmentManager$3;->instantiate(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v4, "fragmentManager.fragment\u2026t.classLoader, className)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v1, v3}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 v3, -0x1

    if-eqz p2, :cond_1

    iget v4, p2, Landroidx/navigation/NavOptions;->enterAnim:I

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-eqz p2, :cond_2

    iget v5, p2, Landroidx/navigation/NavOptions;->exitAnim:I

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-eqz p2, :cond_3

    iget v6, p2, Landroidx/navigation/NavOptions;->popEnterAnim:I

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    if-eqz p2, :cond_4

    iget p2, p2, Landroidx/navigation/NavOptions;->popExitAnim:I

    goto :goto_3

    :cond_4
    move p2, v3

    :goto_3
    if-ne v4, v3, :cond_5

    if-ne v5, v3, :cond_5

    if-ne v6, v3, :cond_5

    if-eq p2, v3, :cond_a

    :cond_5
    if-eq v4, v3, :cond_6

    goto :goto_4

    :cond_6
    move v4, v2

    :goto_4
    if-eq v5, v3, :cond_7

    goto :goto_5

    :cond_7
    move v5, v2

    :goto_5
    if-eq v6, v3, :cond_8

    goto :goto_6

    :cond_8
    move v6, v2

    :goto_6
    if-eq p2, v3, :cond_9

    move v2, p2

    :cond_9
    iput v4, v1, Landroidx/fragment/app/BackStackRecord;->mEnterAnim:I

    iput v5, v1, Landroidx/fragment/app/BackStackRecord;->mExitAnim:I

    iput v6, v1, Landroidx/fragment/app/BackStackRecord;->mPopEnterAnim:I

    iput v2, v1, Landroidx/fragment/app/BackStackRecord;->mPopExitAnim:I

    :cond_a
    iget p0, p0, Landroidx/navigation/fragment/FragmentNavigator;->containerId:I

    iget-object p1, p1, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    invoke-virtual {v1, p0, v0, p1}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/BackStackRecord;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    const/4 p0, 0x1

    iput-boolean p0, v1, Landroidx/fragment/app/BackStackRecord;->mReorderingAllowed:Z

    return-object v1

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment class was not set"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final navigate(Ljava/util/List;Landroidx/navigation/NavOptions;)V
    .locals 7

    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v1

    const-string v2, "FragmentNavigator"

    if-eqz v1, :cond_0

    const-string p0, "Ignoring navigate() call: FragmentManager has already saved its state"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v3

    iget-object v3, v3, Landroidx/navigation/NavigatorState;->backStack:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    if-nez v3, :cond_1

    iget-boolean v5, p2, Landroidx/navigation/NavOptions;->restoreState:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    iget-object v6, v1, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v3, Landroidx/fragment/app/FragmentManager$SaveBackStackState;

    iget-object v5, v1, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v3, v0, v5, v6}, Landroidx/fragment/app/FragmentManager$SaveBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;I)V

    invoke-virtual {v0, v3, v4}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    invoke-virtual {p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/navigation/NavigatorState;->pushWithTransition(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, p2}, Landroidx/navigation/fragment/FragmentNavigator;->createFragmentTransaction(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavOptions;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v5

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v3

    iget-object v3, v3, Landroidx/navigation/NavigatorState;->backStack:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    const/4 v6, 0x6

    if-eqz v3, :cond_2

    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    invoke-static {p0, v3, v4, v6}, Landroidx/navigation/fragment/FragmentNavigator;->addPendingOps$default(Landroidx/navigation/fragment/FragmentNavigator;Ljava/lang/String;ZI)V

    :cond_2
    iget-object v3, v1, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    invoke-static {p0, v3, v4, v6}, Landroidx/navigation/fragment/FragmentNavigator;->addPendingOps$default(Landroidx/navigation/fragment/FragmentNavigator;Ljava/lang/String;ZI)V

    invoke-virtual {v5, v3}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v5, v4}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    invoke-static {}, Landroidx/navigation/fragment/FragmentNavigator;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Calling pushWithTransition via navigate() on entry "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/navigation/NavigatorState;->pushWithTransition(Landroidx/navigation/NavBackStackEntry;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final onAttach(Landroidx/navigation/NavController$NavControllerNavigatorState;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/navigation/Navigator;->onAttach(Landroidx/navigation/NavController$NavControllerNavigatorState;)V

    invoke-static {}, Landroidx/navigation/fragment/FragmentNavigator;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentNavigator"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroidx/navigation/fragment/FragmentNavigator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Landroidx/navigation/fragment/FragmentNavigator$$ExternalSyntheticLambda1;-><init>(Landroidx/navigation/NavController$NavControllerNavigatorState;Landroidx/navigation/fragment/FragmentNavigator;)V

    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v2, v1, Landroidx/fragment/app/FragmentManager;->mOnAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroidx/navigation/fragment/FragmentNavigator$onAttach$2;

    invoke-direct {v0, p1, p0}, Landroidx/navigation/fragment/FragmentNavigator$onAttach$2;-><init>(Landroidx/navigation/NavController$NavControllerNavigatorState;Landroidx/navigation/fragment/FragmentNavigator;)V

    iget-object p0, v1, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v1, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    :cond_1
    iget-object p0, v1, Landroidx/fragment/app/FragmentManager;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onLaunchSingleTop(Landroidx/navigation/NavBackStackEntry;)V
    .locals 7

    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "FragmentNavigator"

    const-string p1, "Ignoring onLaunchSingleTop() call: FragmentManager has already saved its state"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroidx/navigation/fragment/FragmentNavigator;->createFragmentTransaction(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavOptions;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v2

    iget-object v2, v2, Landroidx/navigation/NavigatorState;->backStack:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v3, v4, :cond_2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    if-eqz v2, :cond_1

    const/4 v3, 0x6

    iget-object v2, v2, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    invoke-static {p0, v2, v5, v3}, Landroidx/navigation/fragment/FragmentNavigator;->addPendingOps$default(Landroidx/navigation/fragment/FragmentNavigator;Ljava/lang/String;ZI)V

    :cond_1
    const/4 v2, 0x4

    iget-object v3, p1, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    invoke-static {p0, v3, v4, v2}, Landroidx/navigation/fragment/FragmentNavigator;->addPendingOps$default(Landroidx/navigation/fragment/FragmentNavigator;Ljava/lang/String;ZI)V

    new-instance v2, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    const/4 v6, -0x1

    invoke-direct {v2, v0, v3, v6, v4}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    invoke-virtual {v0, v2, v5}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    const/4 v0, 0x2

    invoke-static {p0, v3, v5, v0}, Landroidx/navigation/fragment/FragmentNavigator;->addPendingOps$default(Landroidx/navigation/fragment/FragmentNavigator;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, v5}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    invoke-virtual {p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/navigation/NavigatorState;->onLaunchSingleTop(Landroidx/navigation/NavBackStackEntry;)V

    return-void
.end method

.method public final onRestoreState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "androidx-nav-fragment:navigator:savedIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public final onSaveState()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lkotlin/Pair;

    const-string v1, "androidx-nav-fragment:navigator:savedIds"

    invoke-direct {p0, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final popBackStack(Landroidx/navigation/NavBackStackEntry;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "popUpTo"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Landroidx/navigation/fragment/FragmentNavigator;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v4

    const-string v5, "FragmentNavigator"

    if-eqz v4, :cond_0

    const-string v0, "Ignoring popBackStack() call: FragmentManager has already saved its state"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v4

    iget-object v4, v4, Landroidx/navigation/NavigatorState;->backStack:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v4, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    invoke-static {v6, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const/4 v10, 0x6

    iget-object v4, v4, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    invoke-static {v0, v4, v6, v10}, Landroidx/navigation/fragment/FragmentNavigator;->addPendingOps$default(Landroidx/navigation/fragment/FragmentNavigator;Ljava/lang/String;ZI)V

    :cond_1
    check-cast v7, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Landroidx/navigation/NavBackStackEntry;

    iget-object v14, v0, Landroidx/navigation/fragment/FragmentNavigator;->pendingOps:Ljava/util/List;

    invoke-static {v14}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    move-result-object v14

    sget-object v15, Landroidx/navigation/fragment/FragmentNavigator$popBackStack$1$1;->INSTANCE:Landroidx/navigation/fragment/FragmentNavigator$popBackStack$1$1;

    invoke-static {v14, v15}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object v14

    iget-object v15, v13, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    iget-object v12, v14, Lkotlin/sequences/TransformingSequence;->sequence:Lkotlin/sequences/Sequence;

    invoke-interface {v12}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move/from16 v16, v6

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    iget-object v9, v14, Lkotlin/sequences/TransformingSequence;->transformer:Lkotlin/jvm/functions/Function1;

    invoke-interface {v9, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ltz v16, :cond_3

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move/from16 v12, v16

    goto :goto_2

    :cond_2
    add-int/lit8 v16, v16, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_4
    const/4 v12, -0x1

    :goto_2
    if-ltz v12, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_7

    iget-object v6, v8, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    iget-object v9, v13, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v6, 0x1

    :goto_5
    if-eqz v6, :cond_8

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const/4 v6, 0x0

    const/4 v9, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    iget-object v6, v6, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-static {v0, v6, v10, v9}, Landroidx/navigation/fragment/FragmentNavigator;->addPendingOps$default(Landroidx/navigation/fragment/FragmentNavigator;Ljava/lang/String;ZI)V

    goto :goto_6

    :cond_a
    if-eqz v2, :cond_c

    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "FragmentManager cannot save the state of the initial destination "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_b
    iget-object v7, v6, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    new-instance v9, Landroidx/fragment/app/FragmentManager$SaveBackStackState;

    const/4 v10, 0x0

    invoke-direct {v9, v3, v7, v10}, Landroidx/fragment/app/FragmentManager$SaveBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;I)V

    const/4 v7, 0x0

    invoke-virtual {v3, v9, v7}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    iget-object v9, v0, Landroidx/navigation/fragment/FragmentNavigator;->savedIds:Ljava/util/Set;

    iget-object v6, v6, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    invoke-interface {v9, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    const/4 v7, 0x0

    new-instance v4, Landroidx/fragment/app/FragmentManager$PopBackStackState;

    iget-object v6, v1, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-direct {v4, v3, v6, v9, v8}, Landroidx/fragment/app/FragmentManager$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;II)V

    invoke-virtual {v3, v4, v7}, Landroidx/fragment/app/FragmentManager;->enqueueAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    :cond_d
    invoke-static {}, Landroidx/navigation/fragment/FragmentNavigator;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Calling popWithTransition via popBackStack() on entry "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with savedState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroidx/navigation/NavigatorState;->popWithTransition(Landroidx/navigation/NavBackStackEntry;Z)V

    return-void
.end method
