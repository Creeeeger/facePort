.class public abstract Landroidx/lifecycle/AbstractSavedStateViewModelFactory;
.super Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public final defaultArgs:Landroid/os/Bundle;

.field public final lifecycle:Landroidx/lifecycle/Lifecycle;

.field public final savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;-><init>()V

    invoke-interface {p1}, Landroidx/savedstate/SavedStateRegistryOwner;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    iput-object p2, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->defaultArgs:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 5

    iget-object v0, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->defaultArgs:Landroid/os/Bundle;

    sget-object v3, Landroidx/lifecycle/LegacySavedStateHandleController;->INSTANCE:Landroidx/lifecycle/LegacySavedStateHandleController;

    invoke-virtual {v1, p1}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroidx/lifecycle/SavedStateHandle;->Companion:Landroidx/lifecycle/SavedStateHandle$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Landroidx/lifecycle/SavedStateHandle$Companion;->createHandle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v2

    new-instance v3, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v3, p1, v2}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/SavedStateHandle;)V

    invoke-virtual {v3, v0, v1}, Landroidx/lifecycle/SavedStateHandleController;->attachToLifecycle(Landroidx/lifecycle/Lifecycle;Landroidx/savedstate/SavedStateRegistry;)V

    sget-object p1, Landroidx/lifecycle/LegacySavedStateHandleController;->INSTANCE:Landroidx/lifecycle/LegacySavedStateHandleController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroidx/lifecycle/LegacySavedStateHandleController;->tryToAddRecreator(Landroidx/lifecycle/Lifecycle;Landroidx/savedstate/SavedStateRegistry;)V

    iget-object p1, v3, Landroidx/lifecycle/SavedStateHandleController;->handle:Landroidx/lifecycle/SavedStateHandle;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->create(Landroidx/lifecycle/SavedStateHandle;)Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;

    move-result-object p0

    iget-object p1, p0, Landroidx/lifecycle/ViewModel;->impl:Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;

    if-eqz p1, :cond_0

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p1, v0, v3}, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->addCloseable(Ljava/lang/String;Ljava/lang/AutoCloseable;)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "AbstractSavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 4

    sget-object p1, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->VIEW_MODEL_KEY:Landroidx/lifecycle/viewmodel/internal/ViewModelProviders$ViewModelKey;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->defaultArgs:Landroid/os/Bundle;

    sget-object v2, Landroidx/lifecycle/LegacySavedStateHandleController;->INSTANCE:Landroidx/lifecycle/LegacySavedStateHandleController;

    invoke-virtual {v0, p1}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/SavedStateHandle;->Companion:Landroidx/lifecycle/SavedStateHandle$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Landroidx/lifecycle/SavedStateHandle$Companion;->createHandle(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v2, p1, v1}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/SavedStateHandle;)V

    invoke-virtual {v2, p2, v0}, Landroidx/lifecycle/SavedStateHandleController;->attachToLifecycle(Landroidx/lifecycle/Lifecycle;Landroidx/savedstate/SavedStateRegistry;)V

    sget-object p1, Landroidx/lifecycle/LegacySavedStateHandleController;->INSTANCE:Landroidx/lifecycle/LegacySavedStateHandleController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Landroidx/lifecycle/LegacySavedStateHandleController;->tryToAddRecreator(Landroidx/lifecycle/Lifecycle;Landroidx/savedstate/SavedStateRegistry;)V

    iget-object p1, v2, Landroidx/lifecycle/SavedStateHandleController;->handle:Landroidx/lifecycle/SavedStateHandle;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->create(Landroidx/lifecycle/SavedStateHandle;)Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;

    move-result-object p0

    iget-object p1, p0, Landroidx/lifecycle/ViewModel;->impl:Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;

    if-eqz p1, :cond_1

    const-string p2, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p1, p2, v2}, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl;->addCloseable(Ljava/lang/String;Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroidx/lifecycle/SavedStateHandleSupport;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->create(Landroidx/lifecycle/SavedStateHandle;)Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract create(Landroidx/lifecycle/SavedStateHandle;)Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;
.end method

.method public final onRequery(Landroidx/lifecycle/ViewModel;)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, v0, p0}, Landroidx/lifecycle/LegacySavedStateHandleController;->attachHandleIfNeeded(Landroidx/lifecycle/ViewModel;Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    :cond_0
    return-void
.end method
