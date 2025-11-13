.class public Lcom/samsung/android/settings/mde/MDESuggestionPreference;
.super Landroidx/preference/SecPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mHelper:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreference;->mHelper:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreference;->mHelper:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreference;->mHelper:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f0a0797

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0a1041

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a05ed

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mExitView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mExitButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0f81

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f0a0072

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/Utils$RoleDescriptionAccessibilityDelegate;

    iget-object v2, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f140886

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/Utils$RoleDescriptionAccessibilityDelegate;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    const v0, 0x7f0a0073

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0905

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mTitleText:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mTitleText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mSummaryText:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mSummaryText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->mActionButtonText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->setActionButtonText(Ljava/lang/String;)V

    return-void
.end method
