.class public Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FaceUsefulFeature.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceUsefulFeatureFragment"
.end annotation


# static fields
.field private static mIsFinished:Z = false


# instance fields
.field private mBrightenScreenSwitch:Landroidx/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mOpenEyesSwitch:Landroidx/preference/SwitchPreference;

.field private mRecognizeWithMask:Landroidx/preference/SwitchPreference;

.field private mStayOnLockScreen:Landroidx/preference/SwitchPreference;

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$c2VwsnK8VX0KHWGV8WOFvTsFylo(Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->lambda$addBottomButton$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsetFinishValue(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->setFinishValue(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    return-void
.end method

.method private addBottomButton()V
    .locals 4

    .line 226
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->sec_biometrics_common_bottom_bar_button:I

    const/4 v3, 0x0

    .line 228
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 230
    sget v2, Lcom/android/settings/R$id;->button_ok:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecBottomBarButton;

    .line 231
    new-instance v3, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 240
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x800005

    .line 241
    iput v2, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 242
    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    .line 243
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;
    .locals 2

    .line 129
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 135
    :cond_0
    sget v1, Lcom/android/settings/R$xml;->sec_face_useful_face_recognition_feature_preference:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->setFaceUsefulFeaturePreference()V

    return-object v0
.end method

.method private finishFaceUsefulFeature(I)V
    .locals 2

    const-string v0, "FcstFaceUsefulFeature"

    const-string v1, "finishFaceUsefulFeature"

    .line 286
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 287
    sput-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mIsFinished:Z

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method private synthetic lambda$addBottomButton$0(Landroid/view/View;)V
    .locals 2

    const-string p1, "FcstFaceUsefulFeature"

    const-string v0, "onClick : OK"

    .line 232
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    const/16 v0, 0x20e8

    const/16 v1, 0x20e9

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    const/4 p1, -0x1

    .line 236
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->finishFaceUsefulFeature(I)V

    return-void
.end method

.method private sendFaceFeatureLogging()V
    .locals 10

    const-string v0, "FcstFaceUsefulFeature"

    const-string v1, "sendFaceFeatureLogging"

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_1

    .line 252
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    const/16 v5, 0x20e8

    const/16 v6, 0x20f5

    .line 255
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    const-wide/16 v8, 0x0

    .line 252
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 258
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 259
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    const/16 v5, 0x20e8

    const/16 v6, 0x2108

    .line 262
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_1

    :cond_2
    move-object v7, v3

    :goto_1
    const-wide/16 v8, 0x0

    .line 259
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 265
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 266
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    const/16 v5, 0x20e8

    const/16 v6, 0x20ff

    .line 269
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mOpenEyesSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v7, v2

    goto :goto_2

    :cond_4
    move-object v7, v3

    :goto_2
    const-wide/16 v8, 0x0

    .line 266
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 272
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 273
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    const/16 v5, 0x20e8

    const/16 v6, 0x20ee

    .line 276
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mBrightenScreenSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_6

    move-object v7, v2

    goto :goto_3

    :cond_6
    move-object v7, v3

    :goto_3
    const-wide/16 v8, 0x0

    .line 273
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    const-string v1, "sendFaceFeatureLogging: error fail to send  SA logging"

    .line 280
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_7
    :goto_4
    return-void
.end method

.method private setFaceUsefulFeaturePreference()V
    .locals 6

    const-string v0, "FcstFaceUsefulFeature"

    const-string v1, "setFaceUsefulFeaturePreference"

    .line 141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "key_facelock_stay_on_lock_screen"

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    const-string v1, "key_face_recognize_mask"

    .line 144
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    const-string v2, "key_facelock_open_eyes"

    .line 145
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SwitchPreference;

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mOpenEyesSwitch:Landroidx/preference/SwitchPreference;

    const-string v3, "key_facelock_brighten_screen"

    .line 146
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/SwitchPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mBrightenScreenSwitch:Landroidx/preference/SwitchPreference;

    .line 148
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    if-eqz v4, :cond_0

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v0, v5}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceStayOnLockScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v1, v4}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceRecognizeMaskBooleanValue(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 159
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 162
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mOpenEyesSwitch:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceOpenEyesBooleanValue(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mOpenEyesSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    .line 166
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 169
    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mBrightenScreenSwitch:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceBrightenScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mBrightenScreenSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_3

    .line 173
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_3
    return-void
.end method

.method private static setFinishValue(Z)V
    .locals 2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFinishValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceUsefulFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sput-boolean p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mIsFinished:Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "FcstFaceUsefulFeature"

    if-nez p1, :cond_0

    const-string p1, "intent is null"

    .line 101
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->finishFaceUsefulFeature(I)V

    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User ID : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v2, Lcom/android/settings/R$string;->bio_face_recognition_title:I

    invoke-static {p1, v2, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->finishFaceUsefulFeature(I)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FcstFaceUsefulFeature"

    const-string v1, "onDestroy"

    .line 200
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->sendFaceFeatureLogging()V

    const/4 v0, 0x0

    .line 202
    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->setFinishValue(Z)V

    .line 203
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mIsFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceUsefulFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-boolean v0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mIsFinished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    const-string v2, "biometrics_settings_destroy"

    .line 191
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 192
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 195
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 207
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====onPreferenceChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceUsefulFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mStayOnLockScreen:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;ZI)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mRecognizeWithMask:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceRecognizeMask(Landroid/content/Context;ZI)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mOpenEyesSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;ZI)V

    goto :goto_0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mBrightenScreenSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 217
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->mUserId:I

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;ZI)V

    goto :goto_0

    :cond_3
    const-string p0, "Wrong preference"

    .line 219
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 179
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "FcstFaceUsefulFeature"

    const-string v1, "onResume"

    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->createPreferenceHierarchy()Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 119
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceUsefulFeature$FaceUsefulFeatureFragment;->addBottomButton()V

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    .line 124
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    const/4 p1, 0x0

    .line 125
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method
