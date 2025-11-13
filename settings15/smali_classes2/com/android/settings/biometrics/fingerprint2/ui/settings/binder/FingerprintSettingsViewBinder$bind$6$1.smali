.class public final Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$6$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $settingsShowingJob:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $view:Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$6$1;->$settingsShowingJob:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$6$1;->$view:Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/NextStepViewModel;

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$6$1;->$settingsShowingJob:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "next step = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FingerprintSettingsViewBinder"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p2, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;

    const-string v2, "navigationViewModel"

    const-string v3, "hw_auth_token"

    const-string v4, "android.intent.extra.USER_ID"

    const-string v5, "com.android.settings"

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$bind$6$1;->$view:Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;

    iget p2, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->userId:I

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;->navigationViewModel:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->setStepToLaunched()V

    const-string v0, "FingerprintSettingsV2Fragment"

    const-string v1, "launchFullFingerprintEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroductionInternal;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from_settings_summary"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "page_transition_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->gateKeeperPasswordHandle:Ljava/lang/Long;

    if-eqz p2, :cond_1

    const-string p1, "gk_pw_handle"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->challengeToken:[B

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p2, "challenge"

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollFirstFingerprint;->challenge:Ljava/lang/Long;

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;->launchFirstEnrollmentListener:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    instance-of p2, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollAdditionalFingerprint;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollAdditionalFingerprint;

    iget p2, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollAdditionalFingerprint;->userId:I

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;->navigationViewModel:Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FingerprintSettingsNavigationViewModel;->setStepToLaunched()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v2, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/EnrollAdditionalFingerprint;->challengeToken:[B

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;->launchAdditionalFingerprintListener:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    instance-of p2, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/LaunchConfirmDeviceCredential;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/LaunchConfirmDeviceCredential;

    iget p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/LaunchConfirmDeviceCredential;->userId:I

    check-cast p0, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;->launchConfirmOrChooseLock(I)V

    goto :goto_1

    :cond_6
    instance-of p2, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FinishSettings;

    if-eqz p2, :cond_7

    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FinishSettings;

    iget-object p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FinishSettings;->reason:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Finishing due to "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;->finish()V

    goto :goto_1

    :cond_7
    instance-of p2, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FinishSettingsWithResult;

    if-eqz p2, :cond_8

    check-cast p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FinishSettingsWithResult;

    iget p2, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FinishSettingsWithResult;->result:I

    const-string v1, "Finishing with result "

    const-string v2, " due to "

    invoke-static {p2, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FinishSettingsWithResult;->reason:Ljava/lang/String;

    invoke-static {p2, v1, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, p0

    check-cast p2, Lcom/android/settings/biometrics/fingerprint2/ui/settings/fragment/FingerprintSettingsV2Fragment;

    iget p1, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/FinishSettingsWithResult;->result:I

    invoke-virtual {p2, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    invoke-interface {p0}, Lcom/android/settings/biometrics/fingerprint2/ui/settings/binder/FingerprintSettingsViewBinder$FingerprintView;->finish()V

    goto :goto_1

    :cond_8
    instance-of p0, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/ShowSettings;

    if-eqz p0, :cond_9

    const-string p0, "Showing settings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    instance-of p0, p1, Lcom/android/settings/biometrics/fingerprint2/ui/settings/viewmodel/LaunchedActivity;

    if-eqz p0, :cond_a

    const-string p0, "Launched activity, awaiting result"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
