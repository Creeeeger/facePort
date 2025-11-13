.class public Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;
.super Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;
.source "NavigationBarSetupWizardSettings.java"


# instance fields
.field private mAnimationIdx:I

.field private mAnimationValues:[I

.field private mAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mButtonContainer:Landroid/widget/LinearLayout;

.field private mButtonRadioButton:Landroid/widget/RadioButton;

.field private mGestureContainer:Landroid/widget/LinearLayout;

.field private mGestureRadioButton:Landroid/widget/RadioButton;

.field private mHandler:Landroid/os/Handler;

.field private mLastAnimationIdx:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSideAndBottomAnimationDescs:[I

.field private mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public static synthetic $r8$lambda$P0r1S3-1AuTLrdGFEm9yuBHNqvw(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->lambda$initUI$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RGnjPS1UAHceAIvRQ5p1h7-sat4(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k3cTFtu2k87wiWd_Cu19XR4T3Jw(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmButtonRadioButton(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mButtonRadioButton:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGestureRadioButton(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mGestureRadioButton:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 4

    .line 29
    invoke-direct {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 42
    sget v2, Lcom/android/settings/R$string;->navigationbar_swipe_from_side_and_bottom_desc_3:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/settings/R$string;->navigationbar_swipe_from_side_and_bottom_desc_2:I

    const/4 v3, 0x1

    aput v2, v1, v3

    sget v2, Lcom/android/settings/R$string;->navigationbar_swipe_from_side_and_bottom_desc_1:I

    const/4 v3, 0x2

    aput v2, v1, v3

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSideAndBottomAnimationDescs:[I

    new-array v0, v0, [I

    .line 47
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimationValues:[I

    .line 51
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 78
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void

    :array_0
    .array-data 4
        0xab
        0x15e
        0x1e5
    .end array-data
.end method

.method private getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d2e

    return p0
.end method

.method private getSelectedValue()I
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mButtonRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private initUI()V
    .locals 5

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NavigationBarSetupWizardPref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mPrefs:Landroid/content/SharedPreferences;

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->samsung_setting_show_navi_suw_tips:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)V

    .line 133
    sget v0, Lcom/android/settings/R$string;->navigationbar_setupwizard_title:I

    invoke-virtual {p0, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setHeaderTitle(I)V

    .line 134
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 135
    sget v0, Lcom/android/settings/R$string;->next_button_label:I

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setPrimaryActionButton(ILandroid/view/View$OnClickListener;)V

    .line 150
    sget v0, Lcom/android/settings/R$id;->gesture_radio_btn:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mGestureRadioButton:Landroid/widget/RadioButton;

    .line 151
    sget v0, Lcom/android/settings/R$id;->button_radio_btn:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mButtonRadioButton:Landroid/widget/RadioButton;

    .line 152
    sget v0, Lcom/android/settings/R$id;->navigationbar_type_gesture_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mGestureContainer:Landroid/widget/LinearLayout;

    .line 153
    sget v0, Lcom/android/settings/R$id;->navigationbar_type_button_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mButtonContainer:Landroid/widget/LinearLayout;

    .line 154
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mGestureContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mButtonContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->updateRadioButtonState()V

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->registerAnimatorListener()V

    .line 161
    sget v1, Lcom/android/settings/R$id;->show_navigation_bar_img:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/settings/R$drawable;->samsung_setting_show_navi_suw_fold_cover:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 164
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 170
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 171
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/android/settings/R$dimen;->samsung_navigationbar_setupwizard_margin_middle_tablet:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v1, v2, p0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initUI$2(Landroid/view/View;)V
    .locals 3

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->getSelectedValue()I

    move-result p1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initUI() : Selected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavigationBarSetupWizardSettings"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NavigationBarType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_while_hidden"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->getMetricsCategory()I

    move-result v0

    int-to-long v1, p1

    const/16 p1, 0x1d3e

    invoke-static {v0, p1, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const/4 p1, -0x1

    .line 145
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 68
    iget v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimationIdx:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->updateDescription(I)V

    .line 69
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 52
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->getFrame()I

    move-result p1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimationValues:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-le p1, v2, :cond_2

    const/4 v2, 0x2

    aget v3, v0, v2

    if-lt p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 56
    aget v3, v0, v1

    if-gt p1, v3, :cond_1

    .line 57
    iput v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimationIdx:I

    goto :goto_1

    .line 59
    :cond_1
    iput v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimationIdx:I

    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    iput v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimationIdx:I

    .line 62
    :goto_1
    iget v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimationIdx:I

    iget v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mLastAnimationIdx:I

    if-eq v1, v2, :cond_4

    .line 63
    aget v0, v0, v2

    if-gt v0, p1, :cond_3

    .line 64
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 66
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 67
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 72
    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->updateDescription(I)V

    .line 75
    :cond_4
    :goto_2
    iget p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimationIdx:I

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mLastAnimationIdx:I

    return-void
.end method

.method private registerAnimatorListener()V
    .locals 2

    .line 178
    sget v0, Lcom/android/settings/R$id;->navigationbar_gesture_side_and_bottom_animation:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    .line 179
    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimationIdx:I

    .line 180
    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mLastAnimationIdx:I

    .line 181
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->updateDescription(I)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 184
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method private unregisterAnimatorListener()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllUpdateListeners()V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSwipeBottomAndSideAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method private updateDescription(I)V
    .locals 2

    .line 196
    sget v0, Lcom/android/settings/R$id;->navigationbar_swipe_from_side_and_bottom_textview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mSideAndBottomAnimationDescs:[I

    aget p0, p0, p1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateRadioButtonState()V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "NavigationBarType"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mGestureRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 204
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mButtonRadioButton:Landroid/widget/RadioButton;

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->getSelectedValue()I

    move-result v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed() Selected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavigationBarSetupWizardSettings"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "NavigationBarType"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 97
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 98
    sget p1, Lcom/android/settings/R$layout;->samsung_navigationbar_settings_setupwizard_fold_main:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(IZ)V

    goto :goto_1

    .line 100
    :cond_1
    sget p1, Lcom/android/settings/R$layout;->samsung_navigationbar_settings_setupwizard:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->setContentView(IZ)V

    .line 102
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->initUI()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 114
    invoke-super {p0}, Lcom/sec/android/secsetupwizardlib/SuwBaseActivity;->onResume()V

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->registerAnimatorListener()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 107
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSetupWizardSettings;->unregisterAnimatorListener()V

    return-void
.end method
