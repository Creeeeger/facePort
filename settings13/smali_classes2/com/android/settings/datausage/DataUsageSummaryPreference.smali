.class public Lcom/android/settings/datausage/DataUsageSummaryPreference;
.super Landroidx/preference/SecPreference;
.source "DataUsageSummaryPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataUsageSummaryPreference$ProgressBarAnimation;
    }
.end annotation


# static fields
.field private static final MILLIS_IN_A_DAY:J

.field static final SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;

.field private static final WARNING_AGE:J

.field private static isViewUpdated:Z


# instance fields
.field private final CYCLE_TIME_UNINITIAL_VALUE:J

.field private TAG:Ljava/lang/String;

.field private mCarrierName:Ljava/lang/CharSequence;

.field private mChartEnabled:Z

.field private mCycleEndTimeMs:J

.field private mCycleStartTimeMs:J

.field private mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

.field private mDataUsageTemplate:I

.field private mDataplanSize:J

.field private mDataplanUse:J

.field private mEndLabel:Ljava/lang/CharSequence;

.field private mHasMobileData:Z

.field private mLaunchIntent:Landroid/content/Intent;

.field private mLimitInfoText:Ljava/lang/CharSequence;

.field private mNumPlans:I

.field private mProgress:F

.field private mSingleWifi:Z

.field private mSnapshotTimeMs:J

.field private mStartLabel:Ljava/lang/CharSequence;

.field private mUsagePeriod:Ljava/lang/String;

.field private mUsageTitle:Landroid/widget/TextView;

.field private mWarningInfoText:Ljava/lang/CharSequence;

.field private mWifiMode:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmDataUsageTemplate(Lcom/android/settings/datausage/DataUsageSummaryPreference;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageTemplate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsageTitle(Lcom/android/settings/datausage/DataUsageSummaryPreference;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smsmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->smallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 77
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->MILLIS_IN_A_DAY:J

    .line 78
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->WARNING_AGE:J

    const-string/jumbo v0, "sans-serif-medium"

    const/4 v1, 0x0

    .line 81
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 135
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 83
    iput-boolean p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    const-string p2, "DataUsageSummaryPreference"

    .line 96
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 106
    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->CYCLE_TIME_UNINITIAL_VALUE:J

    .line 137
    sget p2, Lcom/android/settings/R$layout;->sec_data_usage_summary_preference:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 138
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getDataUsageFeatureProvider()Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    const/4 p0, 0x0

    .line 139
    sput-boolean p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->isViewUpdated:Z

    return-void
.end method

.method private static smallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V
    .locals 5

    .line 563
    invoke-static {p0, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/16 v3, 0x12

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 565
    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {p1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    .line 568
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v4, v1, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 570
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr p1, v0

    .line 571
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 572
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {p0, v1, p1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 574
    :cond_2
    new-instance v1, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v2, "sans-serif-medium"

    invoke-direct {v1, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-void
.end method

.method private updateCycleTimeText(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8

    .line 480
    sget v0, Lcom/android/settings/R$id;->cycle_left_time:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 481
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleStartTimeMs:J

    invoke-static {v0, v1, v2, v1, v2}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:J

    invoke-static {v1, v2, v3, v2, v3}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sec_data_usage_summary_preference_cycle_label:I

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/settings/R$string;->sec_data_usage_summary_preference_cycle_label_tts:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    .line 222
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 289
    sget v0, Lcom/android/settings/R$id;->determinateBar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 290
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 292
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 294
    sget v0, Lcom/android/settings/R$id;->label_bar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 299
    sget v1, Lcom/android/settings/R$id;->label_bar:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 300
    new-instance v1, Lcom/android/settings/datausage/DataUsageSummaryPreference$ProgressBarAnimation;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    invoke-direct {v1, p0, v0, v4, v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference$ProgressBarAnimation;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreference;Landroid/widget/ProgressBar;FF)V

    .line 301
    iget v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    const/high16 v5, 0x44fa0000    # 2000.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 302
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 303
    iget v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x1020014

    .line 304
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x1020015

    .line 305
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 310
    sget v0, Lcom/android/settings/R$id;->label_bar:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 314
    :goto_0
    sget v0, Lcom/android/settings/R$id;->usage_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    .line 315
    sget-boolean v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->isViewUpdated:Z

    if-nez v0, :cond_3

    .line 316
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    const/4 v0, 0x1

    .line 317
    sput-boolean v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->isViewUpdated:Z

    .line 320
    :cond_3
    sget v0, Lcom/android/settings/R$id;->data_warnings:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 321
    sget v1, Lcom/android/settings/R$id;->data_limits:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 324
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 325
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    sget p0, Lcom/android/settings/R$id;->cycle_left_time:I

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 329
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 333
    :cond_4
    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWifiMode:Z

    if-eqz v4, :cond_5

    .line 334
    sget v4, Lcom/android/settings/R$string;->sec_datausage_preference_summary_title_wifi:I

    iput v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageTemplate:I

    .line 335
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    sget v2, Lcom/android/settings/R$id;->cycle_left_time:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 337
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsagePeriod:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 341
    :cond_5
    sget v4, Lcom/android/settings/R$string;->sec_datausage_preference_summary_title_mobile:I

    iput v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageTemplate:I

    .line 342
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateCycleTimeText(Landroidx/preference/PreferenceViewHolder;)V

    .line 346
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWarningInfoText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v3

    goto :goto_1

    :cond_6
    move p1, v2

    .line 345
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWarningInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v2, v3

    .line 349
    :cond_7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateDataUsageLabels()V

    :goto_3
    return-void
.end method

.method public setChartEnabled(Z)V
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    if-eq v0, p1, :cond_0

    .line 191
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    .line 192
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setLabels(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    .line 198
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    .line 199
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setLimitInfo(Ljava/lang/CharSequence;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    .line 148
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    .line 163
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setUsageInfo(JJJLjava/lang/CharSequence;ILandroid/content/Intent;)V
    .locals 0

    .line 179
    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleStartTimeMs:J

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    const-wide/16 p1, 0x1

    sub-long/2addr p3, p1

    .line 180
    :cond_0
    iput-wide p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:J

    .line 181
    iput-wide p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSnapshotTimeMs:J

    .line 182
    iput-object p7, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCarrierName:Ljava/lang/CharSequence;

    .line 183
    iput p8, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mNumPlans:I

    .line 184
    iput-object p9, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLaunchIntent:Landroid/content/Intent;

    .line 185
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setUsageNumbers(JJZ)V
    .locals 0

    .line 205
    iput-wide p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    .line 206
    iput-wide p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanSize:J

    .line 207
    iput-boolean p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mHasMobileData:Z

    .line 208
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setWarningInfo(Ljava/lang/CharSequence;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWarningInfoText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWarningInfoText:Ljava/lang/CharSequence;

    .line 156
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setWifiMode(ZLjava/lang/String;Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWifiMode:Z

    .line 215
    iput-object p2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsagePeriod:Ljava/lang/String;

    .line 216
    iput-boolean p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mSingleWifi:Z

    .line 217
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public updateDataUsageLabels()V
    .locals 14

    .line 380
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    const/4 v4, 0x4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v1, [I

    aput v3, v4, v3

    .line 385
    iget-object v5, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 386
    new-instance v5, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 387
    iget v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    const/high16 v6, 0x44fa0000    # 2000.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 388
    new-instance v5, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;

    invoke-direct {v5, p0, v4, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreference;Landroid/animation/ValueAnimator;Landroid/text/format/Formatter$BytesResult;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 395
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 397
    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v4, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageTemplate:I

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/android/settings/R$string;->fileSizeSuffix:I

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Object;

    iget-object v12, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v12, v11, v3

    const-string v12, ""

    aput-object v12, v11, v2

    iget-object v13, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v13, v11, v1

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v7, v6, v3

    aput-object v12, v6, v2

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v0, v6, v1

    invoke-virtual {v5, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->smallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V

    .line 401
    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
