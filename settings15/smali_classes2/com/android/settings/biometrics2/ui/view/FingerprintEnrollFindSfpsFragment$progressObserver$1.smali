.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/lit8 v0, p1, 0x2

    rem-int/lit8 v0, v0, 0x4

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;

    iget v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->animationRotation:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->playLottieAnimation(I)V

    :cond_0
    return-void

    :pswitch_0
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->enrollingCancelSignal:Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEnrollmentCanceled enrolling:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", canceled:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintEnrollFindSfpsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->enrollingCancelSignal:Ljava/lang/Object;

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCanceledSignalLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->canceledSignalObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->clearProgressLiveData()V

    if-eqz p1, :cond_2

    iget p1, p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->steps:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFindSensorViewModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFindSensorViewModel;->onStartButtonClick$1()V

    :cond_2
    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorMessageObserver("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintEnrollFindSfpsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->cancelEnrollment()Z

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$onEnrollmentError$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$onEnrollmentError$1;-><init>(Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_3
    return-void

    :pswitch_2
    check-cast p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    if-eqz p1, :cond_5

    iget p1, p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->steps:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->cancelEnrollment$4(Z)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
