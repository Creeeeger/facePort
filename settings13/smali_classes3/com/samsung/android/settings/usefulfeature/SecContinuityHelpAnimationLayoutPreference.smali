.class public Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "SecContinuityHelpAnimationLayoutPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDescAppString1:Ljava/lang/String;

.field private mDescAppString2:Ljava/lang/String;

.field private mDescAppText1:Landroid/widget/TextView;

.field private mDescAppText2:Landroid/widget/TextView;

.field private mDescString1:Ljava/lang/String;

.field private mDescString2:Ljava/lang/String;

.field private mDescString3:Ljava/lang/String;

.field private mDescText1:Landroid/widget/TextView;

.field private mDescText2:Landroid/widget/TextView;

.field private mDescText3:Landroid/widget/TextView;

.field private mHelpAnimationContainer:Landroid/widget/FrameLayout;

.field private mHelpImage:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

.field private mImageValue:Ljava/lang/String;

.field private mTextVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mTextVisible:Z

    .line 35
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 40
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 41
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->help_animation_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mHelpAnimationContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0xf

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mHelpAnimationContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 44
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->help_animation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mHelpImage:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    .line 45
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mHelpImage:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;->playAnimation()V

    .line 49
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->help_description_text1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescText1:Landroid/widget/TextView;

    .line 50
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->help_description_text2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescText2:Landroid/widget/TextView;

    .line 51
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->help_description_text3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescText3:Landroid/widget/TextView;

    .line 52
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->help_description_app_text1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescAppText1:Landroid/widget/TextView;

    .line 53
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->help_description_app_text2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescAppText2:Landroid/widget/TextView;

    .line 55
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescString1:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescText1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescText1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescString1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescString2:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescText2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescText2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescString2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescString3:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 66
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescText3:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescText3:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescString3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescAppString1:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescAppText1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescAppText1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescAppString1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescAppString2:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescAppText2:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescAppText2:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescAppString2:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method public setAnimationResource(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setDescAppText1(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 111
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescAppString1:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setDescAppText2(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 118
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescAppString2:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setDescText1(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 90
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescString1:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setDescText2(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 97
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescString2:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setDescText3(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 104
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/SecContinuityHelpAnimationLayoutPreference;->mDescString3:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
