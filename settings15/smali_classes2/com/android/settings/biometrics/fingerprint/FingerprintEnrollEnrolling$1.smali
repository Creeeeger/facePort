.class public final Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;
.super Landroid/view/OrientationEventListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 3

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {p1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mPreviousRotation:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-eq p1, v1, :cond_1

    :cond_0
    if-ne v0, v1, :cond_2

    if-ne p1, v2, :cond_2

    :cond_1
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mPreviousRotation:I

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_2
    return-void
.end method
