.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$onViewCreated$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$onViewCreated$2$1$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$onViewCreated$2$1$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;->isAnimationCancelled:Z

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;->getIconAnimationDrawable()Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;->startEnrollment$1()V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;->clearError$1()V

    iget-object p2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p2, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;->updateProgress(ZLcom/android/settings/biometrics2/ui/model/EnrollmentProgress;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;->updateTitleAndDescription()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
