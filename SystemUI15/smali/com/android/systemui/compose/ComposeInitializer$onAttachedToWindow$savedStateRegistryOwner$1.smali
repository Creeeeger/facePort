.class public final Lcom/android/systemui/compose/ComposeInitializer$onAttachedToWindow$savedStateRegistryOwner$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/savedstate/SavedStateRegistryOwner;


# instance fields
.field public final synthetic $lifecycleOwner:Lcom/android/systemui/lifecycle/ViewLifecycleOwner;

.field public final savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method public constructor <init>(Lcom/android/systemui/lifecycle/ViewLifecycleOwner;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/compose/ComposeInitializer$onAttachedToWindow$savedStateRegistryOwner$1;->$lifecycleOwner:Lcom/android/systemui/lifecycle/ViewLifecycleOwner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Landroidx/savedstate/SavedStateRegistryController;->Companion:Landroidx/savedstate/SavedStateRegistryController$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/savedstate/SavedStateRegistryController$Companion;->create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/savedstate/SavedStateRegistryController;->performRestore(Landroid/os/Bundle;)V

    iget-object p1, p1, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    iput-object p1, p0, Lcom/android/systemui/compose/ComposeInitializer$onAttachedToWindow$savedStateRegistryOwner$1;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/compose/ComposeInitializer$onAttachedToWindow$savedStateRegistryOwner$1;->$lifecycleOwner:Lcom/android/systemui/lifecycle/ViewLifecycleOwner;

    iget-object p0, p0, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/compose/ComposeInitializer$onAttachedToWindow$savedStateRegistryOwner$1;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    return-object p0
.end method
