.class public final Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onSkipClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onSkipClickListener$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onSkipClickListener$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;

    iget-object p1, p1, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->_enrollingViewModel:Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollEnrollingViewModel;->mOnSkipPressed:Z

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment$onSkipClickListener$1;->this$0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollEnrollingUdfpsFragment;->cancelEnrollment$2(Z)V

    return-void
.end method
