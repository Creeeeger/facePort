.class public Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;
.super Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CONSENT_STRING_RESOURCES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->CONSENT_STRING_RESOURCES:[I

    return-void

    :array_0
    .array-data 4
        0x7f142997
        0x7f1429b1
        0x7f1429bc
        0x7f1429be
        0x7f1429bb
        0x7f1429b8
        0x7f1429b5
        0x7f1429b4
        0x7f1429b2
        0x7f1429b3
        0x7f1429bd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x765

    return p0
.end method

.method public final onConsentResult(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "sensor_modality"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->updateDescriptionText()V

    return-void
.end method

.method public final onEnrollmentSkipped(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method public final onFinishedEnrolling(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method public final onSkipButtonClick()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method public final updateDescriptionText()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->updateDescriptionText()V

    const v0, 0x7f1429b2

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    return-void
.end method
