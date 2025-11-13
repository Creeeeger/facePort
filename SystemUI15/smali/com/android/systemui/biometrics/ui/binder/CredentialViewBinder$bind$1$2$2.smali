.class final Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;
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
.field final synthetic $cancelButton:Landroid/widget/Button;

.field final synthetic $errorTimer:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $errorView:Landroid/widget/TextView;

.field final synthetic $maxErrorDuration:J

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroid/widget/TextView;Landroid/widget/Button;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlinx/coroutines/Job;",
            ">;J",
            "Landroid/widget/TextView;",
            "Landroid/widget/Button;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->$errorTimer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-wide p3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->$maxErrorDuration:J

    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->$errorView:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->$cancelButton:Landroid/widget/Button;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    new-instance v8, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->$errorTimer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-wide v3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->$maxErrorDuration:J

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->$errorView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->$cancelButton:Landroid/widget/Button;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;JLandroid/widget/TextView;Landroid/widget/Button;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->label:I

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

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->L$0:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    iget-object v8, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iget-object p1, v8, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->errorMessage:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance v1, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2$1;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->$errorTimer:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-wide v6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->$maxErrorDuration:J

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/CoroutineScope;JLcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v3, p1, v1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance p1, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2$2;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->$errorView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->$cancelButton:Landroid/widget/Button;

    invoke-direct {p1, v1, v4}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2$2;-><init>(Landroid/widget/TextView;Landroid/widget/Button;)V

    iput v2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$2;->label:I

    invoke-virtual {v3, p1, p0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
