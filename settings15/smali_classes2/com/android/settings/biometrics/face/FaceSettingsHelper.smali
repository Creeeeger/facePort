.class public Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;
.super Ljava/lang/Object;
.source "FaceSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static FACTOR_TYPE:Ljava/lang/String;

.field public static final IS_SUPPORT_FACE_DAEMON_ALTERNATIVE_FACE:Z

.field public static final IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

.field public static SETUP_STATE:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$UyNpYt5b6iHByNdIRDcDhbbSFmg(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->lambda$showFaceSensorErrorDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s-C7XtFYFcNnMO61ypb20UVbOQ4(ZLandroid/app/Activity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->lambda$showFaceSensorErrorDialog$1(ZLandroid/app/Activity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 97
    sget-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->IS_SUPPORTED_ALTERNATIVE_ENROLLMENT_AND_CLOSED_EYES_DETECTION:Z

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    .line 98
    sput-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_ALTERNATIVE_FACE:Z

    const-string v0, "content://com.samsung.android.cmfa.provider.CmfaProvider/factorInfo"

    .line 116
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "factorType"

    .line 118
    sput-object v0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->FACTOR_TYPE:Ljava/lang/String;

    const-string v0, "blobData0"

    .line 119
    sput-object v0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->SETUP_STATE:Ljava/lang/String;

    return-void
.end method

.method public static getFaceBrightenScreenBooleanValue(Landroid/content/Context;I)Z
    .locals 4

    .line 349
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FcstFaceSettingsHelper"

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    const-string v3, "face_brighten_screen"

    invoke-static {p0, v3, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 357
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFaceBrightenScreenBooleanValue :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v1, p1

    :cond_0
    return v1

    :cond_1
    const-string p0, "getFaceBrightenScreenBooleanValue: Not support Face Brighten Screen"

    .line 353
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getFaceBrightenScreenDbValue(Landroid/content/Context;I)I
    .locals 5

    .line 363
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "FcstFaceSettingsHelper"

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "face_brighten_screen"

    invoke-static {v0, v4, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 367
    invoke-static {p0, v1, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;ZI)V

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    const-string p0, "getFaceBrightenScreenDbValue: Not support Face Brighten Screen"

    .line 371
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 374
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getFaceBrightenScreenDbValue :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getFaceEnrollmentIntentForAosp(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2

    const-string v0, "FcstFaceSettingsHelper"

    const-string v1, "getFaceEnrollmentIntentForAosp"

    .line 583
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 586
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "previousStage"

    if-eqz p1, :cond_0

    const-string p1, "setupwizard_face"

    .line 588
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "face_register_external"

    .line 590
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method public static getFaceFasterRecognitionBooleanValue(Landroid/content/Context;I)Z
    .locals 4

    .line 269
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceFasterRecognition()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FcstFaceSettingsHelper"

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    const-string v3, "face_faster_recognition"

    invoke-static {p0, v3, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFaceFasterRecognitionBooleanValue :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const-string p0, "getFaceFasterRecognitionBooleanValue: Not support Face faster recognition"

    .line 273
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getFaceFasterRecognitionDbValue(Landroid/content/Context;I)I
    .locals 5

    .line 283
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceFasterRecognition()Z

    move-result v0

    const-string v1, "FcstFaceSettingsHelper"

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "face_screen_lock"

    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "face_faster_recognition"

    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eq v3, v2, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 289
    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceFasterRecognitionValue(Landroid/content/Context;ZI)V

    const/4 p0, 0x0

    move v2, p0

    goto :goto_1

    :cond_2
    const-string p0, "getFaceFasterRecognitionDbValue: Not support Face faster recognition"

    .line 293
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getFaceFasterRecognitionDbValue :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static getFaceOpenEyesBooleanValue(Landroid/content/Context;I)Z
    .locals 5

    .line 312
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v0

    const-string v1, "FcstFaceSettingsHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "face_open_eyes"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v4, :cond_1

    .line 316
    sget v0, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    const/16 v4, 0x1d

    if-lt v0, v4, :cond_0

    .line 317
    invoke-static {p0, v3, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;ZI)V

    move v0, v3

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {p0, v2, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;ZI)V

    move v0, v2

    .line 329
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getFaceOpenEyesBooleanValue :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2

    :cond_3
    const-string p0, "getFaceOpenEyesBooleanValue: Not support Face Open eyes"

    .line 325
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static getFaceOpenEyesDbValue(Landroid/content/Context;I)I
    .locals 2

    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_open_eyes"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static getFaceStayOnLockScreenBooleanValue(Landroid/content/Context;I)Z
    .locals 4

    .line 221
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FcstFaceSettingsHelper"

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    const-string v3, "face_stay_on_lock_screen"

    invoke-static {p0, v3, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFaceStayOnLockScreenBooleanValue :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const-string p0, "getFaceStayOnLockScreenBooleanValue: Not support Stay on Lock screen"

    .line 225
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getFaceStayOnLockScreenDbValue(Landroid/content/Context;I)I
    .locals 6

    .line 237
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FcstFaceSettingsHelper"

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "face_stay_on_lock_screen"

    invoke-static {v0, v5, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 241
    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceUnlockWithoutSwipeValue(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 242
    invoke-static {p0, v1, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;ZI)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-static {p0, v3, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;ZI)V

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    const-string p0, "getFaceStayOnLockScreenDbValue: Not support Stay on Lock screen"

    .line 250
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 253
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getFaceStayOnLockScreenDbValue :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getFaceUnlockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    const/16 v0, 0x100

    .line 535
    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move p0, p2

    :cond_0
    return p0
.end method

.method public static getFaceUnlockWithoutSwipeValue(Landroid/content/Context;I)I
    .locals 2

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_without_swipe_to_unlock"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFaceUnlockWithoutSwipeValue :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FcstFaceSettingsHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getFaceWearGlasses(Landroid/content/Context;I)Z
    .locals 2

    .line 631
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_wear_glasses"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method

.method public static getTDSetupState(Landroid/content/Context;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 425
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p0

    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    sget-object p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->SETUP_STATE:Ljava/lang/String;

    aput-object p0, v4, v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->FACTOR_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=?"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string p0, "TOUCH_DETECTION"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    .line 432
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 435
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 436
    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 439
    :cond_1
    aget-byte v1, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_2
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catchall_0
    move-exception v0

    .line 425
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0

    :cond_3
    :goto_2
    if-eqz p0, :cond_4

    .line 440
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    return v1

    :catch_0
    move-exception p0

    .line 441
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTDSetupState : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FcstFaceSettingsHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isAdvancedAccessControlEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 416
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getCmfaManager()Lcom/samsung/android/knox/cmfa/CmfaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public static isAdvancedAccessControlStarted(Landroid/content/Context;)Z
    .locals 0

    .line 420
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getCmfaManager()Lcom/samsung/android/knox/cmfa/CmfaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/cmfa/CmfaManager;->isStarted()Z

    move-result p0

    return p0
.end method

.method public static isSupportBioFaceAlternativeFace()Z
    .locals 3

    .line 406
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_ALTERNATIVE_FACE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 410
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportBioFaceAlternativeFace : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FcstFaceSettingsHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupportBioFaceBrightenScreen()Z
    .locals 1

    .line 391
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v0

    return v0
.end method

.method public static isSupportBioFaceFasterRecognition()Z
    .locals 1

    .line 379
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isJdmModel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportBioFaceOpenEyes()Z
    .locals 3

    .line 396
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 400
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportBioFaceOpenEyes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FcstFaceSettingsHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupportBioFaceRecognizeWithMask(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/hardware/face/FaceManager;->semIsSupportOnMask()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "FcstFaceSettingsHelper"

    const-string v2, "isSupportBioFaceRecognizeWithMask : false"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportBioFaceRecognizeWithMask : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FcstFaceSettingsHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupportBioFaceStayOnLockScreen()Z
    .locals 1

    .line 383
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v0

    return v0
.end method

.method public static isSupportBioFaceUsefulFeature()Z
    .locals 1

    .line 387
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v0

    return v0
.end method

.method public static isSupportedKeyboard(Landroid/content/Context;I)Z
    .locals 4

    .line 488
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportedKeyboard packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceSettingsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    const-string p1, "input_method"

    .line 503
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semIsAccessoryKeyboard()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x78095313 -> :sswitch_2
        -0x982b491 -> :sswitch_1
        0x1ca60c67 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isTouchDynamicsEnabled(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    .line 448
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p0

    .line 449
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x1

    new-array v3, p0, [Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->FACTOR_TYPE:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    .line 455
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    move v2, v0

    .line 458
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    const-string v3, "TOUCH_DETECTION"

    .line 459
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "FcstFaceSettingsHelper"

    const-string v3, "TouchDynamicsEnabled!"

    .line 460
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 448
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 465
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    return v0

    :catch_0
    move-exception p0

    .line 466
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v0
.end method

.method public static isTouchDynamicsStarted(Landroid/content/Context;)Z
    .locals 1

    .line 472
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getTDSetupState(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$showFaceSensorErrorDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "FcstFaceSettingsHelper"

    const-string p1, "showSensorErrorDialog"

    .line 573
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$showFaceSensorErrorDialog$1(ZLandroid/app/Activity;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 576
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static removeFaceLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2

    const-string v0, "FcstFaceSettingsHelper"

    const-string v1, "removeFaceLock!"

    .line 555
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x100

    .line 556
    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    return-void
.end method

.method private static sendTDbroadcast(Landroid/content/Context;I)V
    .locals 2

    .line 526
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cmfa.framework.UPDATE_TD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TD_STATUS"

    .line 527
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.samsung.android.cmfa.framework"

    .line 528
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 529
    invoke-static {p1}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static setAdvancedAccessControl(Landroid/content/Context;Z)V
    .locals 2

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAdvancedAccessControl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceSettingsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 599
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getCmfaManager()Lcom/samsung/android/knox/cmfa/CmfaManager;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$1;

    invoke-direct {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->start(Lcom/samsung/android/knox/cmfa/IAuthResultListener;)I

    goto :goto_0

    .line 611
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isTouchDynamicsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 612
    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->sendTDbroadcast(Landroid/content/Context;I)V

    .line 615
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getCmfaManager()Lcom/samsung/android/knox/cmfa/CmfaManager;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$2;

    invoke-direct {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$2;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/cmfa/CmfaManager;->stop(Lcom/samsung/android/knox/cmfa/IAuthResultListener;)I

    :goto_0
    return-void
.end method

.method public static setFaceBrightenScreen(Landroid/content/Context;ZI)V
    .locals 2

    .line 338
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result v0

    const-string v1, "FcstFaceSettingsHelper"

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_brighten_screen"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 341
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setFaceBrightenScreenBooleanValue: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "setFaceBrightenScreenBooleanValue: Not support Face Brighten Screen"

    .line 343
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setFaceFasterRecognitionValue(Landroid/content/Context;ZI)V
    .locals 3

    .line 258
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceFasterRecognition()Z

    move-result v0

    const-string v1, "FcstFaceSettingsHelper"

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const-string v2, "face_faster_recognition"

    invoke-static {p0, v2, v0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 261
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setFaceFasterRecognitionValue: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string p0, "setFaceFasterRecognitionValue: Not support Faster Recognition"

    .line 263
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 3

    const-string v0, "FcstFaceSettingsHelper"

    const-string v1, "Enable Face lock!"

    .line 542
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {p0, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "face disabled by MDM policy"

    .line 544
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 547
    :cond_0
    invoke-static {p0, p2}, Lcom/samsung/android/settings/knox/KnoxUtils;->getTwoFactorValue(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string p0, "Face is not allowed because two-step is set as lock type"

    .line 548
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v0, 0x100

    .line 551
    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    return-void
.end method

.method public static setFaceOpenEyes(Landroid/content/Context;ZI)V
    .locals 2

    .line 301
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v0

    const-string v1, "FcstFaceSettingsHelper"

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_open_eyes"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 304
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setFaceOpenEyes: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "setFaceOpenEyes: Not support Face Open eyes"

    .line 306
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setFaceStayOnLockScreen(Landroid/content/Context;ZI)V
    .locals 2

    .line 210
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result v0

    const-string v1, "FcstFaceSettingsHelper"

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_stay_on_lock_screen"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 213
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setFaceStayOnLockScreen: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "setFaceStayOnLockScreen: NOT support Stay on Lock screen"

    .line 215
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setFaceWearGlasses(Landroid/content/Context;ZI)V
    .locals 1

    .line 636
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "face_wear_glasses"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static setTouchDynamics(Landroid/content/Context;Z)V
    .locals 2

    .line 510
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getTDSetupState(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 517
    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->sendTDbroadcast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x6

    .line 520
    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->sendTDbroadcast(Landroid/content/Context;I)V

    goto :goto_1

    .line 512
    :cond_2
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.cmfa.framework.LAUNCH_TD_SETUP"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.cmfa.framework"

    .line 513
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 514
    invoke-static {v0}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_1
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

.method public static showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "FcstFaceSettingsHelper"

    const-string p1, "Activity is null. Skip SensorErrorDialog"

    .line 561
    invoke-static {p0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 565
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 566
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 567
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 569
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/android/settings/R$string;->sec_face_setupwizard_error_unable_to_process_popup_title:I

    .line 570
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 571
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    sget-object v1, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$$ExternalSyntheticLambda0;

    .line 572
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 573
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 574
    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$$ExternalSyntheticLambda1;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 579
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
