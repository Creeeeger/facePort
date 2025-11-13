.class public final Landroidx/navigation/NavBackStackEntry$NavResultSavedStateFactory;
.super Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public defaultArgs:Landroid/os/Bundle;

.field public lifecycle:Landroidx/lifecycle/Lifecycle;

.field public savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry$NavResultSavedStateFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry$NavResultSavedStateFactory;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry$NavResultSavedStateFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry$NavResultSavedStateFactory;->defaultArgs:Landroid/os/Bundle;

    invoke-static {v0, v1, p1, p0}, Landroidx/lifecycle/LegacySavedStateHandleController;->create(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;

    move-result-object p0

    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController;->handle:Landroidx/lifecycle/SavedStateHandle;

    new-instance v0, Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;

    invoke-direct {v0, p1}, Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;)V

    const-string p1, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {v0, p1, p0}, Landroidx/lifecycle/ViewModel;->addCloseable(Ljava/lang/String;Ljava/lang/AutoCloseable;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "AbstractSavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 1

    const-string p1, "extras"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroidx/lifecycle/viewmodel/internal/ViewModelProviders$ViewModelKey;->INSTANCE:Landroidx/lifecycle/viewmodel/internal/ViewModelProviders$ViewModelKey;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/viewmodel/CreationExtras;->get(Landroidx/lifecycle/viewmodel/CreationExtras$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry$NavResultSavedStateFactory;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/navigation/NavBackStackEntry$NavResultSavedStateFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry$NavResultSavedStateFactory;->defaultArgs:Landroid/os/Bundle;

    invoke-static {v0, p2, p1, p0}, Landroidx/lifecycle/LegacySavedStateHandleController;->create(Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;

    move-result-object p0

    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController;->handle:Landroidx/lifecycle/SavedStateHandle;

    new-instance p2, Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;

    invoke-direct {p2, p1}, Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;)V

    const-string p1, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p2, p1, p0}, Landroidx/lifecycle/ViewModel;->addCloseable(Ljava/lang/String;Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroidx/lifecycle/SavedStateHandleSupport;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object p0

    new-instance p2, Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;

    invoke-direct {p2, p0}, Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;)V

    :goto_0
    return-object p2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onRequery(Landroidx/lifecycle/ViewModel;)V
    .locals 1

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry$NavResultSavedStateFactory;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry$NavResultSavedStateFactory;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, v0, p0}, Landroidx/lifecycle/LegacySavedStateHandleController;->attachHandleIfNeeded(Landroidx/lifecycle/ViewModel;Landroidx/savedstate/SavedStateRegistry;Landroidx/lifecycle/Lifecycle;)V

    :cond_0
    return-void
.end method
