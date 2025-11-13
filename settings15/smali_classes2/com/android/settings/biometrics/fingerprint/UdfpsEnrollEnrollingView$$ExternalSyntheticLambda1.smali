.class public final synthetic Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView$$ExternalSyntheticLambda1;->f$1:Landroid/view/View;

    sget v1, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->mUdfpsEnrollView:Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollView;

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/biometrics/fingerprint/UdfpsEnrollEnrollingView;->hasOverlap(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
