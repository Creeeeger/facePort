.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onViewCreated$3$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onViewCreated$3$1$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    sget p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onViewCreated$3$1$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->startEnrollment$2()V

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_progressViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollProgressViewModel;->mProgressLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/settings/biometrics2/ui/model/EnrollmentProgress;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->updateProgress$1(ZLcom/android/settings/biometrics2/ui/model/EnrollmentProgress;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
