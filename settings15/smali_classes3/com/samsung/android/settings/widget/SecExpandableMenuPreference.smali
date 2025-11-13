.class public Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;
.super Landroidx/preference/SecPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIconEndId:I

.field public mIsDividerVisible:Z

.field public mIsScanAnimationDone:Z

.field public mProgressIcon:Landroid/widget/ProgressBar;

.field public final mReserveIconSpace:Z

.field public final mScanIconDrawableName:Ljava/lang/String;

.field public mStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

.field public mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const v0, 0x7f0d051d

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    sget-object v0, Lcom/android/settings/R$styleable;->SecExpandableMenuPreference:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIconEndId:I

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsDividerVisible:Z

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mScanIconDrawableName:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mReserveIconSpace:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    iput-boolean v0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    const v1, 0x7f0a07b4

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f0a0958

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mProgressIcon:Landroid/widget/ProgressBar;

    const v1, 0x7f0a0545

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIconEndId:I

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mReserveIconSpace:Z

    if-nez v2, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c99

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v0, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsDividerVisible:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "current_sec_active_themepackage"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f06068a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06068d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus$1()V

    return-void
.end method

.method public final seslSetSummaryColor(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mScanIconDrawableName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsScanAnimationDone:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    return-void
.end method

.method public final setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setStatus = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " iconStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecExpandableMenuPreference"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->setStatus$1()V

    return-void
.end method

.method public final setStatus$1()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/preference/Preference;->isShown()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setStatus: key = "

    const-string v2, " status : "

    invoke-static {v1, v0, v2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecExpandableMenuPreference"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatus:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mScanIconDrawableName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsScanAnimationDone:Z

    if-eqz v0, :cond_8

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mProgressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f08070e

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f14291e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mScanIconDrawableName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsScanAnimationDone:Z

    if-eqz v0, :cond_8

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mProgressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f08070d

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f14291d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mScanIconDrawableName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsScanAnimationDone:Z

    if-eqz v0, :cond_8

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mProgressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f08070c

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f14291c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mProgressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsScanAnimationDone:Z

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mStatusIcon:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mProgressIcon:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final setSummary(Ljava/lang/CharSequence;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mScanIconDrawableName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecExpandableMenuPreference;->mIsScanAnimationDone:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
