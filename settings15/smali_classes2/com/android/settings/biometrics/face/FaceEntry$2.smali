.class Lcom/samsung/android/settings/biometrics/face/FaceEntry$2;
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

    .line 418
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

    .line 436
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 438
    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledFace(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v1, "key_facelock_remove"

    .line 441
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "key_facelock_unlock"

    .line 442
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "key_face_about_face_recognition"

    .line 443
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "key_facelock_register"

    .line 445
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-nez v0, :cond_1

    .line 449
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "key_facelock_register_alternative"

    .line 450
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "key_facelock_remove_alternative"

    .line 451
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v0, :cond_3

    .line 455
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string v1, "key_facelock_stay_on_lock_screen"

    .line 456
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez v0, :cond_5

    .line 460
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceFasterRecognition()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-string v1, "key_facelock_recognition_speed_up"

    .line 461
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v0, :cond_7

    .line 465
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    const-string v1, "key_facelock_open_eyes"

    .line 466
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez v0, :cond_9

    .line 470
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    const-string v1, "key_facelock_brighten_screen"

    .line 471
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-nez v0, :cond_b

    .line 475
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isSupportAboutBiometricsUnlockMenu(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    const-string v1, "key_face_about_biometrics_unlock"

    .line 476
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    if-nez v0, :cond_d

    .line 480
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->access$200()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 481
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isAdvancedAccessControlEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    const-string v0, "key_facelock_advanced_access_control"

    .line 482
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isTouchDynamicsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "key_facelock_touch_dynamics_pref"

    .line 484
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
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

    .line 421
    invoke-static {p1}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-string p1, "android.intent.action.MAIN"

    .line 425
    iput-object p1, p0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    const-string p1, "com.android.settings"

    .line 426
    iput-object p1, p0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    const-string p1, "com.samsung.android.settings.biometrics.face.FaceEntry"

    .line 427
    iput-object p1, p0, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    .line 428
    sget p1, Lcom/android/settings/R$xml;->sec_face_settings:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 430
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

    .line 492
    new-instance v0, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 496
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->isPageSearchEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
