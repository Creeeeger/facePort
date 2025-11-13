.class final Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1;
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
.field final synthetic $bgView:Landroid/widget/ImageView;

.field final synthetic $viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;",
            "Landroid/widget/ImageView;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;

    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1;->$bgView:Landroid/widget/ImageView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1;->$bgView:Landroid/widget/ImageView;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1;-><init>(Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1;->$bgView:Landroid/widget/ImageView;

    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    new-instance v3, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1$invokeSuspend$$inlined$launch$default$1;

    const-string v4, "AlternateBouncerUdfpsViewBinder#viewModel.bgColor"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1$invokeSuspend$$inlined$launch$default$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;Landroid/widget/ImageView;)V

    const/4 v0, 0x2

    invoke-static {p1, v2, v5, v3, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1;->$viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1;->$bgView:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1$invokeSuspend$$inlined$launch$default$2;

    const-string v4, "AlternateBouncerUdfpsViewBinder#viewModel.bgAlpha"

    invoke-direct {v3, v4, v5, v1, p0}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerUdfpsViewBinder$bind$3$1$invokeSuspend$$inlined$launch$default$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerUdfpsIconViewModel;Landroid/widget/ImageView;)V

    invoke-static {p1, v2, v5, v3, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
