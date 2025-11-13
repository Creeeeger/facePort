.class public final Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$1;
.super Landroid/view/OrientationEventListener;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    invoke-virtual {p1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    sget v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->$r8$clinit:I

    iget-boolean p1, p1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mIsReverseDefaultRotation:Z

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    :cond_0
    add-int/lit8 p1, v0, 0x2

    rem-int/lit8 p1, p1, 0x4

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mPreviousRotation:I

    if-ne p1, v1, :cond_1

    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mPreviousRotation:I

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_1
    return-void
.end method
