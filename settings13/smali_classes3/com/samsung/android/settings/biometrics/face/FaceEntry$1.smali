.class Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "FaceEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/face/FaceEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 407
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 425
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 427
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->-$$Nest$sfgetmUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledFace(Landroid/content/Context;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v1, "key_facelock_remove"

    .line 430
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "key_facelock_unlock"

    .line 431
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "key_face_about_face_recognition"

    .line 432
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "key_facelock_register"

    .line 434
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-nez v0, :cond_1

    .line 438
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "key_facelock_register_alternative"

    .line 439
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "key_facelock_remove_alternative"

    .line 440
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v0, :cond_3

    .line 444
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, "key_facelock_stay_on_lock_screen"

    .line 445
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez v0, :cond_5

    .line 449
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-string v1, "key_face_recognize_mask"

    .line 450
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v0, :cond_7

    .line 454
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    const-string v1, "key_facelock_open_eyes"

    .line 455
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez v0, :cond_9

    .line 459
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    const-string v1, "key_facelock_brighten_screen"

    .line 460
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-nez v0, :cond_b

    .line 463
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->-$$Nest$sfgetmUserId()I

    move-result v0

    .line 464
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 465
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isAdvancedAccessControlEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    const-string v0, "key_facelock_advanced_access_control"

    .line 466
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isTouchDynamicsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_c

    const-string p1, "key_facelock_touch_dynamics_pref"

    .line 468
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 410
    invoke-static {p1}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-string p1, "android.intent.action.MAIN"

    .line 414
    iput-object p1, p0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    const-string p1, "com.android.settings"

    .line 415
    iput-object p1, p0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    const-string p1, "com.samsung.android.settings.biometrics.face.FaceEntry"

    .line 416
    iput-object p1, p0, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    .line 417
    sget p1, Lcom/android/settings/R$xml;->sec_face_settings:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 419
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 476
    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 480
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->isPageSearchEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
