.class final Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;
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
.field final synthetic $host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

.field final synthetic $imeManager:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic $onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

.field final synthetic $passwordField:Landroid/widget/ImeAwareEditText;

.field final synthetic $requestFocusForInput:Z

.field final synthetic $view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/ImeAwareEditText;ZLandroid/window/OnBackInvokedCallback;Lcom/android/systemui/biometrics/ui/CredentialPasswordView;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;",
            "Landroid/widget/ImeAwareEditText;",
            "Z",
            "Landroid/window/OnBackInvokedCallback;",
            "Lcom/android/systemui/biometrics/ui/CredentialPasswordView;",
            "Landroid/view/inputmethod/InputMethodManager;",
            "Lcom/android/systemui/biometrics/ui/CredentialView$Host;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    iput-boolean p3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$requestFocusForInput:Z

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    iput-object p6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$imeManager:Landroid/view/inputmethod/InputMethodManager;

    iput-object p7, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    check-cast p2, Landroid/view/View;

    move-object v8, p3

    check-cast v8, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    iget-boolean v3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$requestFocusForInput:Z

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$imeManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/ImeAwareEditText;ZLandroid/window/OnBackInvokedCallback;Lcom/android/systemui/biometrics/ui/CredentialPasswordView;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p2, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->L$0:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialHeaderViewModel;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->L$0:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iget-object v1, v1, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->header:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->label:I

    invoke-static {v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v12, v1

    move-object v1, p1

    move-object p1, v12

    :goto_0
    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialHeaderViewModel;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    move-object v5, p1

    check-cast v5, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;

    iget-object v5, v5, Lcom/android/systemui/biometrics/ui/viewmodel/BiometricPromptHeaderViewModelImpl;->user:Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;

    iget v5, v5, Lcom/android/systemui/biometrics/shared/model/BiometricUserInfo;->userIdForPasswordEntry:I

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImeAwareEditText;->setTextOperationUser(Landroid/os/UserHandle;)V

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iget-object v4, v4, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->inputFlags:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel$special$$inlined$map$1;

    iput-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->label:I

    invoke-static {v4, p0}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_5

    return-object v0

    :cond_5
    move-object v12, v1

    move-object v1, p1

    move-object p1, v3

    move-object v3, v12

    :goto_1
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/ImeAwareEditText;->setInputType(I)V

    :cond_6
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$requestFocusForInput:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->requestFocus()Z

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    new-instance v4, Lcom/android/systemui/biometrics/ui/binder/OnImeSubmitListener;

    new-instance v5, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$2;

    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    invoke-direct {v5, v3, v6, v1}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$2;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialHeaderViewModel;)V

    invoke-direct {v4, v5}, Lcom/android/systemui/biometrics/ui/binder/OnImeSubmitListener;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v4}, Landroid/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    new-instance v1, Lcom/android/systemui/biometrics/ui/binder/OnBackButtonListener;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    invoke-direct {v1, v4}, Lcom/android/systemui/biometrics/ui/binder/OnBackButtonListener;-><init>(Landroid/window/OnBackInvokedCallback;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImeAwareEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    const v1, 0x7f0a08e3

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v1, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$view:Lcom/android/systemui/biometrics/ui/CredentialPasswordView;

    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iget-object v7, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$imeManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$host:Lcom/android/systemui/biometrics/ui/CredentialView$Host;

    iget-object v9, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$passwordField:Landroid/widget/ImeAwareEditText;

    iget-object v10, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->$onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    const/4 v11, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1$3;-><init>(Lcom/android/systemui/biometrics/ui/CredentialPasswordView;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Landroid/widget/ImeAwareEditText;Landroid/window/OnBackInvokedCallback;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialPasswordViewBinder$bind$1;->label:I

    invoke-static {v3, p1, v1, p0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    return-object v0

    :cond_8
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
