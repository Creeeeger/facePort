.class public Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "SuwFaceUsefulFeature.java"


# instance fields
.field private mBrightenScreen:Landroid/view/View;

.field private mBrightenScreenSwitch:Landroid/widget/Switch;

.field private mOpenEyes:Landroid/view/View;

.field private mOpenEyesSwitch:Landroid/widget/Switch;

.field private mRecognizeWithMask:Landroid/view/View;

.field private mRecognizeWithMaskSwitch:Landroid/widget/Switch;

.field private mStayOnLockScreen:Landroid/view/View;

.field private mStayOnLockScreenSwitch:Landroid/widget/Switch;

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$6aT7tWYJF5mdqVgRztub5UCn8G8(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->lambda$setFaceUsefulFeaturePreference$8(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$6g0EBdWTrIsashG-4GpYeqUNnDQ(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ld78Jx6hDa4NFHp1OHm8vTYOxVY(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->lambda$setFaceUsefulFeaturePreference$6(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$MqQcxz_5PX86m_w0SyNMaa8robE(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->lambda$setFaceUsefulFeaturePreference$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Myb9oct3bNitXlyTQlhR2Tezm5U(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->lambda$setFaceUsefulFeaturePreference$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fTZGOczFyqeBYQs0KR6OIRsAd-s(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->lambda$setFaceUsefulFeaturePreference$4(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$njQBgT7BYy5hRVu_rEagwMQBUcs(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->lambda$setFaceUsefulFeaturePreference$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s1rmA0DHEd9O95llP6ezA87t-R8(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->lambda$setFaceUsefulFeaturePreference$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tMcKpUELnfFGjgYFI3i_2Vx5cKM(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->lambda$setFaceUsefulFeaturePreference$2(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 1

    const/16 p1, 0x20e8

    const/16 v0, 0x20e9

    .line 58
    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    const/4 p1, -0x1

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$setFaceUsefulFeaturePreference$1(Landroid/view/View;)V
    .locals 1

    .line 95
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceStayOnLockScreenBooleanValue(Landroid/content/Context;I)Z

    move-result p1

    const-string v0, "FcstSuwFaceUsefulFeature"

    if-eqz p1, :cond_0

    const-string p1, "Set StayOnLockScreen disable"

    .line 96
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "Set StayOnLockScreen enable"

    .line 99
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setFaceUsefulFeaturePreference$2(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 106
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, p2, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;ZI)V

    if-eqz p2, :cond_0

    .line 107
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_on:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_off:I

    .line 108
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setFaceUsefulFeaturePreference$3(Landroid/view/View;)V
    .locals 1

    .line 119
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceRecognizeMaskBooleanValue(Landroid/content/Context;I)Z

    move-result p1

    const-string v0, "FcstSuwFaceUsefulFeature"

    if-eqz p1, :cond_0

    const-string p1, "Set StayOnLockScreen disable"

    .line 120
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMaskSwitch:Landroid/widget/Switch;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "Set StayOnLockScreen enable"

    .line 123
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMaskSwitch:Landroid/widget/Switch;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setFaceUsefulFeaturePreference$4(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 130
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, p2, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceRecognizeMask(Landroid/content/Context;ZI)V

    if-eqz p2, :cond_0

    .line 131
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_on:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_off:I

    .line 132
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMaskSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setFaceUsefulFeaturePreference$5(Landroid/view/View;)V
    .locals 1

    .line 143
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceOpenEyesBooleanValue(Landroid/content/Context;I)Z

    move-result p1

    const-string v0, "FcstSuwFaceUsefulFeature"

    if-eqz p1, :cond_0

    const-string p1, "Set OpenEyes disable"

    .line 144
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "Set OpenEyes enable"

    .line 147
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setFaceUsefulFeaturePreference$6(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 154
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, p2, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;ZI)V

    if-eqz p2, :cond_0

    .line 155
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_on:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_off:I

    .line 156
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setFaceUsefulFeaturePreference$7(Landroid/view/View;)V
    .locals 1

    .line 167
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceBrightenScreenBooleanValue(Landroid/content/Context;I)Z

    move-result p1

    const-string v0, "FcstSuwFaceUsefulFeature"

    if-eqz p1, :cond_0

    const-string p1, "Set BrightenScreen disable"

    .line 168
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "Set BrightenScreen enable"

    .line 171
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setFaceUsefulFeaturePreference$8(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 178
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, p2, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;ZI)V

    if-eqz p2, :cond_0

    .line 179
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_on:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_off:I

    .line 180
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private sendFaceFeatureLogging()V
    .locals 10

    const-string v0, "FcstSuwFaceUsefulFeature"

    const-string v1, "sendFaceFeatureLogging"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_1

    const/16 v5, 0x20e8

    const/16 v6, 0x20f5

    .line 197
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    const-wide/16 v8, 0x0

    move-object v4, p0

    .line 194
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 200
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v5, 0x20e8

    const/16 v6, 0x2108

    .line 204
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMaskSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_1

    :cond_2
    move-object v7, v3

    :goto_1
    const-wide/16 v8, 0x0

    move-object v4, p0

    .line 201
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 207
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v5, 0x20e8

    const/16 v6, 0x20ff

    .line 211
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v7, v2

    goto :goto_2

    :cond_4
    move-object v7, v3

    :goto_2
    const-wide/16 v8, 0x0

    move-object v4, p0

    .line 208
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 214
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v5, 0x20e8

    const/16 v6, 0x20ee

    .line 218
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v7, v2

    goto :goto_3

    :cond_6
    move-object v7, v3

    :goto_3
    const-wide/16 v8, 0x0

    move-object v4, p0

    .line 215
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    const-string v1, "sendFaceFeatureLogging: error fail to send  SA logging"

    .line 222
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_7
    :goto_4
    return-void
.end method

.method private setFaceUsefulFeaturePreference()V
    .locals 3

    const-string v0, "FcstSuwFaceUsefulFeature"

    const-string v1, "setFaceUsefulFeaturePreference"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreen:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 93
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreen:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 104
    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceStayOnLockScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreen:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMask:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 117
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMask:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMaskSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    .line 128
    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceRecognizeMaskBooleanValue(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMaskSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMask:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyes:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 141
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyes:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_5

    .line 152
    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceOpenEyesBooleanValue(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2

    .line 160
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyes:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreen:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 165
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreen:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_7

    .line 176
    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceBrightenScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_3

    .line 184
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreen:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    .line 52
    sget p1, Lcom/android/settings/R$layout;->sec_face_useful_features_suw:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(IZ)V

    .line 54
    sget p1, Lcom/android/settings/R$string;->sec_face_useful_face_recognition_feature_title:I

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    .line 55
    sget p1, Lcom/android/settings/R$string;->sec_face_useful_face_recognition_feature_msg:I

    invoke-virtual {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setDescriptionText(I)V

    .line 57
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_continue_button_text:I

    new-instance v0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButton(ILandroid/view/View$OnClickListener;)V

    .line 65
    sget p1, Lcom/android/settings/R$id;->face_useful_feature_open_eyes:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyes:Landroid/view/View;

    .line 66
    sget p1, Lcom/android/settings/R$id;->face_useful_feature_open_eyes_switch:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    .line 67
    sget p1, Lcom/android/settings/R$id;->face_useful_feature_brighten_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreen:Landroid/view/View;

    .line 68
    sget p1, Lcom/android/settings/R$id;->face_useful_feature_brighten_screen_switch:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    .line 69
    sget p1, Lcom/android/settings/R$id;->face_useful_feature_stay_on_lock:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreen:Landroid/view/View;

    .line 70
    sget p1, Lcom/android/settings/R$id;->face_useful_feature_stay_on_lock_switch:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mStayOnLockScreenSwitch:Landroid/widget/Switch;

    .line 71
    sget p1, Lcom/android/settings/R$id;->face_recognize_with_mask:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMask:Landroid/view/View;

    .line 72
    sget p1, Lcom/android/settings/R$id;->face_useful_feature_recognize_with_mask_switch:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mRecognizeWithMaskSwitch:Landroid/widget/Switch;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FcstSuwFaceUsefulFeature"

    const-string v1, "onDestroy"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->sendFaceFeatureLogging()V

    .line 86
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 77
    invoke-super {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onResume()V

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->setFaceUsefulFeaturePreference()V

    return-void
.end method
