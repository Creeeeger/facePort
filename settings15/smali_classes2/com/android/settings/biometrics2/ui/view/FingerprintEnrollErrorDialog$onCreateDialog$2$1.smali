.class final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;
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
.field final synthetic $dialog:Landroid/content/DialogInterface;

.field final synthetic $okButtonSetResultAction:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

.field label:I

.field final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog;Landroid/content/DialogInterface;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;->$okButtonSetResultAction:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

    iput-object p2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog;

    iput-object p3, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;->$dialog:Landroid/content/DialogInterface;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;->$okButtonSetResultAction:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;->$dialog:Landroid/content/DialogInterface;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;-><init>(Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog;Landroid/content/DialogInterface;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;->$okButtonSetResultAction:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ok flow as "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FingerprintEnrollErrorDialog"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog;

    invoke-virtual {p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog;->getViewModel()Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;->$okButtonSetResultAction:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintErrorDialogSetResultAction;

    iput v3, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;->label:I

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;->_isDialogShown:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v5, v3, v4}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;->_setResultFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {p1, v1, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_0
    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollErrorDialog$onCreateDialog$2$1;->$dialog:Landroid/content/DialogInterface;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_4
    return-object v2
.end method
