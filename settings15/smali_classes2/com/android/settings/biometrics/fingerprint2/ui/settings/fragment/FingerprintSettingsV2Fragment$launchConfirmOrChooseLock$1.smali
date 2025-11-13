.class final Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;
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
.field final synthetic $userId:I

.field label:I

.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;->$userId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;->$userId:I

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;->navigationViewModel:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->setStepToLaunched()V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    const v2, 0x7f142a19

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;->$userId:I

    iput v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    iput-boolean v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForegroundOnly:Z

    iput-boolean v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.settings"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "hide_insecure_options"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "request_gk_pw_handle"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;->$userId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment$launchConfirmOrChooseLock$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;->confirmDeviceResultListener:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    const-string p0, "navigationViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
