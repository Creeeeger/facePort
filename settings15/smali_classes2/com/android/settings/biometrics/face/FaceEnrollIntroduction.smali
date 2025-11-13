.class public Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mFaceManager:Landroid/hardware/face/FaceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkMaxEnrolled()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->maxFacesEnrolled()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f140f4b

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const p0, 0x7f140f4c

    return p0
.end method

.method public final getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;)V
    .locals 2

    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;->onChallengeGenerated(IJ)V

    return-void

    :cond_0
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;)V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    return-void
.end method

.method public getDevicePostureState()I
    .locals 0

    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mDevicePostureState:I

    return p0
.end method

.method public getFaceManager()Landroid/hardware/face/FaceManager;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5e2

    return p0
.end method

.method public final getNextButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/google/android/setupcompat/template/FooterBarMixin;->primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPostureCallback()Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFoldCallback:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    return-object p0
.end method

.method public getPostureGuidanceIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mPostureGuidanceIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getSecBiometricsEnrollIntent()Landroid/content/Intent;
    .locals 2

    const-string v0, "SecBiometricsEnrollment"

    const-string v1, "return Face enrollment intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    const-string v0, "FcstFaceSettingsHelper"

    const-string v1, "getFaceEnrollmentIntentForAosp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "face_register_external"

    const-string v1, "previousStage"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public final maxFacesEnrolled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b00ec

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v0, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mLaunchedPostureGuidance:Z

    if-eqz p2, :cond_0

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->onSkipButtonClick()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    if-eq p1, v1, :cond_4

    const/4 v3, 0x6

    if-ne p1, v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v3, v0

    :goto_1
    if-eq p2, v1, :cond_6

    const/16 v1, 0xb

    if-eq p2, v1, :cond_6

    if-ne p2, v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    :goto_2
    move v1, v0

    :goto_3
    if-eqz p3, :cond_7

    const-string v4, "finished_enrolling_face"

    invoke-virtual {p3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    :cond_7
    if-nez p2, :cond_9

    if-nez v2, :cond_8

    iget v4, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mDevicePostureState:I

    sget v5, Lcom/android/settings/biometrics/BiometricUtils;->sAllowEnrollPosture:I

    if-eqz v5, :cond_9

    if-ne v4, v5, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_9
    :goto_4
    if-eqz v3, :cond_a

    if-nez v1, :cond_b

    :cond_a
    if-eqz v2, :cond_d

    :cond_b
    if-nez p3, :cond_c

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    :cond_c
    const-string v1, "skip_pending_enroll"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_d
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onClick(Lcom/google/android/setupdesign/span/LinkSpan;)V
    .locals 0

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getPostureCallback()Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->onConfigurationChange(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getFaceManager()Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    return-void
.end method

.method public onEnrollmentSkipped(Landroid/content/Intent;)V
    .locals 1

    invoke-static {p0}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onEnrollmentSkipped(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onFinishedEnrolling(Landroid/content/Intent;)V
    .locals 1

    invoke-static {p0}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onSkipButtonClick()V
    .locals 1

    invoke-static {p0}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->onEnrollmentSkipped(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->maxFacesEnrolled()Z

    move-result v0

    const-string v1, "FaceEnrollIntroduction"

    if-eqz v0, :cond_0

    const-string p0, "Device has enrolled face, do not show posture guidance"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getPostureGuidanceIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Device do not support posture guidance"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/settings/biometrics/BiometricUtils;->sAllowEnrollPosture:I

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getPostureCallback()Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFoldCallback:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFoldCallback:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->registerCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;Ljava/util/concurrent/Executor;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public requestGatekeeperHat(J)[B
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p0

    return-object p0
.end method

.method public final shouldFinishWhenBackgrounded()Z
    .locals 2

    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->shouldFinishWhenBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mDevicePostureState:I

    iget-boolean p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mLaunchedPostureGuidance:Z

    sget v1, Lcom/android/settings/biometrics/BiometricUtils;->sAllowEnrollPosture:I

    if-eqz v1, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public updateDescriptionText()V
    .locals 2

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->isPrivateProfile(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f141d49

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
