.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$onViewCreated$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$onViewCreated$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;

    iget p2, p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;->iconTouchCount:I

    add-int/2addr p2, v1

    iput p2, p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;->iconTouchCount:I

    if-ne p2, v0, :cond_0

    const/4 p0, 0x0

    iput p0, p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;->iconTouchCount:I

    iget-object p0, p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mActionLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;->getProgressBar$1()Landroid/widget/ProgressBar;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$onViewCreated$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;->showDialogRunnable:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$clearError$1;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, p0, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$onViewCreated$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;

    invoke-virtual {p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;->getProgressBar$1()Landroid/widget/ProgressBar;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$onViewCreated$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment;->showDialogRunnable:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingRfpsFragment$clearError$1;

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return v1
.end method
