.class public Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mIntroImageRawResId:I

.field public mIntroImageResId:I

.field public mSummaryTextLineHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;->mIntroImageResId:I

    iput p1, p0, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;->mIntroImageRawResId:I

    const p1, 0x7f0d0030

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;->mIntroImageResId:I

    iput p1, p0, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;->mIntroImageRawResId:I

    const p1, 0x7f0d0030

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v0, p0, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;->mIntroImageResId:I

    iput v0, p0, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;->mIntroImageRawResId:I

    const p1, 0x7f0d0030

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;->mIntroImageResId:I

    iput p1, p0, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;->mIntroImageRawResId:I

    const p1, 0x7f0d0030

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget v0, p0, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;->mIntroImageResId:I

    const v1, 0x7f0a07c4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;->mIntroImageRawResId:I

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iget v1, p0, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;->mIntroImageRawResId:I

    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;)V

    iput-object v2, v0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;->mIntroImageResId:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    :goto_0
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    iput v2, p0, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;->mSummaryTextLineHeight:I

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_2
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->syncSummaryView(Landroid/view/View;)V

    return-void
.end method

.method public final setIntroImageResId(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;->mIntroImageResId:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;->mIntroImageResId:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/accessibility/shortcuts/ShortcutOptionPreference;->mIntroImageRawResId:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
