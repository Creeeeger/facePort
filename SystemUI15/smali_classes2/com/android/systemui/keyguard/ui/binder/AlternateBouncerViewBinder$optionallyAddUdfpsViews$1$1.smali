.class final Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;
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
.field final synthetic $udfpsA11yOverlayViewModel:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy;"
        }
    .end annotation
.end field

.field final synthetic $udfpsIconViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;

.field final synthetic $view:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;Landroidx/constraintlayout/widget/ConstraintLayout;Ldagger/Lazy;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;",
            "Landroidx/constraintlayout/widget/ConstraintLayout;",
            "Ldagger/Lazy;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;->$udfpsIconViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;->$view:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;->$udfpsA11yOverlayViewModel:Ldagger/Lazy;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;->$udfpsIconViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;->$view:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;->$udfpsA11yOverlayViewModel:Ldagger/Lazy;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;Landroidx/constraintlayout/widget/ConstraintLayout;Ldagger/Lazy;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;->$udfpsIconViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;

    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;->$view:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v5, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1;->$udfpsA11yOverlayViewModel:Ldagger/Lazy;

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    new-instance v6, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1$invokeSuspend$$inlined$launch$default$1;

    const/4 v2, 0x0

    const-string v1, "AlternateBouncerViewBinder#udfpsIconViewModel.iconLocation"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$optionallyAddUdfpsViews$1$1$invokeSuspend$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;Landroidx/constraintlayout/widget/ConstraintLayout;Ldagger/Lazy;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v6, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
