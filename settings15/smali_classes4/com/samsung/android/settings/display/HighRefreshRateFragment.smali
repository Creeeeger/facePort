.class public Lcom/samsung/android/settings/display/HighRefreshRateFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# instance fields
.field public mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

.field public mConfig:Landroid/content/res/Configuration;

.field public mContentObserver:Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;

.field public mContext:Landroid/content/Context;

.field public mFlags:I

.field public mIsLowPowerMotionSmoothness:Z

.field public mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

.field public mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

.field public mMode:I

.field public mNormalMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field public mSeamless:I

.field public mlayoutSecHrr:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    iput v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mIsLowPowerMotionSmoothness:Z

    return-void
.end method


# virtual methods
.method public final finishIfNotSupported()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canSetHighRefreshRate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ":settings:fragment_args_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sec_high_refresh_rate_powerful_on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "sec_high_refresh_rate_adaptive_on"

    if-nez v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    iget v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mSeamless:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_4

    const-string v1, "Adaptive option can only be used on main screen"

    goto :goto_2

    :cond_4
    const-string v1, "High option can only be used on sub screen"

    :goto_2
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_5
    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x28aa

    return p0
.end method

.method public final getRefreshRateMode()I
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const/16 v2, 0x3e7

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public final initUI$4()V
    .locals 11

    const v0, 0x7f1701ac

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "sec_high_refresh_rate_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    const-string/jumbo v1, "sec_high_refresh_rate_preview_power_saving"

    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/LayoutPreference;

    iget v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mSeamless:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "sec_high_refresh_rate_powerful_on"

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    goto :goto_1

    :cond_0
    const-string/jumbo v2, "sec_high_refresh_rate_adaptive_on"

    goto :goto_0

    :goto_1
    iput-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, v2, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    const-string/jumbo v2, "sec_high_refresh_rate_standard_off"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mNormalMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object p0, v2, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;

    iget-object v2, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a0d67

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f060738

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :cond_1
    iget-object v2, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a0d5f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v2, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a0d5c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/Rune;->supportHighRefreshRate(Landroid/content/Context;I)Z

    move-result v2

    const-string/jumbo v4, "sec_hrr_preview_120f_light.json"

    const-string/jumbo v5, "sec_hrr_preview_60f_light.json"

    const-string/jumbo v6, "sec_hrr_preview_120f_dark.json"

    const-string/jumbo v7, "sec_hrr_preview_60f_dark.json"

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v8, 0x7f0a0d62

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f142477

    const-string v7, "\n"

    invoke-static {v5, v6, v4, v7}, Lcom/android/settings/datetime/timezone/TimeZoneInfoPreferenceController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f142478    # 1.969151E38f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v7}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_3
    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0xac

    goto :goto_4

    :cond_5
    const/16 v4, 0x61

    :goto_4
    int-to-double v4, v4

    iget v6, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x4064000000000000L    # 160.0

    div-double/2addr v6, v8

    mul-double/2addr v6, v4

    double-to-int v4, v6

    iget-object v5, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->getContentFrameWidthRatio(Landroid/content/Context;)F

    move-result v5

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v5, v2

    float-to-int v2, v5

    iget-object v5, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070adf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070ade

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v4, v2

    const v5, 0x3fe51eb8    # 1.79f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v2, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_6
    iget-object v2, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a0d61

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v4, 0x7f0a0d5e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f142484

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mSeamless:I

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f142466

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f142475

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0d65

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mlayoutSecHrr:Landroid/view/View;

    iget-object v0, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0d64

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f142732

    const-string v3, "11"

    const-string v4, "99"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v1, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v2, v6, :cond_a

    if-eq v5, v6, :cond_a

    add-int/lit8 v5, v5, 0x2

    if-le v2, v5, :cond_8

    goto :goto_6

    :cond_8
    move v10, v5

    move v5, v2

    move v2, v10

    :goto_6
    const-string v6, ""

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_9
    new-instance v3, Lcom/samsung/android/settings/display/HighRefreshRateFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment$2;-><init>(Lcom/samsung/android/settings/display/HighRefreshRateFragment;)V

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v3, v5, v2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f0606d5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-direct {v3, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v3, v5, v2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_7
    const-string/jumbo v0, "sec_high_refresh_rate_apply"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14245e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    new-instance v1, Lcom/samsung/android/settings/display/HighRefreshRateFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/HighRefreshRateFragment;)V

    iput-object v1, v0, Lcom/samsung/android/settings/widget/SecButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->refreshUI$3()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->finishIfNotSupported()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateSeamlessType(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mSeamless:I

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mConfig:Landroid/content/res/Configuration;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->initUI$4()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const/16 v0, 0x3e7

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateSeamlessType(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mSeamless:I

    iget-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->finishIfNotSupported()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->initUI$4()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContentObserver:Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->getRefreshRateMode()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mSeamless:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eq v0, v2, :cond_0

    iput v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mSeamless:I

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eq v0, v3, :cond_2

    iput v3, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mNormalMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->refreshUI$3()V

    return-void
.end method

.method public final onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContentObserver:Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;-><init>(Lcom/samsung/android/settings/display/HighRefreshRateFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContentObserver:Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "low_power"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContentObserver:Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "pms_settings_refresh_rate_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContentObserver:Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mIsLowPowerMotionSmoothness:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mIsLowPowerMotionSmoothness:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->getRefreshRateMode()I

    move-result v0

    const-string v2, "adjustRefreshRateMode : currentRefreshRateMode = "

    const-string v3, "HighRefreshRateFragment"

    invoke-static {v0, v2, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->putIntRefreshRate(Landroid/content/Context;II)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adjustRefreshRateMode : change to 0 from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->refreshUI$3()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "HIGH_REFRESH_RATE_FLAG"

    iget v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "HIGH_REFRESH_RATE_MODE"

    iget p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    sget-object p0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const/4 p0, -0x1

    const-string v0, "PREV_DISPLAY_DEVICE_TYPE"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const-string v0, "PREV_DISPLAY_DEVICE_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    const-string v0, "HIGH_REFRESH_RATE_FLAG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    const-string v0, "HIGH_REFRESH_RATE_MODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    :cond_0
    return-void
.end method

.method public final refreshUI$3()V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canSetHighRefreshRateAboveWQHD(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "pms_settings_refresh_rate_enabled"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    const/16 v4, 0x3e7

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    iget v5, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    iget-object v6, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result v6

    if-eq v5, v6, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    move v5, v0

    :goto_0
    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->getRefreshRateMode()I

    move-result v1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    move v6, v0

    :goto_1
    invoke-virtual {v5}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    if-ge v6, v7, :cond_5

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v7

    instance-of v8, v7, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v8, :cond_4

    check-cast v7, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v7, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_6

    if-eq v1, v3, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mNormalMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_2
    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSupportMaxHS60RefreshRate(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mNormalMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f142482

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mNormalMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f142483

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    iget v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mSeamless:I

    if-ne v1, v2, :cond_9

    const v1, 0x7f142462

    goto :goto_4

    :cond_9
    const v1, 0x7f142463

    :goto_4
    iget v4, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    const v5, 0xffff

    and-int/2addr v4, v5

    if-eq v4, v2, :cond_c

    if-eq v4, v3, :cond_b

    const/4 v3, 0x3

    if-eq v4, v3, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateMaxValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mNormalMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mlayoutSecHrr:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f142461

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_5

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateMaxValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mNormalMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mlayoutSecHrr:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f142460

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_5
    return-void
.end method
