.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onViewCreated$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onViewCreated$1$1$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onViewCreated$1$1$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->enrollingView:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0bf0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getUdfpsEnrollView()Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getUdfpsEnrollView()Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getUdfpsEnrollView()Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->getUdfpsEnrollView()Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p2, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mFingerprintRepository:Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;

    invoke-virtual {p2}, Lcom/android/settings/biometrics2/data/repository/FingerprintRepository;->getFirstFingerprintSensorPropertiesInternal()Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/biometrics2/ui/widget/UdfpsEnrollView;->setSensorProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->haveShownTipLottie:Z

    iput-boolean p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->haveShownLeftEdgeLottie:Z

    iput-boolean p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->haveShownRightEdgeLottie:Z

    iput-boolean p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->haveShownCenterLottie:Z

    iput-boolean p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->haveShownGuideLottie:Z

    iget-object p2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->illustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->startEnrollment$3()V

    iget-object p2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p2, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->updateProgress$2(ZLcom/android/settings/biometrics2/ui/model/EnrollmentProgress;)V

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mHelpMessageLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->onEnrollmentHelp$2(Lcom/android/settings/biometrics2/ui/model/EnrollmentStatusMessage;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->updateTitleAndDescription$2()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
