.class Lcom/samsung/android/settings/biometrics/face/FaceSettings$3;
.super Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;
.source "FaceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/face/FaceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1127
    invoke-direct {p0}, Lcom/samsung/android/settings/logging/status/BaseStatusLoggingProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/logging/status/StatusData;",
            ">;"
        }
    .end annotation

    .line 1130
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1132
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1133
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 1137
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1139
    invoke-static {p1, v1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceUnlockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v1

    .line 1141
    new-instance v2, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v3, 0x20e1

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    .line 1142
    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    .line 1143
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const/16 v2, 0x20f6

    if-nez v1, :cond_0

    .line 1149
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v1

    goto :goto_0

    .line 1151
    :cond_0
    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceStayOnLockScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v1

    .line 1152
    new-instance v4, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v4, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v1

    .line 1153
    invoke-virtual {v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v1

    .line 1155
    :goto_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    .line 1160
    :try_start_0
    invoke-static {p1}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1162
    invoke-virtual {v2, v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_2

    .line 1167
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1169
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1172
    :cond_2
    new-instance v2, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v5, 0x2106

    invoke-direct {v2, v5}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v1

    .line 1173
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v2

    move v4, v1

    move-object v1, v2

    .line 1176
    :goto_1
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_2
    move v1, v4

    .line 1180
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x2100

    if-nez v1, :cond_4

    .line 1183
    new-instance v4, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v4, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    goto :goto_3

    .line 1185
    :cond_4
    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceOpenEyesBooleanValue(Landroid/content/Context;I)Z

    move-result v4

    .line 1186
    new-instance v5, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v5, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v2

    .line 1187
    invoke-virtual {v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v2

    .line 1189
    :goto_3
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x20e6

    if-nez v1, :cond_6

    .line 1196
    new-instance v1, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v1

    goto :goto_4

    .line 1198
    :cond_6
    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceBrightenScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v1

    .line 1199
    new-instance v3, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    invoke-direct {v3, v2}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object v1

    .line 1200
    invoke-virtual {v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object v1

    .line 1202
    :goto_4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1206
    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1207
    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceRecognizeMaskBooleanValue(Landroid/content/Context;I)Z

    move-result p1

    .line 1208
    new-instance v0, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    const/16 v1, 0x2107

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->setValue(I)Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;

    move-result-object p1

    .line 1209
    invoke-virtual {p1}, Lcom/samsung/android/settings/logging/status/StatusData$DataBuilder;->build()Lcom/samsung/android/settings/logging/status/StatusData;

    move-result-object p1

    .line 1210
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object p0
.end method
