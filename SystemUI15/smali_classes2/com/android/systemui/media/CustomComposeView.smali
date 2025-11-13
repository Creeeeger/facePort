.class public abstract Lcom/android/systemui/media/CustomComposeView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/savedstate/SavedStateRegistryOwner;
.implements Landroidx/lifecycle/ViewModelStoreOwner;
.implements Landroidx/activity/OnBackPressedDispatcherOwner;
.implements Landroidx/lifecycle/HasDefaultViewModelProviderFactory;


# instance fields
.field public final _viewModelStore$delegate:Lkotlin/Lazy;

.field public final contentView$delegate:Lkotlin/Lazy;

.field public final keyguardManager$delegate:Lkotlin/Lazy;

.field public final lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field public final onBackPressedDispatcher$delegate:Lkotlin/Lazy;

.field public final savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

.field public final viewModelProviderFactory:Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/CustomComposeView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/CustomComposeView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelFactory;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lcom/android/systemui/media/CustomComposeView;->viewModelProviderFactory:Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelFactory;

    new-instance p3, Lcom/android/systemui/media/CustomComposeView$keyguardManager$2;

    invoke-direct {p3, p1}, Lcom/android/systemui/media/CustomComposeView$keyguardManager$2;-><init>(Landroid/content/Context;)V

    invoke-static {p3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/media/CustomComposeView;->keyguardManager$delegate:Lkotlin/Lazy;

    new-instance p3, Lcom/android/systemui/media/CustomComposeView$contentView$2;

    invoke-direct {p3, p1, p2, p0}, Lcom/android/systemui/media/CustomComposeView$contentView$2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/media/CustomComposeView;)V

    invoke-static {p3}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/CustomComposeView;->contentView$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/media/CustomComposeView$lifecycleObserver$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/CustomComposeView$lifecycleObserver$1;-><init>(Lcom/android/systemui/media/CustomComposeView;)V

    new-instance p2, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {p2, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p2, p0, Lcom/android/systemui/media/CustomComposeView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object p3, Landroidx/savedstate/SavedStateRegistryController;->Companion:Landroidx/savedstate/SavedStateRegistryController$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/savedstate/SavedStateRegistryController$Companion;->create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/media/CustomComposeView;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    sget-object v0, Lcom/android/systemui/media/CustomComposeView$_viewModelStore$2;->INSTANCE:Lcom/android/systemui/media/CustomComposeView$_viewModelStore$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/CustomComposeView;->_viewModelStore$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/media/CustomComposeView$onBackPressedDispatcher$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/CustomComposeView$onBackPressedDispatcher$2;-><init>(Lcom/android/systemui/media/CustomComposeView;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/CustomComposeView;->onBackPressedDispatcher$delegate:Lkotlin/Lazy;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :try_start_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroidx/savedstate/SavedStateRegistryController;->performRestore(Landroid/os/Bundle;)V

    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public static final synthetic access$generateDefaultLayoutParams(Lcom/android/systemui/media/CustomComposeView;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract ContentView(ILandroidx/compose/runtime/Composer;)V
.end method

.method public final getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/CustomComposeView;->viewModelProviderFactory:Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelFactory;

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/CustomComposeView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/CustomComposeView;->onBackPressedDispatcher$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/OnBackPressedDispatcher;

    return-object p0
.end method

.method public final getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/CustomComposeView;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    iget-object p0, p0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    return-object p0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/CustomComposeView;->_viewModelStore$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ViewModelStore;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    const-string v0, "CustomComposeView"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/android/systemui/media/CustomComposeView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const-string v0, "CustomComposeView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/media/CustomComposeView;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    iget-object p0, p0, Lcom/android/systemui/media/CustomComposeView;->viewModelProviderFactory:Lcom/android/systemui/media/mediaoutput/viewmodel/ViewModelFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
