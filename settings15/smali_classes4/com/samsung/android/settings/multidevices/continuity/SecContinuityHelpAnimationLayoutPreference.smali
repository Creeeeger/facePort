.class public Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCopyPasteSupported:Z

.field public mHelpAnimationContainer:Landroid/widget/FrameLayout;

.field public mHelpImage:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

.field public mImageValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;->mContext:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;->mHelpAnimationContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;->mHelpAnimationContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;->mContext:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;->mHelpImage:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    iget-object v1, p0, Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;->mHelpImage:Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/PlayPauseLottieAnimationView;->playAnimation$1()V

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0738

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;->mCopyPasteSupported:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0739

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-boolean p0, p0, Lcom/samsung/android/settings/multidevices/continuity/SecContinuityHelpAnimationLayoutPreference;->mCopyPasteSupported:Z

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
