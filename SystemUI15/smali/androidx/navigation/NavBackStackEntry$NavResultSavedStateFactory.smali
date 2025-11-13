.class public final Landroidx/navigation/NavBackStackEntry$NavResultSavedStateFactory;
.super Landroidx/lifecycle/AbstractSavedStateViewModelFactory;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroidx/savedstate/SavedStateRegistryOwner;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/AbstractSavedStateViewModelFactory;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/lifecycle/SavedStateHandle;)Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;
    .locals 0

    new-instance p0, Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;

    invoke-direct {p0, p1}, Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;)V

    return-object p0
.end method
