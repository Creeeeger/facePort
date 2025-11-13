.class public Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "BiometricsDisclaimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static FONT_SCALE_LARGE:F = 1.3f


# instance fields
.field protected mBiometricsDisclaimerTotal:Landroid/widget/RelativeLayout;

.field protected mBiometricsIconView:Landroid/widget/ImageView;

.field protected mBiometricsTitleTextView:Landroid/widget/TextView;

.field protected mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mContinueButtonArea:Landroid/widget/LinearLayout;

.field protected mContinueEventId:I

.field private mFromSettingsOption:Z

.field private mIsFaceExpanded:Z

.field protected mIsFinished:Z

.field private mIsSecured:Z

.field protected mIsWaitConfirmLock:Z

.field private mKnoxIcon:Landroid/widget/FrameLayout;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMainGuideTextView:Landroid/widget/TextView;

.field private mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

.field private mMoreAboutFaceSpinnerImage:Landroid/widget/ImageView;

.field private mMoreAboutFaceSpinnerText:Landroid/widget/TextView;

.field private mMoreAboutGuideFace:Landroid/widget/RelativeLayout;

.field private mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

.field private mMoreAboutGuideFingerprint:Landroid/widget/RelativeLayout;

.field private mNeedExpand:Z

.field private mOriginFontScale:F

.field protected mRequestBiometricsType:I

.field protected mScreenId:Ljava/lang/String;

.field protected mSensorId:I

.field protected mTitleArea:Landroid/widget/LinearLayout;

.field protected mToken:[B

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsSecured:Z

    .line 46
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsFinished:Z

    .line 47
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mNeedExpand:Z

    .line 69
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mToken:[B

    const-wide/16 v0, -0x1

    .line 70
    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mChallenge:J

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mSensorId:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 74
    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mOriginFontScale:F

    return-void
.end method

.method private adjustFontScale()V
    .locals 4

    .line 474
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "font scale "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricsDisclaimerActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget v1, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mOriginFontScale:F

    .line 478
    sget v3, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->FONT_SCALE_LARGE:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    const-string v1, "Font scale is bigger than Large! Change font scale"

    .line 479
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    sget v1, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->FONT_SCALE_LARGE:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 481
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v2, "window"

    .line 482
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 483
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 484
    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iput v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 485
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method private getInDisplayFingerprintDisclaimerTips()V
    .locals 5

    const-string v0, "string"

    const-string v1, "com.samsung.android.biometrics.app.setting"

    .line 463
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 464
    sget v3, Lcom/android/settings/R$id;->biometrics_disclaimer_more_desc_fingerprint_1_textView:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 465
    sget v4, Lcom/android/settings/R$id;->biometrics_disclaimer_more_desc_fingerprint_2_textView:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v4, "fingerprint_dialog_make_sure_that_you_dont_use"

    .line 466
    invoke-virtual {v2, v4, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "fingerprint_dialog_if_you_use_a_screen_protector"

    .line 467
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

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInDisplayFingerprintDisclaimerTips : exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BiometricsDisclaimerActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isSupportSecuredByKnox()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private rollbackFontScale()V
    .locals 4

    .line 490
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mOriginFontScale:F

    sget v1, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->FONT_SCALE_LARGE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rollback Font Scale to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mOriginFontScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricsDisclaimerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 493
    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mOriginFontScale:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 494
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v2, "window"

    .line 495
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 496
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 497
    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iput v2, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 498
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method private setBiometricsDisclaimerLayout()V
    .locals 3

    .line 223
    sget v0, Lcom/android/settings/R$layout;->sec_biometrics_disclaimer_layout:I

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    .line 226
    sget v0, Lcom/android/settings/R$id;->biometrics_disclaimer_total:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsDisclaimerTotal:Landroid/widget/RelativeLayout;

    .line 229
    sget v0, Lcom/android/settings/R$id;->biometrics_disclaimer_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mTitleArea:Landroid/widget/LinearLayout;

    .line 230
    sget v0, Lcom/android/settings/R$id;->biometrics_disclaimer_icon_image:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconView:Landroid/widget/ImageView;

    .line 231
    sget v0, Lcom/android/settings/R$id;->biometrics_disclaimer_title_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsTitleTextView:Landroid/widget/TextView;

    .line 234
    sget v0, Lcom/android/settings/R$id;->biometrics_disclaimer_main_guide_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    .line 237
    sget v0, Lcom/android/settings/R$id;->biometrics_disclaimer_more_desc_face:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFace:Landroid/widget/RelativeLayout;

    .line 238
    sget v0, Lcom/android/settings/R$id;->biometrics_disclaimer_more_desc_fingerprint:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFingerprint:Landroid/widget/RelativeLayout;

    .line 239
    sget v0, Lcom/android/settings/R$id;->biometrics_disclaimer_more_desc_layout_face:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    .line 240
    sget v0, Lcom/android/settings/R$id;->biometrics_disclaimer_more_about_face:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    .line 241
    sget v0, Lcom/android/settings/R$id;->sec_biometrics_disclaimer_more_about_text_face:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerText:Landroid/widget/TextView;

    .line 242
    sget v0, Lcom/android/settings/R$id;->biometrics_disclaimer_more_about_image_face:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerImage:Landroid/widget/ImageView;

    .line 243
    sget v0, Lcom/android/settings/R$id;->continueButtonContainer:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueButtonArea:Landroid/widget/LinearLayout;

    .line 244
    sget v0, Lcom/android/settings/R$id;->knox_icon:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mKnoxIcon:Landroid/widget/FrameLayout;

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerText:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 254
    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v2, 0x100

    if-ne v0, v2, :cond_2

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    const/16 v2, 0x20d9

    invoke-static {v0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getSaLogIdByDisplayType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenId:Ljava/lang/String;

    const/16 v0, 0x20da

    .line 256
    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueEventId:I

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 258
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    const/16 v2, 0x2037

    invoke-static {v0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getSaLogIdByDisplayType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenId:Ljava/lang/String;

    const/16 v0, 0x2038

    .line 259
    iput v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueEventId:I

    .line 262
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-nez v0, :cond_4

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v2, "Hide the action bar"

    .line 263
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->hideAppBar(Z)V

    .line 266
    sget v0, Lcom/android/settings/R$id;->round_corner_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    .line 268
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setBiometricsIconAndDescription()V

    .line 273
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->adjustFontScale()V

    return-void
.end method

.method private setBiometricsIconAndDescription()V
    .locals 8

    .line 330
    :try_start_0
    sget v0, Lcom/android/settings/R$id;->continue_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0, v1}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 335
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_6

    .line 336
    sget v0, Lcom/android/settings/R$id;->disclaimer_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    if-eqz v0, :cond_1

    .line 338
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mTitleArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueButtonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    sget v0, Lcom/android/settings/R$id;->title_margin_top:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 346
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :cond_2
    sget v0, Lcom/android/settings/R$id;->title_margin_bottom:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 351
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 354
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/android/settings/R$dimen;->sec_biometrics_disclaimer_option_padding:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 355
    sget v6, Lcom/android/settings/R$id;->biometrics_disclaimer_body:I

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 357
    invoke-virtual {v6, v0, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 360
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->semIsPopOver()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 361
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsDisclaimerTotal:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v2, v0, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsDisclaimerTotal:Landroid/widget/RelativeLayout;

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->semSetRoundedCorners(I)V

    .line 363
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsDisclaimerTotal:Landroid/widget/RelativeLayout;

    sget v7, Lcom/android/settings/R$color;->sec_biometrics_guide_common_round_background:I

    .line 364
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getColor(I)I

    move-result v7

    .line 363
    invoke-virtual {v0, v6, v7}, Landroid/widget/RelativeLayout;->semSetRoundedCornerColor(II)V

    .line 365
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsDisclaimerTotal:Landroid/widget/RelativeLayout;

    sget v6, Lcom/android/settings/R$color;->sec_biometrics_guide_common_guide_background:I

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 368
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsDisclaimerTotal:Landroid/widget/RelativeLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$color;->sec_biometrics_choose_lock_header_description_color:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->isSupportSecuredByKnox()Z

    move-result v0

    if-nez v0, :cond_8

    .line 375
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mKnoxIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 378
    :cond_8
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, " "

    if-eq v0, v1, :cond_e

    const/16 v5, 0x100

    const-string v6, "BiometricsDisclaimerActivity"

    if-eq v0, v5, :cond_9

    :try_start_1
    const-string v0, "Wrong case"

    .line 424
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 400
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFingerprint:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 402
    sget v5, Lcom/android/settings/R$drawable;->sec_ic_biometric_type_face:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "setResource"

    .line 403
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsTitleTextView:Landroid/widget/TextView;

    sget v5, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_title_face:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_main_guide_face:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-nez v5, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->isSupportSecuredByKnox()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 408
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_main_guide_face_secured_by_knox:I

    .line 409
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mNeedExpand:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsFaceExpanded:Z

    if-eqz v0, :cond_c

    goto :goto_0

    .line 416
    :cond_c
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setMoreAboutFaceRecognition(Z)V

    goto :goto_1

    .line 414
    :cond_d
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setMoreAboutFaceRecognition(Z)V

    .line 419
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-eqz v0, :cond_12

    .line 420
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 380
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFace:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 382
    sget v1, Lcom/android/settings/R$drawable;->sec_ic_biometric_type_fingerprint:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 384
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mBiometricsTitleTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_main_guide_fingerprint:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-nez v1, :cond_10

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->isSupportSecuredByKnox()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_main_guide_fingerprint_secured_by_knox:I

    .line 388
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMainGuideTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isDisplaySensor()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 393
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->getInDisplayFingerprintDisclaimerTips()V

    goto :goto_2

    .line 395
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFingerprint:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 428
    :cond_12
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    iget p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mUserId:I

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->setShowDisclaimerValue(Landroid/content/Context;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 430
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private setMoreAboutFaceRecognition(Z)V
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    goto :goto_1

    .line 440
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsFaceExpanded:Z

    if-eqz p1, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    .line 442
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 443
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 444
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_expanded:I

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 446
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 447
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 448
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_collapsed:I

    .line 451
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinnerText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v0, ", "

    .line 453
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/settings/R$string;->button_tts:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutFaceSpinner:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setTitleForVoiceAssistant()V
    .locals 3

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v1, "setTitleForVoiceAssistant"

    .line 314
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 316
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_fingerprint_voice_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x100

    if-ne v1, v2, :cond_1

    .line 318
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_biometrics_disclaimer_face_voice_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p0, "setTitleForVoiceAssistant : Wrong case"

    .line 320
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected finishBiometricsDisclaimer(I)V
    .locals 4

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishBiometricsDisclaimer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricsDisclaimerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 504
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsFinished:Z

    .line 505
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 506
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mToken:[B

    if-eqz v1, :cond_0

    const-string v2, "hw_auth_token"

    .line 507
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 508
    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mChallenge:J

    const-string v3, "challenge"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 509
    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mSensorId:I

    const-string v2, "sensor_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 511
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 512
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v1, "onBackPressed"

    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->finishBiometricsDisclaimer(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 292
    sget v0, Lcom/android/settings/R$id;->biometrics_disclaimer_more_about_face:I

    if-ne p1, v0, :cond_1

    const-string p1, "BiometricsDisclaimerActivity"

    const-string v0, "More about face"

    .line 293
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mMoreAboutGuideFaceDesc:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 295
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setMoreAboutFaceRecognition(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 297
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setMoreAboutFaceRecognition(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClickContinue(Landroid/view/View;)V
    .locals 1

    const-string p1, "BiometricsDisclaimerActivity"

    const-string v0, "onClickContinue"

    .line 303
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenId:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContinueEventId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    :cond_1
    const/4 p1, -0x1

    .line 310
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->finishBiometricsDisclaimer(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 198
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 199
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setBiometricsDisclaimerLayout()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v1, "onCreate"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 86
    invoke-interface {v1}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v2

    .line 88
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v3

    const/16 v4, 0x8

    const/16 v5, 0x10

    if-eqz v3, :cond_0

    and-int/lit8 v3, v2, -0x11

    .line 89
    invoke-interface {v1, v5, v3}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    and-int/lit8 v2, v2, -0x9

    .line 92
    invoke-interface {v1, v4, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    goto :goto_0

    :cond_0
    or-int/lit8 v3, v2, 0x10

    .line 96
    invoke-interface {v1, v5, v3}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    or-int/2addr v2, v4

    .line 99
    invoke-interface {v1, v4, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    .line 105
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "BIOMETRICS_LOCK_TYPE"

    const/4 v3, 0x0

    .line 107
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request Biometrics Type : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    if-nez v2, :cond_2

    const-string p1, "Wrong Request"

    .line 111
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->finishBiometricsDisclaimer(I)V

    return-void

    .line 115
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setTitleForVoiceAssistant()V

    .line 118
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 120
    iget v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mUserId:I

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsSecured:Z

    .line 123
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mUserId:I

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User ID : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "fromSettingsOption"

    .line 126
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From SettingsOption : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "hw_auth_token"

    .line 129
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mToken:[B

    const-string v4, "challenge"

    const-wide/16 v5, -0x1

    .line 130
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mChallenge:J

    const-string v7, "sensor_id"

    const/4 v8, -0x1

    .line 131
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mSensorId:I

    if-eqz p1, :cond_3

    const-string v1, "is_face_expanded"

    .line 134
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsFaceExpanded:Z

    .line 135
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mToken:[B

    .line 136
    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mChallenge:J

    .line 137
    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mSensorId:I

    const-string v1, "IsWaitConfirmLock"

    .line 138
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsWaitConfirmLock:Z

    .line 141
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    iget v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mUserId:I

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getShowDisclaimerValue(Landroid/content/Context;II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mNeedExpand:Z

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNeedExpand : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mNeedExpand:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getAppId(I)I

    move-result p1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 145
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->finishBiometricsDisclaimer(I)V

    return-void

    .line 149
    :cond_4
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-eqz p1, :cond_5

    .line 150
    sget p1, Lcom/android/settings/R$style;->SecBiometricsCommonStyle:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 153
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->setBiometricsDisclaimerLayout()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v1, "onDestroy"

    .line 278
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 279
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsFinished:Z

    .line 280
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 204
    invoke-super {p0, p1}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onMultiWindowModeChanged(Z)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiWindowModeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BiometricsDisclaimerActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 207
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->finishBiometricsDisclaimer(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v1, "onPause"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsWaitConfirmLock:Z

    if-eqz v1, :cond_0

    .line 161
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onPause()V

    return-void

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->rollbackFontScale()V

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsSecured:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsFinished:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "onPause : Device is secured! So finish the activity."

    .line 170
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    const-string v2, "biometrics_settings_destroy"

    .line 172
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 177
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 182
    invoke-super {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->onResume()V

    const-string v0, "BiometricsDisclaimerActivity"

    const-string v1, "onResume"

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mFromSettingsOption:Z

    if-nez v0, :cond_0

    .line 187
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->removeSideMargin(Landroid/app/Activity;)V

    .line 190
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v1, 0x100

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 192
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mScreenId:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 214
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 215
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsFaceExpanded:Z

    const-string v1, "is_face_expanded"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 217
    iget-wide v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mChallenge:J

    const-string v2, "challenge"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 218
    iget v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mSensorId:I

    const-string v1, "sensor_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsWaitConfirmLock:Z

    const-string v0, "IsWaitConfirmLock"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
