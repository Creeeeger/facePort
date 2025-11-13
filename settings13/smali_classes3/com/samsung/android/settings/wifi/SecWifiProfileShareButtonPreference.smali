.class public Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;
.super Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;
.source "SecWifiProfileShareButtonPreference.java"


# instance fields
.field private mAnimated:Z

.field private mAnimationContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    sget-object p4, Lcom/android/settings/R$styleable;->SecButtonPreferenceStyle:[I

    sget v0, Lcom/android/settings/R$style;->RoundButtonStyle:I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    sget p1, Lcom/android/settings/R$layout;->sec_wifi_profile_share_button_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->initPreference(Landroidx/preference/PreferenceViewHolder;)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;->mAnimationContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 96
    sget v0, Lcom/android/settings/R$id;->profile_share_animation_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;->mAnimationContainer:Landroid/widget/LinearLayout;

    .line 98
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;->mAnimated:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;->startAnimation()V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->setAlpha(Z)V

    xor-int/lit8 p1, p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/SecWifiButtonPreference;->mProgressVisible:Z

    .line 87
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public startAnimation()V
    .locals 8

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;->mAnimationContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0xfa

    .line 63
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const v4, 0x3e6147ae    # 0.22f

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 64
    invoke-static {v4, v5, v6, v7}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 66
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 67
    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 68
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 70
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const v5, 0x3f666666    # 0.9f

    invoke-direct {v4, v7, v7, v5, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 71
    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 72
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 74
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/high16 v5, -0x3ec00000    # -12.0f

    invoke-direct {v4, v6, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 75
    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 76
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;->mAnimationContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 79
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/SecWifiProfileShareButtonPreference;->mAnimated:Z

    return-void
.end method
