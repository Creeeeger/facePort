.class public Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "SecHelpAnimationLayoutPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDescString:Ljava/lang/String;

.field private mDescText:Landroid/widget/TextView;

.field private mHelpAnimationContainer:Landroid/widget/FrameLayout;

.field private mHelpImage:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

.field private mImageValue:Ljava/lang/String;

.field private mTextVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mTextVisible:Z

    .line 26
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 31
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 32
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->help_animation_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mHelpAnimationContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0xf

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 34
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mHelpAnimationContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 35
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->help_animation:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mHelpImage:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    .line 36
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mHelpImage:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;->playAnimation()V

    .line 40
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->help_description_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mDescText:Landroid/widget/TextView;

    .line 41
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mTextVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mDescString:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 43
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mDescText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mDescString:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setAnimationResource(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setDescText(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mDescString:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
