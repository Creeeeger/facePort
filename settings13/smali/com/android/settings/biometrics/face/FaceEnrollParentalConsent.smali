.class public Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;
.super Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;
.source "FaceEnrollParentalConsent.java"


# static fields
.field public static final CONSENT_STRING_RESOURCES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 40
    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_consent_introduction_title:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_consent_message:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_info_consent_glasses:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_info_consent_looking:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_info_consent_gaze:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_how_consent_message:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_control_consent_title:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_control_consent_message:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->CONSENT_STRING_RESOURCES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;-><init>()V

    return-void
.end method

.method private onConsentResult(Z)V
    .locals 3

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "sensor_modality"

    const/16 v2, 0x8

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 81
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x765

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget p1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_consent_message:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    return-void
.end method

.method protected onEnrollmentSkipped(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method protected onFinishedEnrolling(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x1

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method protected onSetOrConfirmCredentials(Landroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
