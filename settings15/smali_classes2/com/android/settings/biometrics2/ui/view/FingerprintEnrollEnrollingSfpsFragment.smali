.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;
.super Landroidx/fragment/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;",
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


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public _enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

.field public _errorDialogViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

.field public _progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

.field public final canceledSignalObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

.field public final delayedFinishRunnable:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$delayedFinishRunnable$1;

.field public enrollingCancelSignal:Ljava/lang/Object;

.field public enrollingView:Lcom/google/android/setupdesign/GlifLayout;

.field public final errorMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

.field public haveShownSfpsCenterLottie:Z

.field public haveShownSfpsLeftEdgeLottie:Z

.field public haveShownSfpsNoAnimationLottie:Z

.field public haveShownSfpsRightEdgeLottie:Z

.field public haveShownSfpsTipLottie:Z

.field public helpAnimation:Landroid/animation/ObjectAnimator;

.field public final helpMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

.field public iconTouchCount:I

.field public final onBackPressedCallback:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onBackPressedCallback$1;

.field public final onSkipClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onSkipClickListener$1;

.field public progressAnim:Landroid/animation/ObjectAnimator;

.field public final progressAnimationListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressAnimationListener$1;

.field public final progressObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

.field public final showIconTouchDialogRunnable:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$delayedFinishRunnable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressAnimationListener$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressAnimationListener$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->progressAnimationListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressAnimationListener$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$delayedFinishRunnable$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$delayedFinishRunnable$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->showIconTouchDialogRunnable:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$delayedFinishRunnable$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$delayedFinishRunnable$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$delayedFinishRunnable$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->delayedFinishRunnable:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$delayedFinishRunnable$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onSkipClickListener$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onSkipClickListener$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->onSkipClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onSkipClickListener$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->progressObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->helpMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->errorMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->canceledSignalObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onBackPressedCallback$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onBackPressedCallback$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;)V

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->onBackPressedCallback:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onBackPressedCallback$1;

    return-void
.end method


# virtual methods
.method public final applySfpsErrorDynamicColors(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->getProgressBar$2()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const v3, 0x7f060a5a

    goto :goto_0

    :cond_0
    const v3, 0x7f060a5b

    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->getIllustrationLottie()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragmentKt;->applyLottieDynamicColor(Lcom/airbnb/lottie/LottieAnimationView;Landroid/content/Context;Z)V

    return-void
.end method

.method public final cancelEnrollment$1(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->isEnrolling()Z

    move-result v0

    const-string v1, "FingerprintEnrollEnrollingSfpsFragment"

    if-nez v0, :cond_0

    const-string p0, "cancelEnrollment(), failed because isEnrolling is false"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->removeEnrollmentObservers$1()V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mCanceledSignalLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->canceledSignalObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->enrollingCancelSignal:Ljava/lang/Object;

    :goto_0
    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->cancelEnrollment()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "cancelEnrollment(), failed to cancel enrollment"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final configureEnrollmentStage(ILjava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->enrollingView:Lcom/google/android/setupdesign/GlifLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getDescriptionText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->rawResCacheKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    new-instance p2, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$configureEnrollmentStage$1;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$configureEnrollmentStage$1;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;)V

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)V

    return-void
.end method

.method public final getIllustrationLottie()Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->enrollingView:Lcom/google/android/setupdesign/GlifLayout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v0, 0x7f0a07c3

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public final getProgressBar$2()Landroid/widget/ProgressBar;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->enrollingView:Lcom/google/android/setupdesign/GlifLayout;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v0, 0x7f0a0647

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public final getStageThresholdSteps$1(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    iget v0, v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->steps:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mFingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    iget-object p0, p0, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrollStageThreshold(I)F

    move-result p0

    mul-float/2addr p0, v0

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "FingerprintEnrollEnrollingSfpsFragment"

    const-string p1, "getStageThresholdSteps: Enrollment not started yet"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
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

    iput-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    iput-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    const-class v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

    invoke-static {v1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Lkotlin/reflect/KClass;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_errorDialogViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->onBackPressedCallback:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onBackPressedCallback$1;

    invoke-virtual {p1, p0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0b2f

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.google.android.setupdesign.GlifLayout"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->enrollingView:Lcom/google/android/setupdesign/GlifLayout;

    return-object p1
.end method

.method public final onDetach()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->onBackPressedCallback:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onBackPressedCallback$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public final onEnrollmentHelp$1(Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEnrollmentHelp("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintEnrollEnrollingSfpsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;->str:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->enrollingView:Lcom/google/android/setupdesign/GlifLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v1, "requireActivity(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getDescriptionText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, ""

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->helpAnimation:Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->helpAnimation:Landroid/animation/ObjectAnimator;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->applySfpsErrorDynamicColors(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-class p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;

    sget-object v5, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    iget v1, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mUserId:I

    const-string v4, "FingerprintEnrollEnrollingSfpsFragment::showError"

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    :cond_2
    return-void
.end method

.method public final onStart()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->isEnrolling()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_errorDialogViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollErrorDialogViewModel;->_isDialogShown:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v1

    const-string v2, "onStart(), isEnrolling:"

    const-string v3, ", isErrorDialog:"

    const-string v4, "FingerprintEnrollEnrollingSfpsFragment"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->startEnrollment$2()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->updateProgress$1(ZLcom/android/settings/biometrics2/ui/model/EnrollmentProgress;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mHelpMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->onEnrollmentHelp$1(Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->applySfpsErrorDynamicColors(Z)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->updateTitleAndDescription$1()V

    :goto_0
    return-void
.end method

.method public final onStop()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->removeEnrollmentObservers$1()V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->isEnrolling()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    const-string v2, "onStop(), enrolling:"

    const-string v3, " isConfigChange:"

    const-string v4, "FingerprintEnrollEnrollingSfpsFragment"

    invoke-static {v2, v0, v3, v1, v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->cancelEnrollment$1(Z)V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "requireActivity(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->enrollingView:Lcom/google/android/setupdesign/GlifLayout;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->onSkipClickListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onSkipClickListener$1;

    const-string v1, "onSkipClickListener"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f142a10

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/setupdesign/GlifLayout;->getDescriptionText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    :cond_0
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

    invoke-direct {v3, v2, v0, v5, v4}, Lcom/google/android/setupcompat/template/FooterButton;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    const/4 v0, 0x0

    invoke-virtual {v1, v3, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;Z)V

    const v1, 0x7f0a0647

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroid/widget/ProgressBar;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/widget/ProgressBar;

    const v2, 0x7f060a5b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->invalidate()V

    const v1, 0x7f0a07c3

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v1, p1, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragmentKt;->applyLottieDynamicColor(Lcom/airbnb/lottie/LottieAnimationView;Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const-class v1, Lcom/google/android/setupdesign/template/HeaderMixin;

    invoke-virtual {p2, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v1

    const-string v2, "getMixin(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/android/setupdesign/template/HeaderMixin;

    const-class v3, Lcom/google/android/setupdesign/template/DescriptionMixin;

    invoke-virtual {p2, v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/google/android/setupdesign/template/DescriptionMixin;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/google/android/setupdesign/template/HeaderMixin;->setAutoTextSizeEnabled(Z)V

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMinLines(I)V

    invoke-virtual {v1}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p2}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMinLines(I)V

    invoke-virtual {p2}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/setupdesign/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {p2}, Lcom/google/android/setupdesign/template/DescriptionMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLines(I)V

    :goto_1
    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->enrollingView:Lcom/google/android/setupdesign/GlifLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const p2, 0x7f0a0be4

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x5

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    const-string v1, "translationX"

    invoke-static {p1, v1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x226

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->helpAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->getProgressBar$2()Landroid/widget/ProgressBar;

    move-result-object p1

    new-instance p2, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onViewCreated$2;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance p2, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onViewCreated$3;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onViewCreated$3;-><init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :array_0
    .array-data 4
        0x0
        0x42200000    # 40.0f
        -0x3de00000    # -40.0f
        0x42200000    # 40.0f
        0x0
    .end array-data
.end method

.method public final removeEnrollmentObservers$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mErrorMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->errorMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->progressObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mHelpMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->helpMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final startEnrollment$2()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->startEnrollment(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->enrollingCancelSignal:Ljava/lang/Object;

    const-string v1, "FingerprintEnrollEnrollingSfpsFragment"

    if-nez v0, :cond_0

    const-string v0, "startEnrollment(), failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "startEnrollment(), success"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->progressObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mHelpMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->helpMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mErrorMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->errorMessageObserver:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressObserver$1;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final updateProgress$1(ZLcom/android/settings/biometrics2/ui/model/EnrollmentProgress;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->isEnrolling()Z

    move-result v0

    const-string v1, "FingerprintEnrollEnrollingSfpsFragment"

    if-nez v0, :cond_0

    const-string p0, "Enrollment not started yet"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p2, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->steps:I

    const/4 v2, -0x1

    const/16 v3, 0x2710

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget v2, p2, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->remaining:I

    sub-int v2, v0, v2

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    mul-int/2addr v2, v3

    div-int/2addr v2, v0

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->getProgressBar$2()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateProgress("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "), old:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", new:"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->getProgressBar$2()Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    if-ge p2, v2, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->applySfpsErrorDynamicColors(Z)V

    :cond_3
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->progressAnim:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->getProgressBar$2()Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->getProgressBar$2()Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p2

    filled-new-array {p2, v2}, [I

    move-result-object p2

    const-string v0, "progress"

    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->progressAnimationListener:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$progressAnimationListener$1;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v0, 0x7f0c0004

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    const-string v0, "loadInterpolator(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->progressAnim:Landroid/animation/ObjectAnimator;

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->getProgressBar$2()Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-lt v2, v3, :cond_6

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->delayedFinishRunnable:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$delayedFinishRunnable$1;

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$delayedFinishRunnable$1;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method public final updateTitleAndDescription$1()V
    .locals 14

    new-instance v0, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->enrollingView:Lcom/google/android/setupdesign/GlifLayout;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/google/android/setupdesign/GlifLayout;)V

    iget-object v3, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    invoke-virtual {v2}, Lcom/google/android/setupdesign/GlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-nez v3, :cond_1

    move v3, v9

    goto :goto_0

    :cond_1
    iget v10, v3, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->steps:I

    iget v3, v3, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;->remaining:I

    sub-int/2addr v10, v3

    invoke-virtual {p0, v8}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->getStageThresholdSteps$1(I)I

    move-result v3

    if-ge v10, v3, :cond_2

    move v3, v8

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->getStageThresholdSteps$1(I)I

    move-result v3

    if-ge v10, v3, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->getStageThresholdSteps$1(I)I

    move-result v3

    if-ge v10, v3, :cond_4

    move v3, v7

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->getStageThresholdSteps$1(I)I

    move-result v3

    if-ge v10, v3, :cond_5

    move v3, v6

    goto :goto_0

    :cond_5
    move v3, v5

    :goto_0
    const v10, 0x7f142a4f

    const v11, 0x7f142a50

    const-string v12, "getString(...)"

    const v13, 0x7f142a56

    if-eq v3, v9, :cond_b

    if-eqz v3, :cond_a

    if-eq v3, v4, :cond_9

    const-string v8, ""

    if-eq v3, v7, :cond_8

    if-eq v3, v6, :cond_7

    if-eq v3, v5, :cond_6

    invoke-virtual {v0, v11}, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->setHeaderText(I)V

    invoke-virtual {p0, v13}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->setDescriptionText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    const v1, 0x7f142a55

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->setHeaderText(I)V

    iget-boolean v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->haveShownSfpsRightEdgeLottie:Z

    if-nez v0, :cond_c

    iput-boolean v4, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->haveShownSfpsRightEdgeLottie:Z

    const v0, 0x7f130080

    invoke-virtual {p0, v0, v8}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->configureEnrollmentStage(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    const v1, 0x7f142a53

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->setHeaderText(I)V

    iget-boolean v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->haveShownSfpsLeftEdgeLottie:Z

    if-nez v0, :cond_c

    iput-boolean v4, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->haveShownSfpsLeftEdgeLottie:Z

    const v0, 0x7f13007d

    invoke-virtual {p0, v0, v8}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->configureEnrollmentStage(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    const v1, 0x7f142a52

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->setHeaderText(I)V

    iget-boolean v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->haveShownSfpsTipLottie:Z

    if-nez v0, :cond_c

    iput-boolean v4, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->haveShownSfpsTipLottie:Z

    const v0, 0x7f130081

    invoke-virtual {p0, v0, v8}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->configureEnrollmentStage(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    const v1, 0x7f142a51

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->setHeaderText(I)V

    iget-boolean v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->haveShownSfpsCenterLottie:Z

    if-nez v0, :cond_c

    iput-boolean v4, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->haveShownSfpsCenterLottie:Z

    invoke-virtual {p0, v13}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f13007f

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->configureEnrollmentStage(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_a
    const v1, 0x7f142a0e

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->setHeaderText(I)V

    iget-boolean v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->haveShownSfpsNoAnimationLottie:Z

    if-nez v0, :cond_c

    iput-boolean v4, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->haveShownSfpsNoAnimationLottie:Z

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->getIllustrationLottie()Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f142a4e

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v13}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f13007e

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->configureEnrollmentStage(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_b
    invoke-virtual {v0, v11}, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->setHeaderText(I)V

    invoke-virtual {p0, v13}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/biometrics2/ui/view/GlifLayoutHelper;->setDescriptionText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v10}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_1
    return-void
.end method
