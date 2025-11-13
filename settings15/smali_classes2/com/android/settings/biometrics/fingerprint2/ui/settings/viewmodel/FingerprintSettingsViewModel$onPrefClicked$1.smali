.class final Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;
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
.field final synthetic $fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

.field label:I

.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;->$fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;->$fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->_isShowingDialog:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->navigationViewModel:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->nextStep:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/ShowSettings;->INSTANCE:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/ShowSettings;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->_isShowingDialog:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring onPrefClicked due to dialog showing "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintSettingsViewModel"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel;->_isShowingDialog:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$RenameDialog;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsViewModel$onPrefClicked$1;->$fingerprintViewModel:Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/PreferenceViewModel$RenameDialog;-><init>(Lcom/android/settings/biometrics/fingerprint2/lib/model/FingerprintData;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
