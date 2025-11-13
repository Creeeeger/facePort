.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "FingerprintEnrollFindSensor.java"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;


# instance fields
.field private mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

.field private mCanAssumeSidefps:Z

.field private mCanAssumeUdfps:Z

.field private mNextClicked:Z

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPreviousRotation:I

.field private mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method public static synthetic $r8$lambda$4daull5ZuBU2Dz0rPnqrRnvTetQ(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->onStartButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BIZwhP96Hcr_xv5kvapS73PWLT4(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->lambda$onCreate$0(IIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousRotation(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mPreviousRotation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmPreviousRotation(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mPreviousRotation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$monStartButtonClick(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->onStartButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mPreviousRotation:I

    return-void
.end method

.method private synthetic lambda$onCreate$0(IIJ)V
    .locals 0

    .line 139
    iput-wide p3, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    .line 140
    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    const-string p3, "hw_auth_token"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 148
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    return-void
.end method

.method private listenOrientationEvent()V
    .locals 1

    .line 348
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mCanAssumeSidefps:Z

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$2;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 362
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 363
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mPreviousRotation:I

    return-void
.end method

.method private onStartButtonClick(Landroid/view/View;)V
    .locals 1

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getFingerprintEnrollingIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private proceedToEnrolling(Z)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    .line 293
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getFingerprintEnrollingIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private startLookingForFingerprint()V
    .locals 3

    .line 212
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "sidecar"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_1

    .line 220
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    const/4 v2, 0x1

    .line 221
    invoke-virtual {v0, v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->setEnrollReason(I)V

    .line 222
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    .line 223
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    return-void
.end method

.method private stopListenOrientationEvent()V
    .locals 1

    .line 367
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mCanAssumeSidefps:Z

    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_1
    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method private stopLookingForFingerprint()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 203
    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 207
    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    :cond_0
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_0

    .line 186
    sget p0, Lcom/android/settings/R$layout;->udfps_enroll_find_sensor_layout:I

    return p0

    .line 187
    :cond_0
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mCanAssumeSidefps:Z

    if-eqz p0, :cond_1

    .line 188
    sget p0, Lcom/android/settings/R$layout;->sfps_enroll_find_sensor_layout:I

    return p0

    .line 190
    :cond_1
    sget p0, Lcom/android/settings/R$layout;->fingerprint_enroll_find_sensor:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf1

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 304
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    .line 324
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 327
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x0

    .line 328
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget p1, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    if-lt p2, p1, :cond_2

    .line 330
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 333
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    goto :goto_0

    .line 320
    :cond_3
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 321
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 338
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->stopLookingForFingerprint()V

    .line 181
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const-class p1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 68
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 69
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mCanAssumeUdfps:Z

    if-eqz p1, :cond_1

    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mCanAssumeSidefps:Z

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->getContentView()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 73
    new-instance v2, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v2, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_enrolling_skip:I

    .line 75
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)V

    .line 76
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    const/4 v3, 0x7

    .line 77
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    sget v3, Lcom/android/settings/R$style;->SudGlifButton_Secondary:I

    .line 78
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v2

    .line 73
    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->listenOrientationEvent()V

    .line 84
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mCanAssumeUdfps:Z

    if-eqz p1, :cond_2

    .line 85
    sget p1, Lcom/android/settings/R$string;->security_settings_udfps_enroll_find_sensor_title:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 86
    sget p1, Lcom/android/settings/R$string;->security_settings_udfps_enroll_find_sensor_message:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    .line 87
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->security_settings_udfps_enroll_find_sensor_start_button:I

    .line 89
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 96
    sget p1, Lcom/android/settings/R$id;->illustration_lottie:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 97
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 98
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 99
    sget v0, Lcom/android/settings/R$raw;->udfps_edu_a11y_lottie:I

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_2

    .line 102
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mCanAssumeSidefps:Z

    if-eqz p1, :cond_6

    .line 103
    sget p1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_find_sensor_title:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 104
    sget p1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_find_sensor_message:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    .line 105
    sget p1, Lcom/android/settings/R$id;->illustration_lottie:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 106
    sget v2, Lcom/android/settings/R$id;->illustration_lottie_portrait:I

    .line 107
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v0, :cond_5

    const/4 v0, 0x2

    const/high16 v5, 0x43340000    # 180.0f

    if-eq v3, v0, :cond_4

    const/4 v0, 0x3

    if-eq v3, v0, :cond_3

    .line 125
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 120
    :cond_3
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_2

    .line 115
    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 117
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 111
    :cond_5
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 130
    :cond_6
    sget p1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_find_sensor_title:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 131
    sget p1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_find_sensor_message:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    .line 136
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 137
    const-class p1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 138
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)V

    invoke-virtual {p1, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    goto :goto_3

    .line 150
    :cond_8
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    if-eqz p1, :cond_9

    .line 152
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    goto :goto_3

    .line 156
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_3
    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    .line 162
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mCanAssumeUdfps:Z

    if-eqz p1, :cond_a

    .line 163
    sget p1, Lcom/android/settings/R$id;->illustration_lottie:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 164
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 171
    :cond_a
    sget p1, Lcom/android/settings/R$id;->fingerprint_sensor_location_animation:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 172
    instance-of v0, p1, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    if-eqz v0, :cond_b

    .line 173
    check-cast p1, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    :cond_b
    :goto_4
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 264
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->stopListenOrientationEvent()V

    .line 265
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onDestroy()V

    .line 266
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    if-eqz p0, :cond_0

    .line 267
    invoke-interface {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;->stopAnimation()V

    :cond_0
    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    .line 241
    iget-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 242
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    .line 243
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->proceedToEnrolling(Z)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;->showErrorDialog(Lcom/android/settings/biometrics/BiometricEnrollBase;I)V

    :goto_0
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 0

    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    .line 232
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->proceedToEnrolling(Z)V

    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 0

    .line 276
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->stopLookingForFingerprint()V

    const/4 p1, 0x2

    .line 277
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 278
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 195
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStart()V

    .line 196
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    if-eqz p0, :cond_0

    .line 197
    invoke-interface {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;->startAnimation()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 251
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onStop()V

    .line 252
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    if-eqz p0, :cond_0

    .line 253
    invoke-interface {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;->pauseAnimation()V

    :cond_0
    return-void
.end method

.method protected shouldFinishWhenBackgrounded()Z
    .locals 1

    .line 259
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->shouldFinishWhenBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
