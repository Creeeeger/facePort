.class public Lcom/samsung/android/settings/biometrics/face/FaceEntry;
.super Landroid/app/Activity;
.source "FaceEntry.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mUserId:I


# instance fields
.field private key:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

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

.field private mToken:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 418
    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceEntry$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    .line 63
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->key:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mToken:[B

    const/4 v1, 0x0

    .line 65
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    .line 70
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsAfw:Z

    .line 72
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsKnox:Z

    .line 75
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIdentifyFace:Z

    .line 76
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 78
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsRelativeLink:Z

    .line 79
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsNeedFmmPopup:Z

    .line 84
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/biometrics/face/FaceEntry;)[B
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mToken:[B

    return-object p0
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/biometrics/face/FaceEntry;[B)[B
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mToken:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/biometrics/face/FaceEntry;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 58
    sget v0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/biometrics/face/FaceEntry;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/biometrics/face/FaceEntry;Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->startFragment(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/biometrics/face/FaceEntry;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->runRegister()V

    return-void
.end method

.method private launchChooseOrConfirmLock()V
    .locals 5

    const-string v0, "FcstFaceEntry"

    const-string v1, "launchConfirmLock "

    .line 302
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 304
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    .line 306
    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 v3, 0x65

    .line 307
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 308
    invoke-virtual {v3, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 309
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 310
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 311
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 313
    sget v1, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_0

    .line 314
    invoke-virtual {v2, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 317
    :cond_0
    invoke-virtual {v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ConfirmLock Fail"

    .line 318
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 319
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    .line 320
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    .line 321
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private runRegister()V
    .locals 6

    const-string v0, "FcstFaceEntry"

    const-string v1, "There is no enrolled face. Run FaceLockSettings!!"

    .line 200
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "always_finish_activities"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_always_finish_activities:I

    new-array v4, v2, [Ljava/lang/Object;

    sget v5, Lcom/android/settings/R$string;->immediately_destroy_activities:I

    .line 205
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 204
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {p0, v0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 206
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    sget v0, Lcom/android/settings/R$string;->sec_biometrics_fullscreen_register_face:I

    .line 208
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 212
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings"

    const-string v5, "com.samsung.android.settings.biometrics.face.FaceLockSettings"

    .line 213
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    const-string v5, "face_register_external"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "key_face_settings_entry"

    .line 216
    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    .line 218
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    const-string v5, "previousStage"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mToken:[B

    const-string v5, "hw_auth_token"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 v4, 0x20000000

    .line 221
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 222
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsAfw:Z

    const-string v5, "isAfw"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsKnox:Z

    const-string v5, "is_knox"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 226
    sget v4, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    const-string v5, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsRelativeLink:Z

    const-string v5, "relative_link"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsFromFragment:Z

    const-string v5, "from_biometric_fragment"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 230
    :try_start_0
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsFromFragment:Z

    if-eqz v4, :cond_3

    const/16 v3, 0x66

    .line 231
    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 232
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    goto :goto_0

    .line 234
    :cond_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 235
    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    .line 236
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "runRegister : Activity Not Found !"

    .line 239
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startFragment(Landroid/content/Context;)V
    .locals 5

    const-string v0, "FcstFaceEntry"

    if-nez p1, :cond_0

    const-string p0, "startFragment : context is null"

    .line 370
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 372
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 373
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->key:Ljava/lang/String;

    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mToken:[B

    if-eqz v2, :cond_1

    const-string v3, "hw_auth_token"

    .line 376
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 379
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsAfw:Z

    const-string v3, "isAfw"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 381
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsKnox:Z

    const-string v3, "is_knox"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 383
    sget v2, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 384
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIdentifyFace:Z

    const-string v3, "identifyFace"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    const-string v3, "needTurnOnCheck"

    .line 385
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 386
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsNeedFmmPopup:Z

    const-string v3, "need_fmm_popup"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 387
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_show_multi_pane_layout"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 388
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsRelativeLink:Z

    const-string v3, ":settings:show_fragment_args"

    if-eqz v2, :cond_2

    const-string p1, "from relative link"

    .line 389
    invoke-static {v0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v2, "com.android.settings.Settings$FaceSettingsActivity"

    .line 391
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "relative_link"

    .line 393
    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 394
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 395
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 397
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsFromFragment:Z

    if-eqz v0, :cond_3

    .line 398
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 399
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 400
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 401
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 403
    :cond_3
    new-instance p0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    .line 404
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 405
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x2347

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->bio_face_recognition_title:I

    .line 407
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 246
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

    .line 247
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_6

    .line 252
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    new-instance p2, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceEntry;Landroid/content/Intent;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll(Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;)J

    goto :goto_0

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz p1, :cond_1

    .line 278
    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 279
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    .line 282
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x66

    if-ne p1, v0, :cond_5

    .line 285
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz p1, :cond_4

    sget p2, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    const-string p1, ":settings:show_fragment_args"

    .line 287
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "hw_auth_token"

    .line 289
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mToken:[B

    const-string p2, "need_fmm_popup"

    .line 290
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsNeedFmmPopup:Z

    .line 293
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->startFragment(Landroid/content/Context;)V

    .line 295
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 297
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 326
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p0, "FcstFaceEntry"

    const-string p1, "=====onConfigurationChanged"

    .line 327
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FcstFaceEntry"

    const-string v1, "=====onCreate()"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    .line 91
    new-instance v1, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    .line 93
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isWinnerProduct()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 95
    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->setSplitViewFullScScreen(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "Fail to split view to full screen"

    .line 96
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 100
    :cond_0
    sget v1, Lcom/android/settings/R$string;->bio_face_recognition_title:I

    invoke-static {p0, v1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 105
    :cond_1
    new-instance v1, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 107
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_face_error_title_retry:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "FaceSettingsPreferenceController unsupported"

    .line 108
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 113
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "UCMKeyguard enabled"

    .line 114
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 119
    :cond_3
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 120
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v1, :cond_4

    .line 121
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 123
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

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->key:Ljava/lang/String;

    .line 127
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v1

    if-nez v1, :cond_6

    const-string p1, "Not support bio face. finish this activity"

    .line 128
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 133
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_biometric_fragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsFromFragment:Z

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isAfw"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsAfw:Z

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_knox"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsKnox:Z

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
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "previousStage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "relative_link"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsRelativeLink:Z

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsAfw : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsAfw:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsRelativeLink : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsRelativeLink:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v1, :cond_7

    const-string p1, "Error. mFaceManager is null"

    .line 147
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 151
    :cond_7
    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_8

    .line 152
    const-string p1, "Face recognition sensor error. Try again later."

    const/4 v0, 0x1

    .line 152
    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void

    .line 158
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_9

    const-string v1, "IsWaitingResult"

    .line 162
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    if-eqz p1, :cond_9

    return-void

    .line 168
    :cond_9
    sget p1, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    .line 170
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result p1

    if-nez p1, :cond_c

    .line 171
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsFromFragment:Z

    if-nez p1, :cond_a

    .line 172
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isSupportMultiPane(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 173
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->launchChooseOrConfirmLock()V

    goto :goto_0

    .line 175
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->runRegister()V

    :goto_0
    return-void

    .line 179
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mPreviousStage:Ljava/lang/String;

    const-string v1, "face_register_external"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 180
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p1, :cond_d

    sget v1, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "Face exist but non-secure"

    .line 181
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->runRegister()V

    goto :goto_1

    :cond_d
    const-string p1, "Face already registered and secure!"

    .line 184
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    .line 189
    :cond_e
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsFromFragment:Z

    if-nez p1, :cond_10

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isSupportMultiPane(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_2

    .line 192
    :cond_f
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->startFragment(Landroid/content/Context;)V

    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 190
    :cond_10
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->launchChooseOrConfirmLock()V

    :goto_3
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FcstFaceEntry"

    const-string v1, "=====onDestroy()"

    .line 362
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "FcstFaceEntry"

    const-string v1, "onPause"

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 338
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string p0, "FcstFaceEntry"

    const-string v0, "onResume"

    .line 339
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FcstFaceEntry"

    const-string v1, "onSaveInstanceState"

    .line 331
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    const-string v1, "IsWaitingResult"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 333
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "FcstFaceEntry"

    const-string v1, "=====onStop()"

    .line 350
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 354
    sget v1, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mIsWaitingResult:Z

    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 358
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
