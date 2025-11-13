.class final Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $$this$repeatWhenAttached:Landroidx/lifecycle/LifecycleOwner;

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

.field final synthetic $viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

.field label:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/user/UserSwitcherPopupMenu;",
            ">;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;->$$this$repeatWhenAttached:Landroidx/lifecycle/LifecycleOwner;

    iput-object p2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    iput-object p3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;->$onFinish:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance p1, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;

    iget-object v1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;->$$this$repeatWhenAttached:Landroidx/lifecycle/LifecycleOwner;

    iget-object v2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    iget-object v3, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;->$onFinish:Lkotlin/jvm/functions/Function0;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;->$$this$repeatWhenAttached:Landroidx/lifecycle/LifecycleOwner;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v3, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1$1;

    iget-object v4, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    iget-object v5, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;->$popupMenu:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;->$onFinish:Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1$1;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/android/systemui/user/ui/binder/UserSwitcherViewBinder$bind$4$1;->label:I

    invoke-static {p1, v1, v3, p0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
