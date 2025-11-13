.class public Lcom/samsung/android/settings/display/HighRefreshRateFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HighRefreshRateFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;


# instance fields
.field private mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

.field private mConfig:Landroid/content/res/Configuration;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

.field private mMode:I

.field private mNormalMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

.field private mSeamless:I


# direct methods
.method public static synthetic $r8$lambda$TzJzxyMTtEcJuWHI6lgD0nNdIrw(Lcom/samsung/android/settings/display/HighRefreshRateFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->lambda$initUI$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/HighRefreshRateFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMode(Lcom/samsung/android/settings/display/HighRefreshRateFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmMode(Lcom/samsung/android/settings/display/HighRefreshRateFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshUI(Lcom/samsung/android/settings/display/HighRefreshRateFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->refreshUI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    .line 68
    iput v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    return-void
.end method

.method private finishIfNotSupported()V
    .locals 6

    .line 179
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canSetHighRefreshRate(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_high_refresh_rate_dual_display_flip_close_toast:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 189
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, ":settings:fragment_args_key"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "sec_high_refresh_rate_powerful_on"

    .line 190
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "sec_high_refresh_rate_adaptive_on"

    if-nez v4, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 191
    :cond_2
    iget v4, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mSeamless:I

    if-ne v4, v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v5

    .line 192
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_5

    const-string v2, "Adaptive option can only be used on main screen"

    goto :goto_2

    :cond_5
    const-string v2, "High option can only be used on sub screen"

    :goto_2
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_6
    return-void
.end method

.method private getRefreshRateMode()I
    .locals 1

    .line 378
    invoke-direct {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->isApplyAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    return p0

    .line 381
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const/16 v0, 0x3e7

    invoke-static {p0, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private initUI()V
    .locals 9

    .line 202
    sget v0, Lcom/android/settings/R$xml;->sec_high_refresh_rate:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "sec_high_refresh_rate_preview"

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 208
    iget v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mSeamless:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "sec_high_refresh_rate_powerful_on"

    goto :goto_0

    :cond_0
    const-string v1, "sec_high_refresh_rate_adaptive_on"

    .line 209
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 210
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 211
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    const-string v1, "sec_high_refresh_rate_standard_off"

    .line 214
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mNormalMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 215
    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/widget/SecRadioButtonPreference$OnClickListener;)V

    .line 217
    sget v1, Lcom/android/settings/R$id;->sec_hrr_preview_lottie_ll:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    const/16 v3, 0xf

    .line 219
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 220
    iget-object v4, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 223
    :cond_1
    sget v1, Lcom/android/settings/R$id;->sec_hrr_preview_60f_image:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    .line 224
    sget v1, Lcom/android/settings/R$id;->sec_hrr_preview_120f_image:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    .line 226
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Rune;->supportHighRefreshRate(Landroid/content/Context;I)Z

    move-result v1

    const-string v3, "sec_hrr_preview_120f_dark.json"

    const-string v4, "sec_hrr_preview_60f_dark.json"

    const-string v5, "sec_hrr_preview_120f_light.json"

    const-string v6, "sec_hrr_preview_60f_light.json"

    if-eqz v1, :cond_5

    .line 227
    sget v1, Lcom/android/settings/R$id;->sec_hrr_preview_desc:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 228
    iget-object v7, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v7

    const-string v8, "\n"

    if-ne v7, v2, :cond_3

    .line 230
    iget-object v3, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    iget-object v3, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v4, "sec_hrr_preview_cover_60f_dark.json"

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v4, "sec_hrr_preview_cover_120f_dark.json"

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    .line 234
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v4, "sec_hrr_preview_cover_60f_light.json"

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 235
    iget-object v3, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v4, "sec_hrr_preview_cover_120f_light.json"

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 237
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->sec_high_refresh_rate_cover_desc:I

    .line 238
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->sec_high_refresh_rate_cover_desc_info:I

    .line 240
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 243
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 244
    iget-object v5, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 245
    iget-object v4, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_2

    .line 247
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 248
    iget-object v3, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 250
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->sec_high_refresh_rate_main_desc:I

    .line 251
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->sec_high_refresh_rate_main_desc_info:I

    .line 253
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 257
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 258
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_3

    .line 261
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 265
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 266
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 267
    invoke-direct {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->updatePreviewImageSize()V

    .line 268
    sget v1, Lcom/android/settings/R$id;->sec_hrr_preview_60f_text:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 269
    sget v3, Lcom/android/settings/R$id;->sec_hrr_preview_120f_text:I

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 270
    iget-object v3, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sec_high_refresh_rate_standard_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mSeamless:I

    if-ne v1, v2, :cond_7

    .line 272
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_high_refresh_rate_best_display_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 273
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_high_refresh_rate_dynamic_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "sec_high_refresh_rate_apply"

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    .line 276
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_high_refresh_rate_apply_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonText(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    new-instance v1, Lcom/samsung/android/settings/display/HighRefreshRateFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/display/HighRefreshRateFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-direct {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->refreshUI()V

    return-void
.end method

.method private isApplyAvailable()Z
    .locals 2

    .line 388
    iget v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const/16 v1, 0x3e7

    invoke-static {p0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$initUI$0(Landroid/view/View;)V
    .locals 2

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->getMetricsCategory()I

    move-result p1

    const/16 v0, 0x28b0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 280
    iget-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->getRefreshRateMode()I

    move-result v0

    const/16 v1, 0x3e7

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->putIntRefreshRate(Landroid/content/Context;II)V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method private refreshUI()V
    .locals 2

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->setFlags()V

    .line 131
    iget v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->isApplyAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->updateHighRefreshRateRadioPreferences()V

    return-void
.end method

.method private setFlags()V
    .locals 2

    const/4 v0, 0x0

    .line 343
    iput v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    .line 345
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->canSetHighRefreshRateAboveWQHD(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMediumPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    iget v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    :cond_1
    return-void
.end method

.method private setUncheckedUI()V
    .locals 4

    .line 333
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 334
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 335
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 336
    instance-of v3, v2, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    if-eqz v3, :cond_0

    .line 337
    check-cast v2, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateHighRefreshRateRadioPreferences()V
    .locals 7

    .line 291
    invoke-direct {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->getRefreshRateMode()I

    move-result v0

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->setUncheckedUI()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mNormalMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 304
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const/16 v3, 0x3e7

    invoke-static {v0, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSupportMaxHS60RefreshRate(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mNormalMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->sec_high_refresh_rate_standard_max_hs60_summary:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mNormalMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->sec_high_refresh_rate_standard_summary:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    :goto_1
    iget v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    const v4, 0xffff

    and-int/2addr v0, v4

    const/4 v4, 0x0

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 324
    iget v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mSeamless:I

    if-ne v0, v2, :cond_3

    .line 325
    sget v0, Lcom/android/settings/R$string;->sec_high_refresh_rate_best_display_pd_summary:I

    goto :goto_2

    :cond_3
    sget v0, Lcom/android/settings/R$string;->sec_high_refresh_rate_best_display_seamless_pd_summary:I

    .line 326
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateMaxValue(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    goto :goto_3

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_high_refresh_rate_best_display_not_supported_summary_wqhd_psd:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 313
    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    goto :goto_3

    .line 320
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_high_refresh_rate_best_display_not_supported_summary_psm:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 321
    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    goto :goto_3

    .line 316
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_high_refresh_rate_best_display_not_supported_summary_wqhd:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 317
    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/widget/SecRadioButtonPreference;->setEnabled(Z)V

    :goto_3
    return-void
.end method

.method private updatePreviewImageSize()V
    .locals 7

    .line 354
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xac

    goto :goto_0

    :cond_0
    const/16 v1, 0x61

    :goto_0
    int-to-double v1, v1

    .line 359
    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4064000000000000L    # 160.0

    div-double/2addr v3, v5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 362
    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getContentFrameWidthRatio(Landroid/content/Context;)F

    move-result v2

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    .line 363
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->sec_high_refresh_rate_vi_padding_between:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    .line 364
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->sec_high_refresh_rate_vi_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 365
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    const v2, 0x3fe51eb8    # 1.79f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 368
    iget-object v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 369
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie60f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mLottie120f:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x28aa

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->finishIfNotSupported()V

    .line 169
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    .line 172
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateSeamlessType(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mSeamless:I

    .line 173
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mConfig:Landroid/content/res/Configuration;

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->initUI()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    const/16 v0, 0x3e7

    .line 88
    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getIntRefreshRate(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    .line 89
    iget-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getHighRefreshRateSeamlessType(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mSeamless:I

    .line 90
    iget-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mConfig:Landroid/content/res/Configuration;

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->finishIfNotSupported()V

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->initUI()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonPreference;)V
    .locals 4

    .line 393
    invoke-direct {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->getRefreshRateMode()I

    move-result v0

    .line 394
    iget v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mSeamless:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 396
    iput v2, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    goto :goto_0

    .line 397
    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mSeamless:I

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mPowerfulMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    .line 398
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eq v0, v3, :cond_2

    .line 400
    iput v3, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    goto :goto_0

    .line 401
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mNormalMode:Lcom/samsung/android/settings/widget/SecRadioButtonPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    .line 402
    iput p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    .line 405
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->refreshUI()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 97
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/HighRefreshRateFragment$1;-><init>(Lcom/samsung/android/settings/display/HighRefreshRateFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "refresh_rate_mode"

    .line 119
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 118
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "refresh_rate_mode_cover"

    .line 122
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 121
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "low_power"

    .line 125
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 124
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->refreshUI()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 147
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    iget v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    const-string v1, "HIGH_REFRESH_RATE_FLAG"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    iget v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    const-string v1, "HIGH_REFRESH_RATE_MODE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 150
    iget-object p0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p0

    const-string v0, "PREV_DISPLAY_DEVICE_TYPE"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    .line 155
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v0

    const-string v1, "PREV_DISPLAY_DEVICE_TYPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "HIGH_REFRESH_RATE_FLAG"

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mFlags:I

    const-string v0, "HIGH_REFRESH_RATE_MODE"

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/HighRefreshRateFragment;->mMode:I

    :cond_0
    return-void
.end method
