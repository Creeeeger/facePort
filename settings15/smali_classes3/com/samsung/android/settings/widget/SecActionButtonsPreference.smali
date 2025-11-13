.class public Lcom/samsung/android/settings/widget/SecActionButtonsPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

.field public final mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    new-instance p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    const p1, 0x7f0d09d2

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    new-instance p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    const p1, 0x7f0d09d2

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    new-instance p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    const p1, 0x7f0d09d2

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    new-instance p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    invoke-direct {p1}, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    const p1, 0x7f0d09d2

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    iput-boolean v0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    const v2, 0x7f0a028d

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iput-object v2, v1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mPositiveButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    const v2, 0x7f0a028c

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iput-object v2, v1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mNegativeButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    const v2, 0x7f0a0291

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iput-object v2, v1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mPositiveButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    const v2, 0x7f0a0290

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iput-object p1, v1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mNegativeButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton1Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    iget-object v1, p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mPositiveButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iget-object v2, p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRoundButtonView;->setEnabled(Z)V

    iget-object v1, p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mNegativeButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iget-object v2, p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/widget/SecRoundButtonView;->setEnabled(Z)V

    iget-object v1, p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mPositiveButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p1, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mNegativeButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference;->mButton2Info:Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mPositiveButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/widget/SecRoundButtonView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mNegativeButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mIsEnabled:Z

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/widget/SecRoundButtonView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mPositiveButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecActionButtonsPreference$ButtonInfo;->mNegativeButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
