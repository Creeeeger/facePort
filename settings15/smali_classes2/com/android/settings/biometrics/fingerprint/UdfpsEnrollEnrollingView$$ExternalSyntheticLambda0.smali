.class public final synthetic Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;

.field public final synthetic f$1:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda0;->f$1:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda0;->f$1:Landroid/widget/Button;

    sget v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
