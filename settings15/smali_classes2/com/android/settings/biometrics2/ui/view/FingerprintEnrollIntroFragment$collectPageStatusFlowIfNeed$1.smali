.class final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

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
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput v3, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;->label:I

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroViewModel;->pageStatusFlow:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollIntroStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "collectPageStatusFlowIfNeed status:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FingerprintEnrollIntroFragment"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p1, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollIntroStatus;->mHasScrollToBottom:Z

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;->FINGERPRINT_ENROLLABLE_ERROR_REACH_MAX:Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;

    iget-object v3, p1, Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollIntroStatus;->enrollableStatus:Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollable;

    if-ne v3, v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->introView:Lcom/google/android/setupdesign/GlifLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-class v1, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;

    check-cast p1, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, v1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->primaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->onNextClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$onNextClickListener$1;

    const v6, 0x7f1429c8

    invoke-virtual {p1, v3, v4, v6, v5}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScrollWithButton(Landroid/content/Context;Lcom/google/android/setupcompat/template/FooterButton;ILandroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1$1$1;

    invoke-direct {v3, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1$1$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;)V

    iput-object v3, p1, Lcom/google/android/setupdesign/template/RequireScrollMixin;->listener:Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v3, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1$2;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1$2;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;->label:I

    invoke-static {p1, v1, v3, p0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment$collectPageStatusFlowIfNeed$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;

    invoke-static {p0, p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;->access$updateFooterButtons(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollIntroFragment;Lcom/android/settings/biometrics2/ui/model/FingerprintEnrollIntroStatus;)V

    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
