.class public Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SuwFaceUsefulFeature.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mIsFinished:Z = false


# instance fields
.field private display:Landroid/view/Display;

.field private mBrightenScreen:Landroid/widget/RelativeLayout;

.field private mBrightenScreenDivider:Landroid/view/View;

.field private mBrightenScreenSwitch:Landroid/widget/Switch;

.field private mContext:Landroid/content/Context;

.field private mFasterRecognition:Landroid/widget/RelativeLayout;

.field private mFasterRecognitionSwitch:Landroid/widget/Switch;

.field private mNextBtn:Landroid/widget/Button;

.field private mOpenEyes:Landroid/widget/RelativeLayout;

.field private mOpenEyesDivider:Landroid/view/View;

.field private mOpenEyesSwitch:Landroid/widget/Switch;

.field private mOrientation:I

.field private mSetupwizardButtonContainer:Landroid/widget/RelativeLayout;

.field private mTotalContent:Landroid/widget/LinearLayout;

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$4YzKeqrO5zoweDPd9nn9xNGrN-I(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->lambda$setFaceUsefulFeaturePreference$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HqFe2V_7gZReZA2GyBYbMmAT39s(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->lambda$setFaceUsefulFeaturePreference$5(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jy_CWnTYAHcDPZiW26CxnYgw8Do(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->lambda$setFaceUsefulFeaturePreference$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z5LpMZb47SlPJwACrdVXcUTla5I(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->lambda$setFaceUsefulFeaturePreference$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bGjvhKfIGMf98rEryHR_DCppi80(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->lambda$setFaceUsefulFeaturePreference$1(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$y7K0LAegLGQax9GRfa5KYuGNSjA(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->lambda$setFaceUsefulFeaturePreference$3(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private adjustNextButtonFontScale()V
    .locals 4

    .line 283
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 284
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getAdjustedFontScale(FF)F

    move-result v0

    .line 286
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mNextBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 287
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/settings/R$dimen;->sec_biometrics_guide_common_continue_button_text_size:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-virtual {v1, v2, p0}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private finishFaceUsefulFeature(I)V
    .locals 2

    const-string v0, "FcstSuwFaceUsefulFeature"

    const-string v1, "finishFaceUsefulFeature"

    .line 323
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 324
    sput-boolean v0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mIsFinished:Z

    .line 325
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 326
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private isSupportLargeScreenMode()Z
    .locals 2

    .line 375
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 376
    iget v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x19b

    if-le v0, v1, :cond_0

    iget p0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-lt p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setFaceUsefulFeaturePreference$0(Landroid/view/View;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceFasterRecognitionBooleanValue(Landroid/content/Context;I)Z

    move-result p1

    const-string v0, "FcstSuwFaceUsefulFeature"

    if-eqz p1, :cond_0

    const-string p1, "Set FasterRecognition disable"

    .line 148
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFasterRecognitionSwitch:Landroid/widget/Switch;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "Set FasterRecognition enable"

    .line 151
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFasterRecognitionSwitch:Landroid/widget/Switch;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setFaceUsefulFeaturePreference$1(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceFasterRecognitionValue(Landroid/content/Context;ZI)V

    if-eqz p2, :cond_0

    .line 160
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_on:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_off:I

    .line 161
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFasterRecognitionSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setFaceUsefulFeaturePreference$2(Landroid/view/View;)V
    .locals 1

    .line 173
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceOpenEyesBooleanValue(Landroid/content/Context;I)Z

    move-result p1

    const-string v0, "FcstSuwFaceUsefulFeature"

    if-eqz p1, :cond_0

    const-string p1, "Set OpenEyes disable"

    .line 174
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "Set OpenEyes enable"

    .line 177
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setFaceUsefulFeaturePreference$3(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 185
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;ZI)V

    if-eqz p2, :cond_0

    .line 186
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_on:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_off:I

    .line 187
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$setFaceUsefulFeaturePreference$4(Landroid/view/View;)V
    .locals 1

    .line 199
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceBrightenScreenBooleanValue(Landroid/content/Context;I)Z

    move-result p1

    const-string v0, "FcstSuwFaceUsefulFeature"

    if-eqz p1, :cond_0

    const-string p1, "Set BrightenScreen disable"

    .line 200
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "Set BrightenScreen enable"

    .line 203
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setFaceUsefulFeaturePreference$5(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 211
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;ZI)V

    if-eqz p2, :cond_0

    .line 212
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_on:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_common_off:I

    .line 213
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Switch;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private measureContentFrame()V
    .locals 6

    .line 338
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 339
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_settings_side_width_ratio:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 340
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 342
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 343
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$dimen;->sec_settings_content_width_ratio:I

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 344
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 346
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->isSupportLargeScreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    invoke-static {p0}, Lcom/android/settings/Utils;->getContentFrameWidthRatio(Landroid/content/Context;)F

    move-result v1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 351
    :cond_0
    sget v2, Lcom/android/settings/R$id;->content_start_pane:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 352
    sget v3, Lcom/android/settings/R$id;->content_end_pane:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 353
    sget v4, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 360
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 361
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 362
    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 363
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 368
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 369
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "measureContentFrame : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FcstSuwFaceUsefulFeature"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private sendFaceFeatureLogging()V
    .locals 10

    const-string v0, "FcstSuwFaceUsefulFeature"

    const-string v1, "sendFaceFeatureLogging"

    .line 292
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceFasterRecognition()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_1

    .line 296
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mContext:Landroid/content/Context;

    const/16 v5, 0x20e8

    const/16 v6, 0x20e3

    .line 299
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFasterRecognitionSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    const-wide/16 v8, 0x0

    .line 296
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 302
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 303
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mContext:Landroid/content/Context;

    const/16 v5, 0x20e8

    const/16 v6, 0x20ff

    .line 306
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_1

    :cond_2
    move-object v7, v3

    :goto_1
    const-wide/16 v8, 0x0

    .line 303
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 309
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 310
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mContext:Landroid/content/Context;

    const/16 v5, 0x20e8

    const/16 v6, 0x20ee

    .line 313
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_4

    move-object v7, v2

    goto :goto_2

    :cond_4
    move-object v7, v3

    :goto_2
    const-wide/16 v8, 0x0

    .line 310
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string v1, "sendFaceFeatureLogging: error fail to send  SA logging"

    .line 317
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_5
    :goto_3
    return-void
.end method

.method private setFaceUsefulFeaturePreference()V
    .locals 5

    const-string v0, "FcstSuwFaceUsefulFeature"

    const-string v1, "setFaceUsefulFeaturePreference"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mTotalContent:Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mTotalContent:Landroid/widget/LinearLayout;

    .line 141
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_biometrics_common_suw_background_content_color:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 143
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceFasterRecognition()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceFasterRecognitionBooleanValue(Landroid/content/Context;I)Z

    move-result v0

    .line 145
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFasterRecognition:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 146
    new-instance v3, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFasterRecognitionSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_2

    .line 157
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFasterRecognitionSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFasterRecognition:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceOpenEyesBooleanValue(Landroid/content/Context;I)Z

    move-result v0

    .line 171
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyes:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    .line 172
    new-instance v3, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_5

    .line 183
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyes:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :cond_5
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 196
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceBrightenScreenBooleanValue(Landroid/content/Context;I)Z

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreen:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_6

    .line 198
    new-instance v2, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_9

    .line 209
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2

    .line 217
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 218
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result v0

    if-nez v0, :cond_8

    .line 219
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceFasterRecognition()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 223
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mNextBtn:Landroid/widget/Button;

    if-eqz v0, :cond_a

    .line 228
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_biometrics_common_done:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mNextBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->adjustNextButtonFontScale()V

    :cond_a
    return-void
.end method

.method private static setFinishValue(Z)V
    .locals 2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFinishValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstSuwFaceUsefulFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sput-boolean p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mIsFinished:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 272
    sget v0, Lcom/android/settings/R$id;->next_button:I

    if-ne p1, v0, :cond_0

    const-string p1, "FcstSuwFaceUsefulFeature"

    const-string v0, "nextButton"

    .line 273
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mContext:Landroid/content/Context;

    const/16 v0, 0x20e8

    const/16 v1, 0x20e9

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;II)V

    const/4 p1, -0x1

    .line 277
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->finishFaceUsefulFeature(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "FcstSuwFaceUsefulFeature"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "intent is null"

    .line 73
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->finishFaceUsefulFeature(I)V

    return-void

    .line 78
    :cond_0
    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mContext:Landroid/content/Context;

    const-string v2, "window"

    .line 79
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->display:Landroid/view/Display;

    .line 80
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOrientation:I

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User ID : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mUserId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget p1, Lcom/android/settings/R$string;->bio_face_recognition_title:I

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 87
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->finishFaceUsefulFeature(I)V

    return-void

    .line 91
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 92
    sget p1, Lcom/android/settings/R$layout;->sec_face_useful_features_suw_tablet:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 99
    :cond_2
    sget p1, Lcom/android/settings/R$id;->sud_layout_header:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :cond_3
    sget p1, Lcom/android/settings/R$id;->title_text:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 105
    sget v0, Lcom/android/settings/R$id;->main_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 106
    sget v2, Lcom/android/settings/R$id;->content_layout:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    if-nez v2, :cond_4

    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    sget p1, Lcom/android/settings/R$color;->sec_biometrics_common_suw_background_content_color:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 116
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->sec_biometrics_disclaimer_padding_suw:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 117
    invoke-virtual {v2, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 109
    :cond_5
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->finishFaceUsefulFeature(I)V

    return-void

    .line 119
    :cond_6
    sget p1, Lcom/android/settings/R$layout;->sec_face_useful_features_suw:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->measureContentFrame()V

    .line 123
    :goto_1
    sget p1, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mTotalContent:Landroid/widget/LinearLayout;

    .line 124
    sget p1, Lcom/android/settings/R$id;->face_useful_feature_fast_recognition_speed_up:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFasterRecognition:Landroid/widget/RelativeLayout;

    .line 125
    sget p1, Lcom/android/settings/R$id;->tile_divider_open_eyes:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesDivider:Landroid/view/View;

    .line 126
    sget p1, Lcom/android/settings/R$id;->tile_divider_brighten_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenDivider:Landroid/view/View;

    .line 127
    sget p1, Lcom/android/settings/R$id;->face_useful_feature_open_eyes:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyes:Landroid/widget/RelativeLayout;

    .line 128
    sget p1, Lcom/android/settings/R$id;->face_useful_feature_birghten_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreen:Landroid/widget/RelativeLayout;

    .line 129
    sget p1, Lcom/android/settings/R$id;->face_useful_feature_fast_recognition_speed_up_switch:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mFasterRecognitionSwitch:Landroid/widget/Switch;

    .line 130
    sget p1, Lcom/android/settings/R$id;->face_useful_feature_open_eyes_switch:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOpenEyesSwitch:Landroid/widget/Switch;

    .line 131
    sget p1, Lcom/android/settings/R$id;->face_useful_feature_birghten_screen_switch:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mBrightenScreenSwitch:Landroid/widget/Switch;

    .line 132
    sget p1, Lcom/android/settings/R$id;->setupwizard_bottom_button_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mSetupwizardButtonContainer:Landroid/widget/RelativeLayout;

    .line 133
    sget v0, Lcom/android/settings/R$id;->next_button:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mNextBtn:Landroid/widget/Button;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FcstSuwFaceUsefulFeature"

    const-string v1, "onDestroy"

    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->sendFaceFeatureLogging()V

    const/4 v0, 0x0

    .line 265
    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->setFinishValue(Z)V

    .line 266
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mIsFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstSuwFaceUsefulFeature"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mOrientation:I

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    const-string v0, "Orientation changed"

    .line 248
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sput-boolean v3, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mIsFinished:Z

    .line 252
    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->mIsFinished:Z

    if-nez v0, :cond_1

    .line 253
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "biometrics_settings_destroy"

    .line 254
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 255
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 258
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 236
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "FcstSuwFaceUsefulFeature"

    const-string v1, "onResume"

    .line 237
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceUsefulFeature;->setFaceUsefulFeaturePreference()V

    return-void
.end method
