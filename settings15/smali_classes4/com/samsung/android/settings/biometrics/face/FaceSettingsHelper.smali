.class public abstract Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final IS_SUPPORT_FACE_DAEMON_ALTERNATIVE_FACE:Z

.field public static final IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->IS_SUPPORTED_ALTERNATIVE_ENROLLMENT_AND_CLOSED_EYES_DETECTION:Z

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_ALTERNATIVE_FACE:Z

    return-void
.end method

.method public static removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V
    .locals 2

    const-string/jumbo v0, "FcstFaceSettingsHelper"

    const-string/jumbo v1, "removeFaceLock!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x100

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    if-eqz p3, :cond_0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->sendSurveyForLockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_0
    return-void
.end method

.method public static getFaceBrightenScreenBooleanValue(Landroid/content/Context;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_brighten_screen"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const-string p1, "getFaceBrightenScreenBooleanValue :"

    const-string v0, "FcstFaceSettingsHelper"

    invoke-static {p0, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static getFaceBrightenScreenDbValue(Landroid/content/Context;I)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "face_brighten_screen"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;IZ)V

    :cond_0
    const-string p0, "getFaceBrightenScreenDbValue :"

    const-string p1, "FcstFaceSettingsHelper"

    invoke-static {v0, p0, p1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getFaceOpenEyesBooleanValue(Landroid/content/Context;I)Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v0

    const-string v1, "FcstFaceSettingsHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "face_open_eyes"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v4, :cond_1

    invoke-static {p0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;IZ)V

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, v3}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;IZ)V

    move v0, v3

    :cond_1
    :goto_0
    const-string p0, "getFaceOpenEyesBooleanValue :"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2

    :cond_3
    const-string p0, "getFaceOpenEyesBooleanValue: Not support Face Open eyes"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static getFaceRecognizeMaskDbValue(Landroid/content/Context;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_recognize_mask"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getFaceStayOnLockScreenBooleanValue(Landroid/content/Context;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_stay_on_lock_screen"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const-string p1, "getFaceStayOnLockScreenBooleanValue :"

    const-string v0, "FcstFaceSettingsHelper"

    invoke-static {p0, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getFaceStayOnLockScreenDbValue(Landroid/content/Context;I)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "face_stay_on_lock_screen"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "FcstFaceSettingsHelper"

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "face_without_swipe_to_unlock"

    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v2, "getFaceUnlockWithoutSwipeValue :"

    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;IZ)V

    move v0, v2

    :cond_1
    :goto_0
    const-string p0, "getFaceStayOnLockScreenDbValue :"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getFaceUnlockEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/16 v1, 0x100

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public static isSupportBioFaceAlternativeFace()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isSupportBioFaceAlternativeFace : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_ALTERNATIVE_FACE:Z

    const-string v2, "FcstFaceSettingsHelper"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return v1
.end method

.method public static isSupportBioFaceOpenEyes()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isSupportBioFaceOpenEyes : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    const-string v2, "FcstFaceSettingsHelper"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return v1
.end method

.method public static isSupportBioFaceRecognizeWithMask(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/hardware/face/FaceManager;->semIsSupportOnMask()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSupportBioFaceRecognizeWithMask : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "FcstFaceSettingsHelper"

    invoke-static {v2, v1, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "FcstFaceSettingsHelper"

    const-string v2, "isSupportBioFaceRecognizeWithMask : false"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static removeFaceLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2

    const-string v0, "FcstFaceSettingsHelper"

    const-string/jumbo v1, "removeFaceLock!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x100

    invoke-static {p1, p2, v0, p0}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    return-void
.end method

.method public static setFaceBrightenScreen(Landroid/content/Context;IZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_brighten_screen"

    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "setFaceBrightenScreenBooleanValue: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "FcstFaceSettingsHelper"

    invoke-static {p0, p2, p1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public static setFaceLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 3

    const-string v0, "Enable Face lock!"

    const-string v1, "FcstFaceSettingsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p0}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "face disabled by MDM policy"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1, p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getTwoFactorValue(Landroid/content/Context;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string p0, "Face is not allowed because two-step is set as lock type"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v0, 0x100

    invoke-static {p1, p2, v0, p0}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    return-void
.end method

.method public static setFaceOpenEyes(Landroid/content/Context;IZ)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v0

    const-string v1, "FcstFaceSettingsHelper"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_open_eyes"

    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "setFaceOpenEyes: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "setFaceOpenEyes: Not support Face Open eyes"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setFaceStayOnLockScreen(Landroid/content/Context;IZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_stay_on_lock_screen"

    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "setFaceStayOnLockScreen: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "FcstFaceSettingsHelper"

    invoke-static {p0, p2, p1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public static getFaceSensorErrorMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "FcstFaceSettingsHelper"

    if-nez p0, :cond_0

    const-string v1, "Context is null. Using fallback face sensor error message."
    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    goto :goto_0

    :cond_0
    :try_start_0
    sget v1, Lcom/android/settings/R$string;->sec_face_error_message_sensor_error:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const-string v2, "Face sensor error string was empty. Using fallback message."
    invoke-static {v0, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    goto :goto_0

    :catch_0
    const-string v2, "Face sensor error string resource missing. Using fallback message."
    invoke-static {v0, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "Face recognition can't be used right now because the face sensor isn't working. Please try again later."
    return-object v0
.end method

.method public static showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "FcstFaceSettingsHelper"

    const-string p1, "Activity is null. Skip SensorErrorDialog"

    invoke-static {p0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroidx/appcompat/util/SeslKoreanGeneralizer;

    invoke-direct {v0}, Landroidx/appcompat/util/SeslKoreanGeneralizer;-><init>()V

    invoke-virtual {v0, p2}, Landroidx/appcompat/util/SeslKoreanGeneralizer;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_1

    const p1, 0x7f1423bf

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const v0, 0x104000a

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p2}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
