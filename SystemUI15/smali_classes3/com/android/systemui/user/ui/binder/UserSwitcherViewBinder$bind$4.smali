.class final Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic $addButton:Landroid/view/View;

.field final synthetic $flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

.field final synthetic $gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

.field final synthetic $layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic $onFinish:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/user/UserSwitcherPopupMenu;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

.field final synthetic $view:Landroid/view/ViewGroup;

.field final synthetic $viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;Landroidx/constraintlayout/helper/widget/Flow;Lcom/android/systemui/user/UserSwitcherRootView;Landroid/view/LayoutInflater;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/user/UserSwitcherPopupMenu;",
            ">;",
            "Lkotlin/jvm/functions/Function0;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;",
            "Landroidx/constraintlayout/helper/widget/Flow;",
            "Lcom/android/systemui/user/UserSwitcherRootView;",
            "Landroid/view/LayoutInflater;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    iput-object p2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$onFinish:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$addButton:Landroid/view/View;

    iput-object p5, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$view:Landroid/view/ViewGroup;

    iput-object p6, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    iput-object p7, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

    iput-object p8, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

    iput-object p9, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$layoutInflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    check-cast p2, Landroid/view/View;

    move-object v10, p3

    check-cast v10, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;

    iget-object v1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    iget-object v2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$onFinish:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$addButton:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$view:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    iget-object v7, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

    iget-object v8, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

    iget-object v9, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$layoutInflater:Landroid/view/LayoutInflater;

    move-object v0, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;Landroidx/constraintlayout/helper/widget/Flow;Lcom/android/systemui/user/UserSwitcherRootView;Landroid/view/LayoutInflater;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p2, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->L$0:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->label:I

    if-nez v1, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;

    iget-object v4, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    iget-object v5, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$onFinish:Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    move-object v2, v9

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-static {v8, v13, v13, v9, v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-static {v2}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v15

    new-instance v12, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2;

    iget-object v4, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    iget-object v5, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$addButton:Landroid/view/View;

    iget-object v6, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$view:Landroid/view/ViewGroup;

    iget-object v8, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$popupMenuAdapter:Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;

    iget-object v9, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$flowWidget:Landroidx/constraintlayout/helper/widget/Flow;

    iget-object v10, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$gridContainerView:Lcom/android/systemui/user/UserSwitcherRootView;

    iget-object v11, v0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4;->$layoutInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    move-object v2, v12

    move-object v3, v1

    move-object v1, v12

    move-object v12, v0

    invoke-direct/range {v2 .. v12}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$2;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Landroid/view/View;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/ViewGroup;Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$MenuAdapter;Landroidx/constraintlayout/helper/widget/Flow;Lcom/android/systemui/user/UserSwitcherRootView;Landroid/view/LayoutInflater;Lkotlin/coroutines/Continuation;)V

    invoke-static {v15, v13, v13, v1, v14}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
