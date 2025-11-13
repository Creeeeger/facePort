.class public Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDescString:Ljava/lang/String;

.field public mDescText:Landroid/widget/TextView;

.field public mHelpAnimationContainer:Landroid/widget/FrameLayout;

.field public mHelpImage:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

.field public mImageValue:Ljava/lang/String;

.field public final mTextVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mTextVisible:Z

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a072c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mHelpAnimationContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mHelpAnimationContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060738

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a072b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mHelpImage:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mHelpImage:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mHelpImage:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;->playAnimation$1()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0731

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mDescText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mTextVisible:Z

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mDescString:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mDescText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mDescString:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final setAnimationResource(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final setDescText(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecHelpAnimationLayoutPreference;->mDescString:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
