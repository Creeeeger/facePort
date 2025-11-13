.class public Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "FloatingIconAnimationLayoutPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFloatingIconAnimationContainer:Landroid/widget/FrameLayout;

.field private mFloatingIconImage:Lcom/airbnb/lottie/LottieAnimationView;

.field private mImageValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 28
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 29
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->floating_icon_animation_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;->mFloatingIconAnimationContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0xf

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;->mFloatingIconAnimationContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    .line 32
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->floating_icon_animation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;->mFloatingIconImage:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setAnimationResource(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iput-object p1, p0, Lcom/samsung/android/settings/notification/FloatingIconAnimationLayoutPreference;->mImageValue:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
