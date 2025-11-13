.class final Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchAdditionalFingerprintListener$1$1;
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
.field final synthetic $result:Landroidx/activity/result/ActivityResult;

.field label:I

.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;


# direct methods
.method public constructor <init>(Landroidx/activity/result/ActivityResult;Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchAdditionalFingerprintListener$1$1;->$result:Landroidx/activity/result/ActivityResult;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchAdditionalFingerprintListener$1$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchAdditionalFingerprintListener$1$1;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchAdditionalFingerprintListener$1$1;->$result:Landroidx/activity/result/ActivityResult;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchAdditionalFingerprintListener$1$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchAdditionalFingerprintListener$1$1;-><init>(Landroidx/activity/result/ActivityResult;Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchAdditionalFingerprintListener$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchAdditionalFingerprintListener$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchAdditionalFingerprintListener$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchAdditionalFingerprintListener$1$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchAdditionalFingerprintListener$1$1;->$result:Landroidx/activity/result/ActivityResult;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->mResultCode:I

    const-string v0, "onEnrollAdditionalFingerprint("

    const-string v1, ")"

    const-string v2, "FingerprintSettingsV2Fragment"

    invoke-static {p1, v0, v1, v2}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string v2, "navigationViewModel"

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchAdditionalFingerprintListener$1$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;->navigationViewModel:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;

    if-eqz p0, :cond_0

    const-string p1, "Failed to enroll additional fingerprint"

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->launchFinishSettings(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchAdditionalFingerprintListener$1$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;->navigationViewModel:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->showSettingsHelper()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
