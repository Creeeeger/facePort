.class public Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;
.super Ljava/lang/Object;
.source "MDESuggestionPreferenceLayoutHelper.java"


# instance fields
.field private mActionButtonClickListener:Landroid/view/View$OnClickListener;

.field private mActionButtonContainer:Landroid/widget/LinearLayout;

.field private mActionButtonText:Ljava/lang/String;

.field private mActionButtonTextView:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private mExitButtonClickListener:Landroid/view/View$OnClickListener;

.field private mExitView:Landroid/widget/ImageView;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIconView:Landroid/widget/ImageView;

.field private mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mShortcutId:Ljava/lang/String;

.field private mSummary:Landroid/widget/TextView;

.field private mSummaryText:Ljava/lang/CharSequence;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleText:Ljava/lang/CharSequence;


# direct methods
.method public static synthetic $r8$lambda$ZKxw-m-AuSVXZ5dapS8Ovbwbey4(Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->lambda$startTurnOnAnimation$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/preference/Preference;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mIcon:Landroid/graphics/drawable/Icon;

    .line 42
    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mExitButtonClickListener:Landroid/view/View$OnClickListener;

    .line 43
    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonClickListener:Landroid/view/View$OnClickListener;

    .line 52
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mContext:Landroid/content/Context;

    .line 53
    sget p0, Lcom/android/settings/R$layout;->sec_mde_suggestion_preference:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p0, 0x0

    .line 54
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method private synthetic lambda$startTurnOnAnimation$0(I)V
    .locals 5

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_mde_suggestions_turned_on:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->setActionButtonText(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 139
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 140
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTranslationX()F

    move-result v2

    int-to-float p1, p1

    sub-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 145
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x190

    .line 147
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 148
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 151
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "suggestions_done.json"

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 155
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method


# virtual methods
.method public getShortcutId()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mShortcutId:Ljava/lang/String;

    return-object p0
.end method

.method onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 58
    sget v0, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mIconView:Landroid/widget/ImageView;

    .line 59
    sget v0, Lcom/android/settings/R$id;->title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mTitle:Landroid/widget/TextView;

    .line 60
    sget v0, Lcom/android/settings/R$id;->exit_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mExitView:Landroid/widget/ImageView;

    .line 61
    iget-object v1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mExitButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    sget v0, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mSummary:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/android/settings/R$id;->action_button_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonContainer:Landroid/widget/LinearLayout;

    .line 64
    iget-object v1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget v0, Lcom/android/settings/R$id;->action_button_text:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonTextView:Landroid/widget/TextView;

    .line 66
    sget v0, Lcom/android/settings/R$id;->lottie_view:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 67
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 68
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 72
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->setActionButtonText(Ljava/lang/String;)V

    return-void
.end method

.method public setActionButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonClickListener:Landroid/view/View$OnClickListener;

    .line 94
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonContainer:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setActionButtonText(Ljava/lang/String;)V
    .locals 1

    .line 121
    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonText:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setExitButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mExitButtonClickListener:Landroid/view/View$OnClickListener;

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mExitView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mIcon:Landroid/graphics/drawable/Icon;

    .line 101
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mIconView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    :cond_0
    return-void
.end method

.method public setShortcutId(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mShortcutId:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 114
    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mSummaryText:Ljava/lang/CharSequence;

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 107
    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mTitleText:Ljava/lang/CharSequence;

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public startTurnOnAnimation()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 129
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 130
    iget-object v1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 131
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 132
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 133
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;I)V

    .line 134
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
