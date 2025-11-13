.class public final Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/savedstate/SavedStateRegistryOwner;
.implements Landroidx/activity/OnBackPressedDispatcherOwner;


# instance fields
.field public _lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field public final onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field public final savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZLcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/statusbar/phone/DialogDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;",
            "Lcom/android/systemui/model/SysUiState;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/animation/DialogTransitionAnimator;",
            "Lcom/android/systemui/statusbar/phone/DialogDelegate;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;IZLcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/statusbar/phone/DialogDelegate;)V

    sget-object p1, Landroidx/savedstate/SavedStateRegistryController;->Companion:Landroidx/savedstate/SavedStateRegistryController$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/savedstate/SavedStateRegistryController$Companion;->create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    new-instance p1, Landroidx/activity/OnBackPressedDispatcher;

    new-instance p2, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog$onBackPressedDispatcher$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog$onBackPressedDispatcher$1;-><init>(Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;)V

    invoke-direct {p1, p2}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    return-void
.end method

.method public static final synthetic access$onBackPressed$s1925928011(Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;)V
    .locals 0

    invoke-super {p0}, Landroid/app/AlertDialog;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public final addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->initializeViewTreeOwners()V

    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->getLifecycleRegistry$1()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object p0

    return-object p0
.end method

.method public final getLifecycleRegistry$1()Landroidx/lifecycle/LifecycleRegistry;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->_lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->_lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    :cond_0
    return-object v0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    return-object p0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    return-object p0
.end method

.method public final initializeViewTreeOwners()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/activity/ViewTreeOnBackPressedDispatcherOwner;->set(Landroid/view/View;Landroidx/activity/OnBackPressedDispatcherOwner;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->setOnBackInvokedDispatcher(Landroid/window/OnBackInvokedDispatcher;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0, p1}, Landroidx/savedstate/SavedStateRegistryController;->performRestore(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->getLifecycleRegistry$1()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object p0

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {p0, v0}, Landroidx/savedstate/SavedStateRegistryController;->performSave(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->initializeViewTreeOwners()V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->initializeViewTreeOwners()V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->initializeViewTreeOwners()V

    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final start()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->getLifecycleRegistry$1()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object p0

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final stop()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->getLifecycleRegistry$1()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ComponentSystemUIDialog;->_lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-void
.end method
