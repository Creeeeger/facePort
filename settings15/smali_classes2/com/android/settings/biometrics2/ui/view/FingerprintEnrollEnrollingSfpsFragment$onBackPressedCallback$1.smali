.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onBackPressedCallback$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onBackPressedCallback$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final handleOnBackPressed()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment$onBackPressedCallback$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;

    iget-object v0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mOnBackPressed:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingSfpsFragment;->cancelEnrollment$1(Z)V

    return-void
.end method
