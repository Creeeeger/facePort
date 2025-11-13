.class public Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;
.super Landroidx/preference/SecPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCancelButton:Landroid/widget/ImageButton;

.field public mChecked:Z

.field public final mContext:Landroid/content/Context;

.field public mDownloadButton:Landroid/widget/ImageButton;

.field public mDownloadProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

.field public mInstallProgressBar:Landroid/widget/ProgressBar;

.field public mIsInstall:Z

.field public mIsSelectMode:Z

.field public mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

.field public mListener:Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$OnClickListener;

.field public mPauseButton:Landroid/widget/ImageButton;

.field public mRadioButton:Landroid/widget/RadioButton;

.field public mResumeButton:Landroid/widget/ImageButton;

.field public mSummaryContainer:Landroid/widget/LinearLayout;

.field public mSummaryTextView:Landroid/widget/TextView;

.field public mWaitProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mListener:Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mIsSelectMode:Z

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d0449

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public static formatSize(J)Ljava/lang/String;
    .locals 2

    long-to-double p0, p0

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 11

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a105d

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0568

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mDownloadButton:Landroid/widget/ImageButton;

    const v1, 0x7f0a0b35

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f0a02ce

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mCancelButton:Landroid/widget/ImageButton;

    const v1, 0x7f0a0ca8

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mResumeButton:Landroid/widget/ImageButton;

    const v1, 0x7f0a0f87

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mSummaryContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0a113a

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mWaitProgressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f0a0803

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mInstallProgressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f0a0c2b

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mRadioButton:Landroid/widget/RadioButton;

    const v1, 0x7f0a0f8a

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mSummaryTextView:Landroid/widget/TextView;

    const v1, 0x7f0a0870

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mDownloadProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SeslProgressBar;->setMode(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mDownloadProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SeslProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v2, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;I)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mIsInstall:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->isAllPackageInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    sget-object v3, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_DOWNLOADING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    sget-object v4, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_PAUSE:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    sget-object v5, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_WAITING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    sget-object v6, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_INSTALLING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    if-ne v3, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->updateProgress$1$1()V

    goto :goto_2

    :cond_1
    if-ne v6, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mContext:Landroid/content/Context;

    const v7, 0x7f142612

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    if-ne v5, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mContext:Landroid/content/Context;

    const v7, 0x7f142625

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    if-ne v4, v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mContext:Landroid/content/Context;

    const v7, 0x7f142617

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mContext:Landroid/content/Context;

    const v7, 0x7f142600

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    const-string v2, ""

    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v7, v2, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    const/16 v8, 0x8

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_3

    :cond_6
    move v0, v8

    :goto_3
    if-ne v3, v7, :cond_7

    move v0, v1

    move v2, v0

    move v5, v2

    move v6, v5

    move v3, v8

    move v4, v3

    move v7, v4

    :goto_4
    move v9, v7

    goto/16 :goto_7

    :cond_7
    if-ne v6, v7, :cond_8

    move v0, v1

    move v9, v0

    move v2, v8

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    goto :goto_7

    :cond_8
    if-ne v5, v7, :cond_9

    move v0, v1

    move v7, v0

    move v2, v8

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v9, v6

    goto :goto_7

    :cond_9
    if-eq v4, v7, :cond_c

    iget-object v3, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mContext:Landroid/content/Context;

    iget-object v2, v2, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/languagepack/utils/LanguagePackUtils;->isDirectoryExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_6

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v3, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->isAllPackageInstalled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_b

    move v3, v1

    move v2, v8

    move v4, v2

    :goto_5
    move v5, v4

    move v6, v5

    move v7, v6

    goto :goto_4

    :cond_b
    move v2, v8

    move v3, v2

    move v4, v3

    goto :goto_5

    :cond_c
    :goto_6
    move v0, v1

    move v4, v0

    move v6, v4

    move v2, v8

    move v3, v2

    move v5, v3

    move v7, v5

    goto :goto_4

    :goto_7
    iget-boolean v10, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mIsInstall:Z

    if-eqz v10, :cond_e

    iget-boolean v10, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mIsSelectMode:Z

    if-eqz v10, :cond_d

    goto :goto_8

    :cond_d
    move v1, v8

    :goto_8
    move v8, v1

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mDownloadProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mDownloadButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_10

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mResumeButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mCancelButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_13

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_13
    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mSummaryContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_14

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mWaitProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_15
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mInstallProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_16

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_17

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_17
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mDownloadButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mIsInstall:Z

    if-eqz v1, :cond_18

    const v1, 0x7f0806bf

    goto :goto_9

    :cond_18
    const v1, 0x7f0806bc

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mDownloadButton:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mIsInstall:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f143078

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_19
    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f141854

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mContext:Landroid/content/Context;

    const v4, 0x7f1409b2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mDownloadButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mCancelButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mPauseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mResumeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mIsInstall:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public final onClick()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mListener:Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$OnClickListener;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;

    iget-boolean v1, v0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mSelectMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mCurrentLangCode:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iput-object p0, v0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mCurrentLangCode:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->updateRadioButtons()V

    iget-object p0, v0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mCallingPackage:Ljava/lang/String;

    const-string v1, "LanguagePackSettingsFragment"

    if-eqz p0, :cond_0

    new-instance p0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.settings.action.LANGUAGE_PACK_SELECTED"

    invoke-direct {p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "locale"

    iget-object v3, v0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mCurrentLangCode:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "ACTION_LANG_PACK_SELECTED : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mCurrentLangCode:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Calling package is null, skip the intent  : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mCurrentLangCode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public final performClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    iget-boolean p1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mIsInstall:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mIsSelectMode:Z

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mLanguageCode:Ljava/lang/String;

    const-string v1, "locale"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/languagepack/LanguagePackDetailsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object p1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    const/4 p0, 0x0

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_0
    return-void
.end method

.method public final performDownloadButton()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    sget-object v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;->STATUS_WAITING:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    iput-object v1, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mStatus:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$Status;

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mResumeButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mDownloadButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mWaitProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f142625

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mListener:Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$OnClickListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    check-cast v0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;

    sget-object v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mLanguagePackService:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/LanguagePackSettingsFragment;->mCallingPackage:Ljava/lang/String;

    iget-object v2, v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->enqueueDownloadTask(Lcom/samsung/android/settings/languagepack/data/LanguageInfo;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, v1, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService$LanguagePackServiceBinder;->this$0:Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;

    iput-object v0, p0, Lcom/samsung/android/settings/languagepack/service/LanguagePackDownloadService;->mResultBroadcastPackage:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final setSummary(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mSummaryTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mSummaryTextView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mSummaryContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final showMobileNetworkWarningPopup()V
    .locals 3

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mIsInstall:Z

    if-eqz v1, :cond_0

    const v1, 0x7f142623

    goto :goto_0

    :cond_0
    const v1, 0x7f14260e

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v1, Lcom/android/settings/accessibility/ScreenFlashNotificationColorDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const v2, 0x7f1408bf

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mIsInstall:Z

    if-eqz v1, :cond_1

    const v1, 0x7f143078

    goto :goto_1

    :cond_1
    const v1, 0x7f14260b

    :goto_1
    new-instance v2, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public final updateProgress$1$1()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mLanguageInfo:Lcom/samsung/android/settings/languagepack/data/LanguageInfo;

    iget-wide v1, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mCurrentDownloadedSize:J

    iget-wide v3, v0, Lcom/samsung/android/settings/languagepack/data/LanguageInfo;->mTotalLanguagePackSize:J

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mDownloadProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    long-to-double v5, v1

    long-to-double v7, v3

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v0, v5

    iget-object v5, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mDownloadProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/SeslProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mDownloadProgressBar:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v5, 0x1

    const v6, 0x7f142618

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->formatSize(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->formatSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->formatSize(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/languagepack/widget/LanguagePackPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
