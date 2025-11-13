.class public Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;
.super Landroidx/preference/SecCheckBoxPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mButtonEnableState:Z

.field public mEnableState:Z

.field public mIsSummaryColorPrimaryDark:Z

.field public mListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;

.field public mOnGearClickListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x101008f

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mIsSummaryColorPrimaryDark:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;

    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mEnableState:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mButtonEnableState:Z

    const p1, 0x7f0d09f9

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const p1, 0x7f0d0546

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/preference/SecCheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mEnableState:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mEnableState:Z

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mEnableState:Z

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mIsSummaryColorPrimaryDark:Z

    invoke-static {p0, v4}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    const v4, 0x7f0a0e19

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f0a0e18

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v5, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;

    if-eqz v5, :cond_7

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mButtonEnableState:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mEnableState:Z

    if-eqz v4, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mButtonEnableState:Z

    if-eqz v2, :cond_4

    iget-boolean p0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mEnableState:Z

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    const/16 p0, 0x8

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final onClick()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnClickListener;->onRadioButtonClicked(Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0e18

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference$OnGearClickListener;->onGearClick()V

    :cond_0
    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecRadioButtonGearPreference;->mEnableState:Z

    return-void
.end method
