.class final Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;
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
.field final synthetic $host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

.field final synthetic $imeManager:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic $onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

.field final synthetic $passwordField:Landroid/widget/ImeAwareEditText;

.field final synthetic $view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/CredentialPasswordView;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Landroid/widget/ImeAwareEditText;Landroid/window/OnBackInvokedCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/CredentialPasswordView;",
            "Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;",
            "Landroid/view/inputmethod/InputMethodManager;",
            "Lcom/android/systemui/biometrics/ui/CredentialView$Host;",
            "Landroid/widget/ImeAwareEditText;",
            "Landroid/window/OnBackInvokedCallback;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$imeManager:Landroid/view/inputmethod/InputMethodManager;

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$passwordField:Landroid/widget/ImeAwareEditText;

    iput-object p6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    new-instance v8, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$imeManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$passwordField:Landroid/widget/ImeAwareEditText;

    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;-><init>(Lcom/android/systemui/biometrics/ui/CredentialPasswordView;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Landroid/widget/ImeAwareEditText;Landroid/window/OnBackInvokedCallback;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3$1;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$imeManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$passwordField:Landroid/widget/ImeAwareEditText;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/biometrics/ui/CredentialPasswordView;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Landroid/widget/ImeAwareEditText;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, v0, v0, v7, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3$2;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-direct {v3, v2, v4, v0}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3$2;-><init>(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, v0, v3, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3$3;

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;->$onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-direct {v0, v2, p0}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3$3;-><init>(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    check-cast p1, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
