.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public _errorDialogViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

.field public _foldedViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;

.field public _progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

.field public _rotationViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

.field public _viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFindSensorViewModel;

.field public animationRotation:I

.field public final canceledSignalObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

.field public enrollingCancelSignal:Ljava/lang/Object;

.field public final errorMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

.field public findSfpsView:Lcom/google/android/setupdesign/GlifLayout;

.field public final onSkipClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$onSkipClickListener$1;

.field public final progressObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

.field public final rotationObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$onSkipClickListener$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$onSkipClickListener$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->onSkipClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$onSkipClickListener$1;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->animationRotation:I

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->rotationObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->progressObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->errorMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->canceledSignalObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

    return-void
.end method


# virtual methods
.method public final cancelEnrollment$4(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->isEnrolling()Z

    move-result v0

    const-string v1, "FingerprintEnrollFindSfpsFragment"

    if-nez v0, :cond_0

    const-string p0, "cancelEnrollment(), failed because isEnrolling is false"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mErrorMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->errorMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->progressObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCanceledSignalLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->canceledSignalObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->enrollingCancelSignal:Ljava/lang/Object;

    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->cancelEnrollment()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "cancelEnrollment(), failed to cancel enrollment"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final getIllustrationLottie$1()Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->findSfpsView:Lcom/google/android/setupdesign/GlifLayout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v0, 0x7f0a07c3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFindSensorViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFindSensorViewModel;

    iput-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_viewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollFindSensorViewModel;

    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    iput-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

    iput-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_rotationViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;

    iput-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_foldedViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;

    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_errorDialogViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0b30

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.google.android.setupdesign.GlifLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->findSfpsView:Lcom/google/android/setupdesign/GlifLayout;

    return-object p1
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_rotationViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->rotationObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_rotationViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    const-string v1, "getLiveData(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->playLottieAnimation(I)V

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->rotationObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final onStart()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_errorDialogViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;->_isDialogShown:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->isEnrolling()Z

    move-result v1

    const-string v2, "onStart(), isEnrolling:"

    const-string v3, ", isErrorDialog:"

    const-string v4, "FingerprintEnrollFindSfpsFragment"

    invoke-static {v2, v1, v3, v0, v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->startEnrollment$5()V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->isEnrolling()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    const-string v2, "onStop(), enrolling:"

    const-string v3, " isConfigChange:"

    const-string v4, "FingerprintEnrollFindSfpsFragment"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->cancelEnrollment$4(Z)V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "requireActivity(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->findSfpsView:Lcom/google/android/setupdesign/GlifLayout;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->onSkipClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$onSkipClickListener$1;

    const-string v1, "onSkipClickListener"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p2, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    const v2, 0x7f1429f2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/setupcompat/template/FooterButton;

    const v4, 0x7f15045e

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-direct {v3, v2, v6, v5, v4}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    iget-object v1, v1, Lcom/google/android/setupcompat/template/FooterBarMixin;->secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    iput-object v0, v1, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f142a50

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "getText(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    :cond_0
    invoke-virtual {p2, v2}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f142a4f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/setupdesign/GlifLayout;->getDescriptionText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2, p1}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance p2, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$onViewCreated$1;

    invoke-direct {p2, p0, v6}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$onViewCreated$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v6, v6, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final playLottieAnimation(I)V
    .locals 5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_foldedViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceFoldedViewModel;->mLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    if-eqz v0, :cond_0

    const v0, 0x7f130023

    goto :goto_0

    :cond_0
    const v0, 0x7f130025

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const v0, 0x7f130021

    goto :goto_0

    :cond_2
    const v0, 0x7f130026

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const v0, 0x7f130020

    goto :goto_0

    :cond_4
    const v0, 0x7f130024

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    const v0, 0x7f130022

    goto :goto_0

    :cond_6
    const v0, 0x7f130027

    :goto_0
    iget v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->animationRotation:I

    const-string v2, "play lottie animation "

    const-string v3, ", previous rotation:"

    const-string v4, ", new rotation:"

    invoke-static {v2, v3, v0, v1, v4}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FingerprintEnrollFindSfpsFragment"

    invoke-static {v1, p1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iput p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->animationRotation:I

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->getIllustrationLottie$1()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->getIllustrationLottie$1()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->getIllustrationLottie$1()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->getIllustrationLottie$1()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    return-void
.end method

.method public final startEnrollment$5()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->startEnrollment(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->enrollingCancelSignal:Ljava/lang/Object;

    const-string v1, "FingerprintEnrollFindSfpsFragment"

    if-nez v0, :cond_0

    const-string v0, "startEnrollment(), failed to start enrollment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "startEnrollment(), success"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->progressObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mErrorMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment;->errorMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollFindSfpsFragment$progressObserver$1;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
