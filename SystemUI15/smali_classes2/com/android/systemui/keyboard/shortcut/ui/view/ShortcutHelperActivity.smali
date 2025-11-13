.class public final Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;
.super Landroidx/activity/ComponentActivity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final viewModel:Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel;)V
    .locals 0

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->viewModel:Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel;

    return-void
.end method


# virtual methods
.method public final getBottomSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1

    const v0, 0x7f0a0b4c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget-object p0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    instance-of v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not associated with BottomSheetBehavior"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view is not a child of CoordinatorLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0024

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0713c6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->getBottomSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->maxWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->getBottomSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState$1(I)V

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->getBottomSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->skipCollapsed:Z

    const p1, 0x7f0a0b4d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpInsets$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpInsets$1;-><init>(Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    new-instance v2, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpPredictiveBack$onBackPressedCallback$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpPredictiveBack$onBackPressedCallback$1;-><init>(Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    invoke-virtual {p0}, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->getBottomSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpSheetDismissListener$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpSheetDismissListener$1;-><init>(Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;)V

    iget-object v4, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpDismissOnTouchOutside$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpDismissOnTouchOutside$1;-><init>(Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0b4b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/platform/ComposeView;

    new-instance v2, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpComposeView$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$setUpComposeView$1$1;-><init>(Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;)V

    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, 0x365fa293

    invoke-direct {v3, v4, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroidx/compose/ui/platform/ComposeView;->setContent(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$observeFinishRequired$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity$observeFinishRequired$1;-><init>(Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v3, v3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->viewModel:Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel;->interactor:Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor;

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor;->setSysUiStateFlagEnabled(Z)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/view/ShortcutHelperActivity;->viewModel:Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyboard/shortcut/ui/viewmodel/ShortcutHelperViewModel;->interactor:Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor;

    iget-object v0, p0, Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor;->repository:Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;

    iget-object v0, v0, Lcom/android/systemui/keyboard/shortcut/data/repository/ShortcutHelperRepository;->state:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v1, Lcom/android/systemui/keyboard/shortcut/shared/model/ShortcutHelperState$Inactive;->INSTANCE:Lcom/android/systemui/keyboard/shortcut/shared/model/ShortcutHelperState$Inactive;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyboard/shortcut/domain/interactor/ShortcutHelperInteractor;->setSysUiStateFlagEnabled(Z)V

    :cond_0
    return-void
.end method
