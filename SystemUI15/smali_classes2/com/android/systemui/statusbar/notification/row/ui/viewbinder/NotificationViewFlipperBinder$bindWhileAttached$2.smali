.class final Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bindWhileAttached$2;
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
.field final synthetic $viewFlipper:Landroid/widget/ViewFlipper;

.field final synthetic $viewModel:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/NotificationViewFlipperViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/widget/ViewFlipper;Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/NotificationViewFlipperViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ViewFlipper;",
            "Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/NotificationViewFlipperViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bindWhileAttached$2;->$viewFlipper:Landroid/widget/ViewFlipper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bindWhileAttached$2;->$viewModel:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/NotificationViewFlipperViewModel;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    check-cast p2, Landroid/view/View;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bindWhileAttached$2;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bindWhileAttached$2;->$viewFlipper:Landroid/widget/ViewFlipper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bindWhileAttached$2;->$viewModel:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/NotificationViewFlipperViewModel;

    invoke-direct {p2, v0, p0, p3}, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bindWhileAttached$2;-><init>(Landroid/widget/ViewFlipper;Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/NotificationViewFlipperViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p2, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bindWhileAttached$2;->L$0:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bindWhileAttached$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bindWhileAttached$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bindWhileAttached$2;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bindWhileAttached$2$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bindWhileAttached$2;->$viewFlipper:Landroid/widget/ViewFlipper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bindWhileAttached$2;->$viewModel:Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/NotificationViewFlipperViewModel;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/statusbar/notification/row/ui/viewbinder/NotificationViewFlipperBinder$bindWhileAttached$2$1;-><init>(Landroid/widget/ViewFlipper;Lcom/android/systemui/statusbar/notification/row/ui/viewmodel/NotificationViewFlipperViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
