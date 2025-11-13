.class public Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SuwFaceStayOnLockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static mIsFinished:Z = false


# instance fields
.field private display:Landroid/view/Display;

.field private mContext:Landroid/content/Context;

.field private mImageContainerView:Landroid/view/View;

.field private mIsStayOnLockScreenEnabled:Z

.field private mNeedFaceUseFulFeature:Z

.field private mNextBtn:Landroid/widget/Button;

.field private mOrientation:I

.field private mSetupWizardButtonContainer:Landroid/widget/RelativeLayout;

.field private mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

.field private mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mUserId:I

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mIsStayOnLockScreenEnabled:Z

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mNeedFaceUseFulFeature:Z

    return-void
.end method

.method private adjustNextButtonFontScale()V
    .locals 4

    .line 208
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 209
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getAdjustedFontScale(FF)F

    move-result v0

    .line 211
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mNextBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 212
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

.method private finishFaceStayOnLockScreen(I)V
    .locals 2

    const-string v0, "FcstSuwFaceStayOnLockScreen"

    const-string v1, "finishFaceStayOnLockScreen"

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 252
    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->setFinishValue(Z)V

    .line 253
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private isSupportLargeScreenMode()Z
    .locals 2

    .line 303
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 304
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

.method private measureContentFrame()V
    .locals 6

    .line 266
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 267
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->sec_settings_side_width_ratio:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 268
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 270
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 271
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$dimen;->sec_settings_content_width_ratio:I

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 272
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    .line 274
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->isSupportLargeScreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    invoke-static {p0}, Lcom/android/settings/Utils;->getContentFrameWidthRatio(Landroid/content/Context;)F

    move-result v1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 279
    :cond_0
    sget v2, Lcom/android/settings/R$id;->content_start_pane:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 280
    sget v3, Lcom/android/settings/R$id;->content_end_pane:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 281
    sget v4, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 288
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 289
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 290
    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 291
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 296
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 297
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
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

    const-string v0, "FcstSuwFaceStayOnLockScreen"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private static setFinishValue(Z)V
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFinishValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstSuwFaceStayOnLockScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sput-boolean p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mIsFinished:Z

    return-void
.end method

.method private setLottieAnimationView(Z)V
    .locals 4

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLottieAnimationView : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstSuwFaceStayOnLockScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 223
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 228
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 200
    sget v0, Lcom/android/settings/R$id;->next_button:I

    if-ne p1, v0, :cond_0

    const-string p1, "FcstSuwFaceStayOnLockScreen"

    const-string v0, "nextButton"

    .line 201
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 202
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->finishFaceStayOnLockScreen(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 70
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "FcstSuwFaceStayOnLockScreen"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "intent is null"

    .line 74
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->finishFaceStayOnLockScreen(I)V

    return-void

    .line 79
    :cond_0
    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mContext:Landroid/content/Context;

    const-string v2, "window"

    .line 80
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->display:Landroid/view/Display;

    .line 81
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mOrientation:I

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOrientation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mUserId:I

    const-string v2, "needFaceUseFulFeature"

    .line 85
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mNeedFaceUseFulFeature:Z

    .line 86
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mUserId:I

    invoke-static {p1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceStayOnLockScreenBooleanValue(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mIsStayOnLockScreenEnabled:Z

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate : userId "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mUserId:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget p1, Lcom/android/settings/R$string;->bio_face_recognition_title:I

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->finishFaceStayOnLockScreen(I)V

    return-void

    .line 95
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportFoldableDualDisplay()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 96
    sget p1, Lcom/android/settings/R$layout;->sec_face_stay_on_lock_screen_suw_tablet:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 100
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 103
    :cond_2
    sget p1, Lcom/android/settings/R$id;->sud_layout_header:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_3
    sget p1, Lcom/android/settings/R$id;->title_text:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 109
    sget v0, Lcom/android/settings/R$id;->main_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 110
    sget v2, Lcom/android/settings/R$id;->content_layout:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    if-nez v2, :cond_4

    goto :goto_0

    .line 117
    :cond_4
    sget v3, Lcom/android/settings/R$color;->sec_biometrics_common_suw_background_content_color:I

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 118
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$dimen;->sec_biometrics_disclaimer_padding_suw:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 120
    invoke-virtual {v2, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 113
    :cond_5
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->finishFaceStayOnLockScreen(I)V

    return-void

    .line 122
    :cond_6
    sget p1, Lcom/android/settings/R$layout;->sec_face_stay_on_lock_screen_suw:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->measureContentFrame()V

    .line 126
    :goto_1
    sget p1, Lcom/android/settings/R$id;->switch_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 127
    sget p1, Lcom/android/settings/R$id;->face_stay_on_lock_screen_image_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mImageContainerView:Landroid/view/View;

    const/16 v0, 0xf

    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 129
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mImageContainerView:Landroid/view/View;

    .line 130
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_biometrics_common_suw_background_content_color:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 129
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 131
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mImageContainerView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->face_stay_on_lock_screen_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    .line 132
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mImageContainerView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->face_stay_on_lock_screen_off_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    .line 133
    sget p1, Lcom/android/settings/R$id;->setupwizard_bottom_button_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mSetupWizardButtonContainer:Landroid/widget/RelativeLayout;

    .line 134
    sget v0, Lcom/android/settings/R$id;->next_button:I

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mNextBtn:Landroid/widget/Button;

    if-eqz p1, :cond_8

    .line 137
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->adjustNextButtonFontScale()V

    .line 139
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mNextBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mNeedFaceUseFulFeature:Z

    if-eqz p0, :cond_7

    .line 140
    sget p0, Lcom/android/settings/R$string;->sec_face_stay_on_lock_screen_button_next_text:I

    goto :goto_2

    :cond_7
    sget p0, Lcom/android/settings/R$string;->sec_face_stay_on_lock_screen_button_done_text:I

    .line 139
    :goto_2
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FcstSuwFaceStayOnLockScreen"

    const-string v1, "onDestroy"

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 193
    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->setFinishValue(Z)V

    .line 194
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 10

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mIsFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstSuwFaceStayOnLockScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mStayOnLockScreenVI:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mStayOnLockScreenOffVI:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 167
    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mOrientation:I

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    const-string v0, "Orientation changed"

    .line 168
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sput-boolean v3, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mIsFinished:Z

    goto :goto_1

    .line 171
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mContext:Landroid/content/Context;

    const/16 v5, 0x20f7

    const/16 v6, 0x2105

    .line 174
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mIsStayOnLockScreenEnabled:Z

    if-eqz v0, :cond_3

    const-string v0, "1"

    goto :goto_0

    :cond_3
    const-string v0, "0"

    :goto_0
    move-object v7, v0

    const-wide/16 v8, 0x0

    .line 171
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 178
    :goto_1
    sget-boolean v0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mIsFinished:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "biometrics_settings_destroy"

    .line 180
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 181
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 186
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "FcstSuwFaceStayOnLockScreen"

    const-string v1, "onResume"

    .line 146
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mIsStayOnLockScreenEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 153
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mIsStayOnLockScreenEnabled:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->setLottieAnimationView(Z)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 6

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSwitchChanged : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FcstSuwFaceStayOnLockScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mUserId:I

    invoke-static {p0, p2, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;ZI)V

    .line 239
    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mIsStayOnLockScreenEnabled:Z

    .line 241
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->setLottieAnimationView(Z)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/SuwFaceStayOnLockScreen;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    move-object v3, p0

    const-wide/16 v4, 0x0

    const/16 v1, 0x20f7

    const/16 v2, 0x2104

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    return-void
.end method
