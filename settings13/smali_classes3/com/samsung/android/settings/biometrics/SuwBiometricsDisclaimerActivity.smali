.class public Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "SuwBiometricsDisclaimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mIsFaceExpanded:Z

.field private mKnoxIcon:Landroid/view/View;

.field private mMainGuideTextView:Landroid/widget/TextView;

.field private mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

.field private mMoreAboutFaceSpinnerImage:Landroid/widget/ImageView;

.field private mMoreAboutFaceSpinnerText:Landroid/widget/TextView;

.field private mMoreAboutGuideFace:Landroid/widget/RelativeLayout;

.field private mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

.field private mMoreAboutGuideFingerprint:Landroid/widget/RelativeLayout;

.field private mRequestBiometricsType:I

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$_W2P7Ymx7CikSE2pqd3dVxBl1c8(Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->lambda$setButton$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bgfZz4-oF-YaTtdFojqyAeveSlw(Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->lambda$setButton$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mIsFaceExpanded:Z

    return-void
.end method

.method private synthetic lambda$setButton$0(Landroid/view/View;)V
    .locals 1

    .line 152
    iget p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    const/16 p1, 0x20d9

    .line 153
    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getSaLogIdByDisplayType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x20da

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x2037

    .line 156
    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getSaLogIdByDisplayType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2038

    goto :goto_0

    :cond_1
    const-string p1, ""

    const/4 v0, 0x0

    .line 159
    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    const/4 p1, -0x1

    .line 160
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$setButton$1(Landroid/view/View;)V
    .locals 8

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":settings:frp_supported"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 166
    invoke-static/range {v2 .. v7}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(ZZZZZZ)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object p1

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method private setBiometricsDescription()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerText:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 194
    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const-string v2, " "

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x100

    if-eq v0, v1, :cond_2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong Biometric type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuwBiometricsDisclaimer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutGuideFace:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 197
    sget v0, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_main_guide_face:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_main_guide_face_secured_by_knox:I

    .line 200
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mIsFaceExpanded:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->setMoreAboutFaceRecognition(Z)V

    goto :goto_0

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutGuideFingerprint:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 207
    sget v0, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_main_guide_fingerprint:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_main_guide_fingerprint_secured_by_knox:I

    .line 210
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isDisplaySensor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->setInDisplayFingerprintDisclaimerTips()V

    goto :goto_0

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutGuideFingerprint:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 225
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    iget v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mUserId:I

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->setShowDisclaimerValue(Landroid/content/Context;II)V

    return-void
.end method

.method private setButton()V
    .locals 2

    .line 149
    sget v0, Lcom/android/settings/R$string;->sec_biometrics_common_continue_button_text:I

    new-instance v1, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButton(ILandroid/view/View$OnClickListener;)V

    .line 164
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->LOCKSCREEN_SECURITY_HIDE_SKIP_SUW_BUTTON:Z

    if-nez v0, :cond_0

    .line 165
    sget v0, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_button_skip:I

    new-instance v1, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setSecondaryActionButton(ILandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private setIconTitle()V
    .locals 4

    .line 128
    iget v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 130
    :cond_0
    sget v0, Lcom/android/settings/R$drawable;->sec_ic_biometric_type_face:I

    .line 131
    sget v1, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_title_face:I

    goto :goto_0

    .line 134
    :cond_1
    sget v0, Lcom/android/settings/R$drawable;->sec_ic_biometric_type_fingerprint:I

    .line 135
    sget v1, Lcom/android/settings/R$string;->sec_fingerprint:I

    .line 142
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_biometrics_guide_common_icon_color_suw:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-virtual {p0, v1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    return-void
.end method

.method private setInDisplayFingerprintDisclaimerTips()V
    .locals 5

    const-string v0, "string"

    const-string v1, "com.samsung.android.biometrics.app.setting"

    .line 232
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 233
    sget v3, Lcom/android/settings/R$id;->biometrics_disclaimer_more_desc_fingerprint_1_textView:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 234
    sget v4, Lcom/android/settings/R$id;->biometrics_disclaimer_more_desc_fingerprint_2_textView:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v4, "fingerprint_dialog_make_sure_that_you_dont_use"

    .line 235
    invoke-virtual {v2, v4, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "fingerprint_dialog_if_you_use_a_screen_protector"

    .line 236
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInDisplayFingerprintDisclaimerTips : exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SuwBiometricsDisclaimer"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setMoreAboutFaceRecognition(Z)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mIsFaceExpanded:Z

    if-eqz p1, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    .line 106
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 107
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 108
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_expanded:I

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 110
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 111
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 112
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_collapsed:I

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v0, ", "

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->button_tts:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setTitleForVoiceAssistant()V
    .locals 3

    const-string v0, "SuwBiometricsDisclaimer"

    const-string v1, "setTitleForVoiceAssistant"

    .line 243
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 245
    sget v0, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_fingerprint_voice_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x100

    if-ne v1, v2, :cond_1

    .line 247
    sget v0, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_face_voice_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p0, "setTitleForVoiceAssistant : Wrong case"

    .line 249
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 88
    sget v0, Lcom/android/settings/R$id;->biometrics_disclaimer_more_about_face:I

    if-ne p1, v0, :cond_1

    const-string p1, "SuwBiometricsDisclaimer"

    const-string v0, "More about face"

    .line 89
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->setMoreAboutFaceRecognition(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->setMoreAboutFaceRecognition(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 45
    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mUserId:I

    const-string v1, "BIOMETRICS_LOCK_TYPE"

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mRequestBiometricsType:I

    if-eqz p1, :cond_0

    const-string v0, "is_face_expanded"

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mIsFaceExpanded:Z

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->setTitleForVoiceAssistant()V

    .line 57
    sget p1, Lcom/android/settings/R$layout;->sec_biometrics_disclaimer_suw:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(IZ)V

    .line 59
    sget p1, Lcom/android/settings/R$id;->biometrics_disclaimer_main_guide_text:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    .line 60
    sget p1, Lcom/android/settings/R$id;->biometrics_disclaimer_more_desc_face:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutGuideFace:Landroid/widget/RelativeLayout;

    .line 61
    sget p1, Lcom/android/settings/R$id;->biometrics_disclaimer_more_desc_fingerprint:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutGuideFingerprint:Landroid/widget/RelativeLayout;

    .line 62
    sget p1, Lcom/android/settings/R$id;->biometrics_disclaimer_more_desc_layout_face:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    .line 63
    sget p1, Lcom/android/settings/R$id;->biometrics_disclaimer_more_about_face:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    .line 64
    sget p1, Lcom/android/settings/R$id;->sec_biometrics_disclaimer_more_about_text_face:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerText:Landroid/widget/TextView;

    .line 65
    sget p1, Lcom/android/settings/R$id;->biometrics_disclaimer_more_about_image_face:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerImage:Landroid/widget/ImageView;

    .line 66
    sget p1, Lcom/android/settings/R$id;->knox_icon:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mKnoxIcon:Landroid/view/View;

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->setIconTitle()V

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->setButton()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onResume()V

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->setBiometricsDescription()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 82
    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/SuwBiometricsDisclaimerActivity;->mIsFaceExpanded:Z

    const-string v0, "is_face_expanded"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
