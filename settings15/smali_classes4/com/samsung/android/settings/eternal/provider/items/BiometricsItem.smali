.class public final Lcom/samsung/android/settings/eternal/provider/items/BiometricsItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# virtual methods
.method public final followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getValue(Landroid/content/Context;Lcom/samsung/android/lib/episode/SourceInfo;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 8

    const/4 p0, 0x1

    const-string p2, "BiometricsItem"

    const-string/jumbo v0, "unknown key : "

    new-instance v1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v1, p3}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x2

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "/Settings/Biometrics/UnlockTransitionEffect"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x9

    goto/16 :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_e

    :sswitch_1
    const-string v4, "/Settings/Biometrics/FaceBrightenScreen"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_1

    :sswitch_2
    const-string v4, "/Settings/Biometrics/FingerStayOnLockScreen"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_3
    const-string v4, "/Settings/Biometrics/FingerShowAnimation"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto :goto_1

    :sswitch_4
    const-string v4, "/Settings/Biometrics/FingerShowIconAod"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_5
    const-string v4, "/Settings/Biometrics/FaceStayOnLockScreen"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, p0

    goto :goto_1

    :sswitch_6
    const-string v4, "/Settings/Biometrics/FaceRecognizeMask"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_7
    const-string v4, "/Settings/Biometrics/FingerShowIconLockscreen"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_8
    const-string v4, "/Settings/Biometrics/FaceOpenEyes"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_1

    :sswitch_9
    const-string v4, "/Settings/Biometrics/FingerTapToShowIcon"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    move v4, v5

    :goto_1
    const/16 v7, -0xa

    packed-switch v4, :pswitch_data_0

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :pswitch_0
    new-instance p3, Lcom/samsung/android/settings/biometrics/ScreenTransitionEffectPreferenceController;

    invoke-direct {p3, p1}, Lcom/samsung/android/settings/biometrics/ScreenTransitionEffectPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/samsung/android/settings/biometrics/ScreenTransitionEffectPreferenceController;->getAvailabilityStatus()I

    move-result p3

    if-nez p3, :cond_b

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetTransitionEffectValue()I

    move-result p3

    if-eq p3, v5, :cond_1

    goto :goto_2

    :cond_1
    move p3, p0

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_transition_effect"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    if-ne p3, p1, :cond_2

    goto :goto_3

    :cond_2
    move p0, v3

    :goto_3
    invoke-virtual {v1, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_d

    :pswitch_1
    invoke-static {p1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintEffectValue(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v5

    goto :goto_4

    :cond_3
    move p1, v3

    :goto_4
    if-ne v5, p1, :cond_4

    goto :goto_5

    :cond_4
    move p0, v3

    :goto_5
    invoke-virtual {v1, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_d

    :pswitch_2
    invoke-static {p1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintLockIconValue(Landroid/content/Context;I)I

    move-result p1

    if-ne v6, p1, :cond_5

    goto :goto_6

    :cond_5
    move p0, v3

    :goto_6
    invoke-virtual {v1, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto/16 :goto_d

    :pswitch_3
    sget-boolean p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    goto/16 :goto_c

    :pswitch_4
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIconAod()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-static {p1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintScreenOffIconAodDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne v6, p1, :cond_6

    goto :goto_7

    :cond_6
    move p0, v3

    :goto_7
    invoke-virtual {v1, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_d

    :pswitch_5
    invoke-static {p1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getStayOnLockScreen(Landroid/content/Context;I)Z

    move-result p1

    xor-int/2addr p0, p1

    invoke-virtual {v1, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_d

    :pswitch_6
    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-static {p1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceRecognizeMaskDbValue(Landroid/content/Context;I)I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    move p0, v3

    :goto_8
    invoke-virtual {v1, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_d

    :pswitch_7
    invoke-static {p1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceBrightenScreenDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne p0, p1, :cond_8

    goto :goto_9

    :cond_8
    move p0, v3

    :goto_9
    invoke-virtual {v1, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_d

    :pswitch_8
    invoke-static {p1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceStayOnLockScreenDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne p0, p1, :cond_9

    goto :goto_a

    :cond_9
    move p0, v3

    :goto_a
    invoke-virtual {v1, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_d

    :pswitch_9
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "face_open_eyes"

    invoke-static {p1, p3, v5, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p0, p1, :cond_a

    goto :goto_b

    :cond_a
    move p0, v3

    :goto_b
    invoke-virtual {v1, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)V

    goto :goto_d

    :cond_b
    :goto_c
    move p1, v7

    :goto_d
    if-eq p1, v7, :cond_c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_f
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x53b3e54c -> :sswitch_9
        -0x3ee56f80 -> :sswitch_8
        -0x3d7d2af3 -> :sswitch_7
        -0x2b84d19a -> :sswitch_6
        -0x1be5e39d -> :sswitch_5
        0x22477f00 -> :sswitch_4
        0x45984f07 -> :sswitch_3
        0x45ea7faf -> :sswitch_2
        0x76d48323 -> :sswitch_1
        0x79222321 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 6

    const-string p0, "BiometricsItem"

    const-string/jumbo p4, "unknown key : "

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/samsung/android/lib/episode/Scene;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v2, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {v2, p2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    iput-object v3, v2, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object p0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    iput-object p0, v2, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mResultType:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    sget-object p0, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    iput-object p0, v2, Lcom/samsung/android/lib/episode/SceneResult$Builder;->mErrorType:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    invoke-virtual {v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "/Settings/Biometrics/UnlockTransitionEffect"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x9

    goto/16 :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_8

    :sswitch_1
    const-string v3, "/Settings/Biometrics/FaceBrightenScreen"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v3, "/Settings/Biometrics/FingerStayOnLockScreen"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_3
    const-string v3, "/Settings/Biometrics/FingerShowAnimation"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_4
    const-string v3, "/Settings/Biometrics/FingerShowIconAod"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_5
    const-string v3, "/Settings/Biometrics/FaceStayOnLockScreen"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :sswitch_6
    const-string v3, "/Settings/Biometrics/FaceRecognizeMask"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_7
    const-string v3, "/Settings/Biometrics/FingerShowIconLockscreen"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_8
    const-string v3, "/Settings/Biometrics/FaceOpenEyes"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :sswitch_9
    const-string v3, "/Settings/Biometrics/FingerTapToShowIcon"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    packed-switch v3, :pswitch_data_0

    invoke-virtual {p4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "screen_transition_effect"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v4, :cond_2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    invoke-static {p1, v0, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintEffectValue(Landroid/content/Context;IZ)V

    goto/16 :goto_9

    :pswitch_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    sget-boolean p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    const-string p1, "FpstFingerprintSettingsUtils"

    const-string/jumbo p2, "setFingerprintScreenOffIconValue: not supported device"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLockIconValue(Landroid/content/Context;II)V

    goto/16 :goto_9

    :pswitch_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintScreenOffIconAodValue(Landroid/content/Context;II)V

    goto/16 :goto_9

    :pswitch_5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v5, :cond_3

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    invoke-static {p1, v0, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setStayOnLockScreen(Landroid/content/Context;IZ)V

    goto :goto_9

    :pswitch_6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v5, :cond_4

    goto :goto_4

    :cond_4
    move v5, v1

    :goto_4
    sget-boolean p2, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "face_recognize_mask"

    invoke-static {p1, p2, v5, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_9

    :pswitch_7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v5, :cond_5

    goto :goto_5

    :cond_5
    move v5, v1

    :goto_5
    invoke-static {p1, v0, v5}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;IZ)V

    goto :goto_9

    :pswitch_8
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v5, :cond_6

    goto :goto_6

    :cond_6
    move v5, v1

    :goto_6
    invoke-static {p1, v0, v5}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;IZ)V

    goto :goto_9

    :pswitch_9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v5, :cond_7

    goto :goto_7

    :cond_7
    move v5, v1

    :goto_7
    invoke-static {p1, v0, v5}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    invoke-virtual {v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x53b3e54c -> :sswitch_9
        -0x3ee56f80 -> :sswitch_8
        -0x3d7d2af3 -> :sswitch_7
        -0x2b84d19a -> :sswitch_6
        -0x1be5e39d -> :sswitch_5
        0x22477f00 -> :sswitch_4
        0x45984f07 -> :sswitch_3
        0x45ea7faf -> :sswitch_2
        0x76d48323 -> :sswitch_1
        0x79222321 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
