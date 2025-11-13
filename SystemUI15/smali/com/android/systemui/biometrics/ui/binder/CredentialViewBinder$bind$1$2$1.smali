.class final Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;
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
.field final synthetic $customizedViewContainer:Landroid/widget/LinearLayout;

.field final synthetic $descriptionView:Landroid/widget/TextView;

.field final synthetic $emergencyButtonView:Landroid/widget/Button;

.field final synthetic $iconView:Landroid/widget/ImageView;

.field final synthetic $legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

.field final synthetic $subtitleView:Landroid/widget/TextView;

.field final synthetic $titleView:Landroid/widget/TextView;

.field final synthetic $view:Landroid/view/ViewGroup;

.field final synthetic $viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Landroid/widget/ImageView;Landroid/widget/Button;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;",
            "Landroid/widget/TextView;",
            "Landroid/view/ViewGroup;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Landroid/widget/LinearLayout;",
            "Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;",
            "Landroid/widget/ImageView;",
            "Landroid/widget/Button;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$titleView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$view:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$subtitleView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$descriptionView:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$customizedViewContainer:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    iput-object p8, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$iconView:Landroid/widget/ImageView;

    iput-object p9, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$emergencyButtonView:Landroid/widget/Button;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    new-instance p1, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$titleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$view:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$subtitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$descriptionView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$customizedViewContainer:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    iget-object v8, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$iconView:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$emergencyButtonView:Landroid/widget/Button;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;-><init>(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Landroid/widget/ImageView;Landroid/widget/Button;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->label:I

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

    iget-object v12, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$viewModel:Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    iget-object p1, v12, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->header:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    new-instance v1, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$titleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$view:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$subtitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$descriptionView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$customizedViewContainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$legacyCallback:Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;

    iget-object v10, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$iconView:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->$emergencyButtonView:Landroid/widget/Button;

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1$1;-><init>(Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/android/systemui/biometrics/ui/binder/Spaghetti$Callback;Landroid/widget/ImageView;Landroid/widget/Button;Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;)V

    iput v2, p0, Lcom/android/systemui/biometrics/ui/binder/CredentialViewBinder$bind$1$2$1;->label:I

    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
