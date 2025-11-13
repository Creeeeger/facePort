.class public final Lcom/samsung/android/settings/biometrics/face/FaceEntry$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 7

    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    sget v0, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isEnrolledFace(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    move-object v2, p0

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "key_facelock_remove"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_facelock_unlock"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "key_face_about_face_recognition"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "key_facelock_register"

    move-object v3, p0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string v2, "key_facelock_remove_alternative"

    const-string v3, "key_facelock_register_alternative"

    if-nez v0, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    sget v4, Lcom/samsung/android/settings/biometrics/face/FaceEntry;->mUserId:I

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5, v4}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v4

    const-string v5, "FcstFaceSettingsHelper"

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_3

    const-string v1, "There is an enrolled Alternative Face."

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string v1, "faceList is null or size is 0"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :goto_1
    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    if-nez v0, :cond_5

    sget-boolean v1, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    goto :goto_3

    :cond_5
    const-string v1, "key_facelock_stay_on_lock_screen"

    move-object v2, p0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    const-string p1, "key_face_recognize_mask"

    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-nez v0, :cond_8

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result p1

    if-nez p1, :cond_9

    :cond_8
    const-string p1, "key_facelock_open_eyes"

    move-object v1, p0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-nez v0, :cond_a

    sget-boolean p1, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    goto :goto_4

    :cond_a
    const-string p1, "key_facelock_brighten_screen"

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    return-object p0
.end method

.method public final getXmlResourcesToIndex(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-static {p1}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-string p1, "android.intent.action.MAIN"

    iput-object p1, p0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    const-string p1, "com.android.settings"

    iput-object p1, p0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    const-string p1, "com.samsung.android.settings.biometrics.face.FaceEntry"

    iput-object p1, p0, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    const p1, 0x7f170194

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    instance-of p0, p0, Lcom/android/settings/biometrics/combination/CombinedBiometricSearchIndexProvider;

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
