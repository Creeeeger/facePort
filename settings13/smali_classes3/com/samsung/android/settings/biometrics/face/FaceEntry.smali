.class public Lcom/samsung/android/settings/biometrics/face/FaceEntry;
.super Landroid/app/Activity;
.source "FaceEntry.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mUserId:I


# instance fields
.field private key:Ljava/lang/String;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mIdentifyFace:Z

.field private mIsAfw:Z

.field private mIsFromFragment:Z

.field private mIsKnox:Z

.field private mIsNeedFmmPopup:Z

.field private mIsRelativeLink:Z

.field private mIsWaitingResult:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreviousStage:Ljava/lang/String;

.field private mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field private mSensorId:I

.field private mToken:[B


# direct methods
.method public static synthetic $r8$lambda$XbTtcK8UER7uDdctnmyCCW1y1U8(Lcom/samsung/android/settings/biometrics/face/FaceEntry;Landroid/content/Intent;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->lambda$onActivityResult$0(Landroid/content/Intent;IIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmUserId()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 407
    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    .line 65
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->key:Ljava/lang/String;

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mToken:[B

    const-wide/16 v1, 0x0

    .line 67
    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mChallenge:J

    const/4 v1, -0x1

    .line 68
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mSensorId:I

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    .line 74
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsAfw:Z

    .line 76
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsKnox:Z

    .line 79
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIdentifyFace:Z

    .line 80
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsRelativeLink:Z

    .line 83
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsNeedFmmPopup:Z

    .line 88
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private synthetic lambda$onActivityResult$0(Landroid/content/Intent;IIJ)V
    .locals 0

    .line 243
    iput p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mSensorId:I

    .line 244
    iput-wide p4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mChallenge:J

    .line 245
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    sget p3, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-static {p2, p1, p3, p4, p5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mToken:[B

    .line 246
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 248
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mToken:[B

    if-nez p1, :cond_0

    const-string p1, "FcstFaceEntry"

    const-string p2, "CONFIRM_REQUEST: token = NULL"

    .line 249
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    sget p2, Lcom/android/settings/R$string;->sec_face_error_message_sensor_error:I

    .line 251
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    .line 250
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Landroid/hardware/face/FaceManager;

    sget p2, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    .line 255
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 256
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->startFragment(Landroid/content/Context;)V

    goto :goto_0

    .line 258
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->runRegister()V

    :goto_0
    return-void
.end method

.method private launchConfirmLock()V
    .locals 5

    const-string v0, "FcstFaceEntry"

    const-string v1, "launchConfirmLock "

    .line 287
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 289
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    .line 291
    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 v3, 0x65

    .line 292
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 293
    invoke-virtual {v3, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 294
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 295
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 296
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 298
    sget v1, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_0

    .line 299
    invoke-virtual {v2, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 302
    :cond_0
    invoke-virtual {v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ConfirmLock Fail"

    .line 303
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    .line 305
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private runRegister()V
    .locals 7

    const-string v0, "FcstFaceEntry"

    const-string v1, "There is no enrolled face. Run FaceLockSettings!!"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "always_finish_activities"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_always_finish_activities:I

    new-array v4, v2, [Ljava/lang/Object;

    sget v5, Lcom/android/settings/R$string;->immediately_destroy_activities:I

    .line 193
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 192
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {p0, v0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 194
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    sget v0, Lcom/android/settings/R$string;->sec_biometrics_fullscreen_register_face:I

    .line 196
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 198
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 200
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings"

    const-string v5, "com.samsung.android.settings.biometrics.face.FaceLockSettings"

    .line 201
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    const-string v5, "face_register_external"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_face_settings_entry"

    .line 204
    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    .line 206
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    const-string v5, "previousStage"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mToken:[B

    const-string v5, "hw_auth_token"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 209
    iget-wide v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mChallenge:J

    const-string v6, "challenge"

    invoke-virtual {v1, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 210
    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mSensorId:I

    const-string v5, "sensor_id"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x20000000

    .line 211
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsAfw:Z

    const-string v5, "isAfw"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 214
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsKnox:Z

    const-string v5, "is_knox"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    sget v4, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    const-string v5, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsRelativeLink:Z

    const-string v5, "relative_link"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsFromFragment:Z

    const-string v5, "from_biometric_fragment"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    :try_start_0
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsFromFragment:Z

    if-eqz v4, :cond_3

    const/16 v3, 0x66

    .line 221
    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 222
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 225
    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "runRegister : Activity Not Found !"

    .line 229
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startFragment(Landroid/content/Context;)V
    .locals 5

    const-string v0, "FcstFaceEntry"

    if-nez p1, :cond_0

    const-string p1, "startFragment : context is null"

    .line 354
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 356
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 357
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->key:Ljava/lang/String;

    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mToken:[B

    if-eqz v2, :cond_1

    const-string v3, "hw_auth_token"

    .line 360
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 361
    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mChallenge:J

    const-string v4, "challenge"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 362
    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mSensorId:I

    const-string v3, "sensor_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 365
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsAfw:Z

    const-string v3, "isAfw"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 367
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsKnox:Z

    const-string v3, "is_knox"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 369
    sget v2, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 370
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIdentifyFace:Z

    const-string v3, "identifyFace"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    const-string v3, "needTurnOnCheck"

    .line 371
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 372
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsNeedFmmPopup:Z

    const-string v3, "need_fmm_popup"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 374
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsRelativeLink:Z

    const-string v3, ":settings:show_fragment_args"

    if-eqz v2, :cond_2

    const-string p1, "from relative link"

    .line 375
    invoke-static {v0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v2, "com.android.settings.Settings$FaceSettingsActivity"

    .line 377
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v2, "relative_link"

    .line 379
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 383
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsFromFragment:Z

    if-eqz v0, :cond_3

    .line 384
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 385
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 386
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 388
    :cond_3
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    .line 389
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 390
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 392
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setExtras(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/16 v0, 0x2347

    .line 394
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->bio_face_recognition_title:I

    .line 395
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 396
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 400
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====onActivityResult : requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceEntry"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    const/4 v0, -0x1

    const/16 v1, 0x65

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_5

    .line 242
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Landroid/hardware/face/FaceManager;

    sget p2, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/settings/biometrics/face/FaceEntry$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceEntry;Landroid/content/Intent;)V

    invoke-virtual {p1, p2, v0}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x66

    if-ne p1, v1, :cond_4

    .line 267
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz p1, :cond_3

    sget p2, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    const-string p1, ":settings:show_fragment_args"

    .line 269
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "hw_auth_token"

    .line 271
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mToken:[B

    const-wide/16 p2, -0x1

    const-string v1, "challenge"

    .line 272
    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mChallenge:J

    const-string p2, "sensor_id"

    .line 273
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mSensorId:I

    const-string p2, "need_fmm_popup"

    .line 274
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsNeedFmmPopup:Z

    .line 277
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->startFragment(Landroid/content/Context;)V

    goto :goto_0

    .line 279
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 282
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 310
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p0, "FcstFaceEntry"

    const-string p1, "=====onConfigurationChanged"

    .line 311
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FcstFaceEntry"

    const-string v1, "=====onCreate()"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    .line 95
    new-instance v1, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    .line 97
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isWinnerProduct()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 99
    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->setSplitViewFullScScreen(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "Fail to split view to full screen"

    .line 100
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 104
    :cond_0
    sget v1, Lcom/android/settings/R$string;->bio_face_recognition_title:I

    invoke-static {p0, v1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 109
    :cond_1
    new-instance v1, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 111
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_face_error_title_retry:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "FaceSettingsPreferenceController unsupported"

    .line 112
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 117
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "UCMKeyguard enabled"

    .line 118
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 123
    :cond_3
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 124
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez v1, :cond_4

    .line 125
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 127
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->key:Ljava/lang/String;

    .line 131
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v1

    if-nez v1, :cond_6

    const-string p1, "Not support bio face. finish this activity"

    .line 132
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 137
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_biometric_fragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsFromFragment:Z

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    .line 139
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isAfwWithoutKnox(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsAfw:Z

    .line 141
    sget v1, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsKnox:Z

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "previousStage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "relative_link"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsRelativeLink:Z

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsAfw : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsAfw:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsRelativeLink : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsRelativeLink:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez v1, :cond_7

    const-string p1, "Error. mFaceManager is null"

    .line 151
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 155
    :cond_7
    invoke-virtual {v1}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 156
    sget p1, Lcom/android/settings/R$string;->sec_face_error_message_sensor_error:I

    .line 157
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-static {p0, p1, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void

    :cond_8
    if-eqz p1, :cond_9

    const-string v0, "IsWaitingResult"

    .line 164
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    if-eqz p1, :cond_9

    return-void

    .line 170
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    const-string v0, "face_register_external"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->runRegister()V

    goto :goto_0

    .line 173
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p1, :cond_b

    sget v0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_b

    move v3, v1

    .line 174
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Landroid/hardware/face/FaceManager;

    sget v0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p1

    if-eqz p1, :cond_c

    if-eqz v3, :cond_c

    .line 175
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->startFragment(Landroid/content/Context;)V

    goto :goto_0

    :cond_c
    if-eqz v3, :cond_e

    .line 177
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 178
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 179
    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->launchConfirmLock()V

    goto :goto_0

    .line 181
    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->runRegister()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FcstFaceEntry"

    const-string v1, "=====onDestroy()"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "FcstFaceEntry"

    const-string v1, "onPause"

    .line 328
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 322
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string p0, "FcstFaceEntry"

    const-string v0, "onResume"

    .line 323
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FcstFaceEntry"

    const-string v1, "onSaveInstanceState"

    .line 315
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    const-string v1, "IsWaitingResult"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "FcstFaceEntry"

    const-string v1, "=====onStop()"

    .line 334
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 338
    sget v1, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    if-nez v0, :cond_0

    .line 339
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 342
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
