.class public Lcom/samsung/android/settings/eternal/provider/items/BiometricsItem;
.super Ljava/lang/Object;
.source "BiometricsItem.java"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 7

    const-string p0, "BiometricsItem"

    .line 34
    new-instance p3, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {p3, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    .line 40
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "/Settings/Biometrics/FaceBrightenScreen"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :sswitch_1
    const-string v2, "/Settings/Biometrics/FingerShowAnimation"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_2
    const-string v2, "/Settings/Biometrics/FingerShowIconAod"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "/Settings/Biometrics/FaceStayOnLockScreen"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_1

    :sswitch_4
    const-string v2, "/Settings/Biometrics/FaceRecognizeMask"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_5
    const-string v2, "/Settings/Biometrics/FaceOpenEyes"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_1

    :sswitch_6
    const-string v2, "/Settings/Biometrics/FingerTapToShowIcon"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    move v2, v4

    :goto_1
    const/16 v6, -0xa

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_a

    .line 67
    :pswitch_0
    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintEffectValue(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_2

    :cond_1
    move p1, v1

    :goto_2
    if-ne v4, p1, :cond_2

    goto :goto_3

    :cond_2
    move v5, v1

    .line 70
    :goto_3
    invoke-virtual {p3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_b

    .line 63
    :pswitch_1
    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintScreenOffIconDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne v5, p1, :cond_3

    goto :goto_4

    :cond_3
    move v5, v1

    .line 64
    :goto_4
    invoke-virtual {p3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_b

    .line 59
    :pswitch_2
    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintScreenOffIconAodDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne v3, p1, :cond_4

    goto :goto_5

    :cond_4
    move v5, v1

    .line 60
    :goto_5
    invoke-virtual {p3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_b

    .line 55
    :pswitch_3
    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceRecognizeMaskDbValue(Landroid/content/Context;I)I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_6

    :cond_5
    move v5, v1

    .line 56
    :goto_6
    invoke-virtual {p3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_b

    .line 51
    :pswitch_4
    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceBrightenScreenDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne v5, p1, :cond_6

    goto :goto_7

    :cond_6
    move v5, v1

    .line 52
    :goto_7
    invoke-virtual {p3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_b

    .line 47
    :pswitch_5
    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceStayOnLockScreenDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne v5, p1, :cond_7

    goto :goto_8

    :cond_7
    move v5, v1

    .line 48
    :goto_8
    invoke-virtual {p3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_b

    .line 42
    :pswitch_6
    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceOpenEyesDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne v5, p1, :cond_8

    goto :goto_9

    :cond_8
    move v5, v1

    .line 44
    :goto_9
    invoke-virtual {p3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_b

    .line 73
    :goto_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown key : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v6

    :goto_b
    if-eq p1, v6, :cond_9

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_c
    return-object p3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x53b3e54c -> :sswitch_6
        -0x3ee56f80 -> :sswitch_5
        -0x2b84d19a -> :sswitch_4
        -0x1be5e39d -> :sswitch_3
        0x22477f00 -> :sswitch_2
        0x45984f07 -> :sswitch_1
        0x76d48323 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isValid(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 5

    const-string p0, "BiometricsItem"

    .line 89
    invoke-virtual {p3}, Lcom/samsung/android/lib/episode/Scene;->getValue()Ljava/lang/String;

    move-result-object p3

    .line 90
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p4

    .line 92
    new-instance v0, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    .line 95
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    sget-object p0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v0, p0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 97
    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    .line 98
    invoke-virtual {v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 102
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "/Settings/Biometrics/FaceBrightenScreen"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "/Settings/Biometrics/FingerShowAnimation"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_2
    const-string v2, "/Settings/Biometrics/FingerShowIconAod"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "/Settings/Biometrics/FaceStayOnLockScreen"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :sswitch_4
    const-string v2, "/Settings/Biometrics/FaceRecognizeMask"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_5
    const-string v2, "/Settings/Biometrics/FaceOpenEyes"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :sswitch_6
    const-string v2, "/Settings/Biometrics/FingerTapToShowIcon"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    .line 135
    :pswitch_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 134
    :goto_2
    invoke-static {p1, v4, p4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintEffectValue(Landroid/content/Context;ZI)V

    goto/16 :goto_9

    .line 129
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v1

    .line 128
    :goto_3
    invoke-static {p1, v4, p4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintScreenOffIconValue(Landroid/content/Context;ZI)V

    goto/16 :goto_9

    .line 125
    :pswitch_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 124
    invoke-static {p1, p2, p4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintScreenOffIconAodValue(Landroid/content/Context;II)V

    goto/16 :goto_9

    .line 120
    :pswitch_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v4, :cond_4

    goto :goto_4

    :cond_4
    move v4, v1

    .line 119
    :goto_4
    invoke-static {p1, v4, p4}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceRecognizeMask(Landroid/content/Context;ZI)V

    goto :goto_9

    .line 115
    :pswitch_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v4, :cond_5

    goto :goto_5

    :cond_5
    move v4, v1

    .line 114
    :goto_5
    invoke-static {p1, v4, p4}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;ZI)V

    goto :goto_9

    .line 110
    :pswitch_5
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v4, :cond_6

    goto :goto_6

    :cond_6
    move v4, v1

    .line 109
    :goto_6
    invoke-static {p1, v4, p4}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;ZI)V

    goto :goto_9

    .line 105
    :pswitch_6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v4, :cond_7

    goto :goto_7

    :cond_7
    move v4, v1

    .line 104
    :goto_7
    invoke-static {p1, v4, p4}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;ZI)V

    goto :goto_9

    .line 139
    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown key : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_9
    invoke-virtual {v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x53b3e54c -> :sswitch_6
        -0x3ee56f80 -> :sswitch_5
        -0x2b84d19a -> :sswitch_4
        -0x1be5e39d -> :sswitch_3
        0x22477f00 -> :sswitch_2
        0x45984f07 -> :sswitch_1
        0x76d48323 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
