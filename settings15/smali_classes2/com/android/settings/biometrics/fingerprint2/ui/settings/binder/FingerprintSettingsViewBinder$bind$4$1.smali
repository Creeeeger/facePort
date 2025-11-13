.class final Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel;"
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
.field final synthetic $view:Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;

.field final synthetic $viewModel:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->$view:Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->$viewModel:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->$view:Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->$viewModel:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x0

    const-string v4, "FingerprintSettingsViewBinder"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel;

    if-nez p1, :cond_3

    return-object v2

    :cond_3
    instance-of v1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$RenameDialog;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->$view:Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;

    move-object v5, p1

    check-cast v5, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$RenameDialog;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->L$0:Ljava/lang/Object;

    iput v6, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->label:I

    check-cast v1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    iget-object v5, v5, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$RenameDialog;->fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    invoke-virtual {v1, v5, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;->askUserToRenameDialog(Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Lkotlin/Pair;

    if-eqz p1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "renaming fingerprint "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->$viewModel:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->renameFingerprint(Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Ljava/lang/String;)V

    :cond_5
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->$viewModel:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->_isShowingDialog:Lkotlinx/coroutines/flow/StateFlowImpl;

    :cond_6
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel;

    invoke-virtual {v1, p0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_7
    instance-of v1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$DeleteDialog;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->$view:Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;

    move-object v6, p1

    check-cast v6, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$DeleteDialog;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->label:I

    check-cast v1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    iget-object v5, v6, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$DeleteDialog;->fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    invoke-virtual {v1, v5, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;->askUserToDeleteDialog(Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_8

    return-object v0

    :cond_8
    move-object v0, p1

    move-object p1, v1

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "deleting fingerprint "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->$viewModel:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    check-cast v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$DeleteDialog;

    iget-object v0, v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$DeleteDialog;->fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    invoke-virtual {p1, v0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->deleteFingerprint(Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;)V

    :cond_9
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$4$1;->$viewModel:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->_isShowingDialog:Lkotlinx/coroutines/flow/StateFlowImpl;

    :cond_a
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel;

    invoke-virtual {p0, p1, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_b
    :goto_2
    return-object v2
.end method
