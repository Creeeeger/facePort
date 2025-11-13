.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;",
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
.field public _enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

.field public _errorDialogViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

.field public _progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

.field public _rotationViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

.field public final acquireObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

.field public final canceledSignalObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

.field public final delayedFinishRunnable:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$delayedFinishRunnable$1;

.field public enrollingCancelSignal:Ljava/lang/Object;

.field public enrollingView:Landroid/widget/RelativeLayout;

.field public final errorMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

.field public haveShownCenterLottie:Z

.field public haveShownGuideLottie:Z

.field public haveShownLeftEdgeLottie:Z

.field public haveShownRightEdgeLottie:Z

.field public haveShownTipLottie:Z

.field public final helpMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

.field public illustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

.field public final onBackPressedCallback:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onBackPressedCallback$1;

.field public final onSkipClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onSkipClickListener$1;

.field public final pointerDownObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

.field public final pointerUpObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

.field public final progressObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

.field public rotation:I

.field public final rotationObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->rotation:I

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onSkipClickListener$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onSkipClickListener$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->onSkipClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onSkipClickListener$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->progressObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->helpMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->errorMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->canceledSignalObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->acquireObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->pointerDownObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->pointerUpObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->rotationObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onBackPressedCallback$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onBackPressedCallback$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->onBackPressedCallback:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onBackPressedCallback$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$delayedFinishRunnable$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$delayedFinishRunnable$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->delayedFinishRunnable:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$delayedFinishRunnable$1;

    return-void
.end method


# virtual methods
.method public final cancelEnrollment$2(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->isEnrolling()Z

    move-result v0

    const-string v1, "FingerprintEnrollEnrollingUdfpsFragment"

    if-nez v0, :cond_0

    const-string p0, "cancelEnrollment(), failed because isEnrolling is false"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->removeEnrollmentObservers$2()V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCanceledSignalLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->canceledSignalObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->enrollingCancelSignal:Ljava/lang/Object;

    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->cancelEnrollment()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "cancelEnrollment(), failed to cancel enrollment"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final configureEnrollmentStage$1(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getSubTitleText()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$configureEnrollmentStage$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$configureEnrollmentStage$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    return-void
.end method

.method public final getCurrentStage$1()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    const/4 v1, -0x1

    iget v2, v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->steps:I

    if-ne v2, v1, :cond_0

    return v1

    :cond_0
    iget v0, v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->remaining:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getStageThresholdSteps$2(I)I

    move-result v1

    if-ge v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getStageThresholdSteps$2(I)I

    move-result v1

    if-ge v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getStageThresholdSteps$2(I)I

    move-result v1

    if-ge v2, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getStageThresholdSteps$2(I)I

    move-result p0

    if-ge v2, p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public final getStageThresholdSteps$2(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    const/4 v1, -0x1

    iget v0, v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->steps:I

    if-ne v0, v1, :cond_0

    const-string p0, "FingerprintEnrollEnrollingUdfpsFragment"

    const-string p1, "getStageThresholdSteps: Enrollment not started yet"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mFingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    iget-object p0, p0, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrollStageThreshold(I)F

    move-result p0

    mul-float/2addr p0, v0

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public final getSubTitleText()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->enrollingView:Landroid/widget/RelativeLayout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v0, 0x7f0a0f6c

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTitleText()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->enrollingView:Landroid/widget/RelativeLayout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v0, 0x7f0a0f44

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final getUdfpsEnrollView()Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->enrollingView:Landroid/widget/RelativeLayout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v0, 0x7f0a10a9

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

    return-object p0
.end method

.method public final isStageHalfCompleted$1()Z
    .locals 7

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget v3, v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->steps:I

    if-ne v3, v1, :cond_0

    return v2

    :cond_0
    iget v0, v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->remaining:I

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mFingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    iget-object v0, v0, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrollStageCount()I

    move-result v0

    move v1, v2

    move v4, v1

    :goto_0
    const/4 v5, 0x1

    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getStageThresholdSteps$2(I)I

    move-result v6

    if-gt v4, v3, :cond_2

    if-ge v3, v6, :cond_2

    sub-int/2addr v3, v4

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    if-lt v3, v6, :cond_1

    move v2, v5

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v4, v6

    goto :goto_0

    :cond_3
    return v5
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

    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    iput-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

    iput-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_rotationViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    iput-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_errorDialogViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->onBackPressedCallback:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onBackPressedCallback$1;

    invoke-virtual {p1, p0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0bef

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.RelativeLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->enrollingView:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public final onDetach()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->onBackPressedCallback:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onBackPressedCallback$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public final onEnrollmentHelp$2(Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEnrollmentHelp("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintEnrollEnrollingUdfpsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;->str:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getSubTitleText()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getUdfpsEnrollView()Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

    move-result-object p0

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_rotationViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->rotationObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_rotationViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->rotationObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final onStart()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->isEnrolling()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_errorDialogViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;->_isDialogShown:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v1

    const-string v2, "onStart(), isEnrolling:"

    const-string v3, ", isErrorDialog:"

    const-string v4, "FingerprintEnrollEnrollingUdfpsFragment"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->startEnrollment$3()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->updateProgress$2(ZLcom/android/settings/biometrics2/ui/model/EnrollmentProgress;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mHelpMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->onEnrollmentHelp$2(Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->updateTitleAndDescription$2()V

    :goto_0
    return-void
.end method

.method public final onStop()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->removeEnrollmentObservers$2()V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->isEnrolling()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    const-string v2, "onStop(), enrolling:"

    const-string v3, " isConfigChange:"

    const-string v4, "FingerprintEnrollEnrollingUdfpsFragment"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->cancelEnrollment$2(Z)V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_rotationViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/settings/biometrics2/ui/viewmodel/DeviceRotationViewModel;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->rotation:I

    const/4 p2, 0x1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, p2, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    iget p2, p1, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    iget-object v2, p1, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDisplayDensityValues:[I

    aget p2, v2, p2

    iget p1, p1, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensityForDefaultDisplay:I

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->enrollingView:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const p2, 0x7f0a07c3

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->illustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->illustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string p1, "requireActivity(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->enrollingView:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p2, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mFingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    invoke-virtual {p2}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->getFirstFingerprintSensorPropertiesInternal()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->rotation:I

    iget-object v4, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->onSkipClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onSkipClickListener$1;

    const-string v5, "onSkipClickListener"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f0a10a9

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

    invoke-virtual {v5, p2}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->setSensorProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    const p2, 0x7f0a0f44

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Landroid/widget/TextView;

    const v5, 0x7f0a0f6c

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0f61

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0a0e69

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, p1

    check-cast v7, Landroid/widget/Button;

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragmentKt;->configLayout(Landroid/content/Context;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/Button;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance p2, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onViewCreated$1;

    invoke-direct {p2, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onViewCreated$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, v1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final removeEnrollmentObservers$2()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mErrorMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->errorMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->progressObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mHelpMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->helpMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mAcquireLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->acquireObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mPointerDownLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->pointerDownObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mPointerUpLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->pointerUpObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final startEnrollment$3()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->startEnrollment(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->enrollingCancelSignal:Ljava/lang/Object;

    const-string v1, "FingerprintEnrollEnrollingUdfpsFragment"

    if-nez v0, :cond_0

    const-string v0, "startEnrollment(), failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "startEnrollment(), success"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->progressObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mHelpMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->helpMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mErrorMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->errorMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mAcquireLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->acquireObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mPointerDownLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->pointerDownObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mPointerUpLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->pointerUpObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$acquireObserver$1;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final updateProgress$2(ZLcom/android/settings/biometrics2/ui/model/EnrollmentProgress;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->isEnrolling()Z

    move-result v0

    const-string v1, "FingerprintEnrollEnrollingUdfpsFragment"

    if-nez v0, :cond_0

    const-string p0, "Enrollment not started yet"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p2, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->steps:I

    const/16 v2, 0x2710

    const/4 v3, -0x1

    iget v4, p2, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->remaining:I

    const/4 v5, 0x0

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    sub-int v6, v0, v4

    if-lez v6, :cond_2

    move v5, v6

    :cond_2
    mul-int/2addr v5, v2

    div-int/2addr v5, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "updateProgress("

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "), progress:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v5, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p2, p2, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->steps:I

    if-eq p2, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getUdfpsEnrollView()Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

    move-result-object v0

    iget v1, v0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mTotalSteps:I

    if-ne v1, v3, :cond_3

    iput p2, v0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mTotalSteps:I

    :cond_3
    iput v4, v0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mRemainingSteps:I

    iget-object v1, v0, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, v4, p2}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;II)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    if-lt v5, v2, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->delayedFinishRunnable:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$delayedFinishRunnable$1;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->delayedFinishRunnable:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$delayedFinishRunnable$1;

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$delayedFinishRunnable$1;->run()V

    :cond_6
    :goto_1
    return-void
.end method

.method public final updateTitleAndDescription$2()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getCurrentStage$1()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateTitleAndDescription("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintEnrollEnrollingUdfpsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getCurrentStage$1()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "getString(...)"

    const v3, 0x7f142a58

    const v4, 0x7f142a14

    const v5, 0x7f142a64

    if-eq v0, v1, :cond_d

    const v1, 0x7f130084

    const v6, 0x7f142a0e

    const/4 v7, 0x1

    if-eqz v0, :cond_a

    const v8, 0x7f142a0d

    if-eq v0, v7, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    const v6, 0x7f142a59

    const v9, 0x7f142a66

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getSubTitleText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f142a63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->haveShownRightEdgeLottie:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->illustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    iput-boolean v7, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->haveShownRightEdgeLottie:Z

    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f130088

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->configureEnrollmentStage$1(I)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->illustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->isStageHalfCompleted$1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getSubTitleText()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getSubTitleText()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f142a5e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->haveShownLeftEdgeLottie:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->illustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_4

    iput-boolean v7, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->haveShownLeftEdgeLottie:Z

    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f130087

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->configureEnrollmentStage$1(I)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->illustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->isStageHalfCompleted$1()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getSubTitleText()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getSubTitleText()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f142a5d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->haveShownTipLottie:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->illustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_e

    iput-boolean v7, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->haveShownTipLottie:Z

    const v1, 0x7f142a67

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f130089

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->configureEnrollmentStage$1(I)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->illustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-boolean v2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->haveShownGuideLottie:Z

    if-nez v2, :cond_e

    iput-boolean v7, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->haveShownGuideLottie:Z

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->configureEnrollmentStage$1(I)V

    goto :goto_2

    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getSubTitleText()Landroid/widget/TextView;

    move-result-object p0

    const v0, 0x7f142a60

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->illustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    iget-boolean v2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->haveShownCenterLottie:Z

    if-nez v2, :cond_e

    iput-boolean v7, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->haveShownCenterLottie:Z

    const v2, 0x7f142a51

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->configureEnrollmentStage$1(I)V

    goto :goto_2

    :cond_c
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getSubTitleText()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getTitleText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getSubTitleText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_2
    return-void
.end method
