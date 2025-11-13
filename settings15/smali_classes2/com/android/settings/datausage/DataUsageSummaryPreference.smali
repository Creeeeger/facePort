.class public Lcom/android/settings/datausage/DataUsageSummaryPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;

.field public static isViewUpdated:Z


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mChartEnabled:Z

.field public mCurrentDataSimTitle:Landroid/widget/TextView;

.field public mCycleEndTimeMs:Ljava/lang/Long;

.field public mCycleStartTimeMs:J

.field public final mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

.field public mDataUsageTemplate:I

.field public mDataplanUse:J

.field public mEndLabel:Ljava/lang/CharSequence;

.field public mLimitInfoText:Ljava/lang/CharSequence;

.field public mProgress:F

.field public mStartLabel:Ljava/lang/CharSequence;

.field public mUsageTitle:Landroid/widget/TextView;

.field public mWarningInfoText:Ljava/lang/CharSequence;

.field public mWifiMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->SANS_SERIF_MEDIUM:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    const-string p1, "DataUsageSummaryPreference"

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->TAG:Ljava/lang/String;

    const p1, 0x7f0d088c

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getDataUsageFeatureProvider()Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->isViewUpdated:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static smallSpanExcept$1(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V
    .locals 5

    invoke-static {p0, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const v3, 0x3eedb6db

    const/16 v4, 0x12

    if-ne v0, v1, :cond_0

    new-instance p1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {p1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v1, v2, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v1

    if-ge p1, v1, :cond_2

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {p0, v1, p1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    new-instance v1, Landroid/text/style/TypefaceSpan;

    const-string v2, "sec"

    invoke-direct {v1, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCarrierInfo(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;
    .locals 0

    const p0, 0x7f0a02d7

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public getCycleTime(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;
    .locals 0

    const p0, 0x7f0a0483

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public getDataLimits(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;
    .locals 0

    const p0, 0x7f0a0495

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public getDataRemaining(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;
    .locals 0

    const p0, 0x7f0a049a

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public getDataUsed(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;
    .locals 0

    const p0, 0x7f0a04a7

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public getLabel1(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;
    .locals 0

    const p0, 0x1020014

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public getLabel2(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;
    .locals 0

    const p0, 0x1020015

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public getLabelBar(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/LinearLayout;
    .locals 0

    const p0, 0x7f0a0860

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getLayout(Landroidx/preference/PreferenceViewHolder;)Lcom/android/settings/datausage/MeasurableLinearLayout;
    .locals 0

    const p0, 0x7f0a10ca

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/MeasurableLinearLayout;

    return-object p0
.end method

.method public getProgressBar(Landroidx/preference/PreferenceViewHolder;)Lcom/samsung/android/settings/datausage/widget/ProgressBar;
    .locals 0

    const p0, 0x7f0a04ed

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/datausage/widget/ProgressBar;

    return-object p0
.end method

.method public getUsageTitle(Landroidx/preference/PreferenceViewHolder;)Landroid/widget/TextView;
    .locals 0

    const p0, 0x7f0a10cc

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v3, 0x7f0a04ed

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/widget/ProgressBar;

    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    const/high16 v5, 0x44fa0000    # 2000.0f

    const v6, 0x7f0a0860

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget v4, v3, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mScore:F

    iget v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v6, v4

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->setProgress(F)V

    iget v6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    mul-float/2addr v6, v4

    float-to-int v6, v6

    const-string v9, "startProgressAnim:"

    const-string v10, "ProgressBar_ANIM"

    invoke-static {v6, v9, v10}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput v2, v3, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAnimType:I

    iput v7, v3, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mAlphaValue:I

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->setProgress(F)V

    int-to-float v6, v6

    mul-float v9, v6, v5

    div-float/2addr v9, v4

    iget-object v4, v3, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressAnim:Landroid/animation/ValueAnimator;

    const/high16 v10, 0x41200000    # 10.0f

    if-nez v4, :cond_2

    mul-float/2addr v6, v10

    new-array v2, v2, [F

    aput v0, v2, v7

    aput v6, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v3, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressAnim:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_2
    mul-float/2addr v6, v10

    new-array v2, v2, [F

    aput v0, v2, v7

    aput v6, v2, v1

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_0
    iget-object v2, v3, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v3, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-object v2, v3, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressAnim:Landroid/animation/ValueAnimator;

    float-to-long v9, v9

    invoke-virtual {v2, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, v3, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressAnim:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/view/animation/SineInOut90;

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3ea8f5c3    # 0.33f

    invoke-direct {v4, v10, v0, v6, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v3, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/settings/datausage/widget/ProgressBar$$ExternalSyntheticLambda0;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/datausage/widget/ProgressBar$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/datausage/widget/ProgressBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, v3, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/samsung/android/settings/datausage/widget/ProgressBar$3;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/datausage/widget/ProgressBar$3;-><init>(Lcom/samsung/android/settings/datausage/widget/ProgressBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v3, Lcom/samsung/android/settings/datausage/widget/ProgressBar;->mProgressAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const v0, 0x7f0a10cc

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0459

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCurrentDataSimTitle:Landroid/widget/TextView;

    sget-boolean v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->isViewUpdated:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    sput-boolean v1, Lcom/android/settings/datausage/DataUsageSummaryPreference;->isViewUpdated:Z

    :cond_6
    const v0, 0x7f0a04a8

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0495

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const p0, 0x7f0a0483

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_7
    iget-boolean v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWifiMode:Z

    if-eqz v2, :cond_8

    const v2, 0x7f1422d3

    iput v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageTemplate:I

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateCycleTimeText(Landroidx/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCurrentDataSimTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_8
    const v2, 0x7f1422d2

    iput v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageTemplate:I

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->updateCycleTimeText(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWarningInfoText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    move p1, v8

    goto :goto_2

    :cond_9
    move p1, v7

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWarningInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    move p1, v8

    goto :goto_3

    :cond_a
    move p1, v7

    :goto_3
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    if-nez p1, :cond_b

    goto/16 :goto_5

    :cond_b
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageFeatureProvider:Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    :try_start_0
    iget-object v0, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    filled-new-array {v7, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference$1;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreference;Landroid/animation/ValueAnimator;Landroid/text/format/Formatter$BytesResult;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NumberFormatException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataUsageTemplate:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    iget-object v5, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const-string v6, ""

    filled-new-array {v4, v6, v5}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f140f62

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    filled-new-array {v2, v6, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v5, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->smallSpanExcept$1(Landroid/text/SpannableString;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mUsageTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "telephony_subscription_service"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_c

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCurrentDataSimTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasActiveSim(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCurrentDataSimTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_d
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCurrentDataSimTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCurrentDataSimTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings/datausage/DataUsageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCurrentDataSimTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method public final setLimitInfo(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mLimitInfoText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final setUsageInfo(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleStartTimeMs:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:Ljava/lang/Long;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setWarningInfo(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWarningInfoText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWarningInfoText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final updateCycleTimeText(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    const v0, 0x7f0a0483

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleStartTimeMs:J

    invoke-static {v0, v1, v2, v1, v2}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mCycleEndTimeMs:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1422c5

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f1422c6

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
