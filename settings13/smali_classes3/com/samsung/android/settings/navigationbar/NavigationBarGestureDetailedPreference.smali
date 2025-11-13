.class public Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "NavigationBarGestureDetailedPreference.java"


# instance fields
.field private mA11yIdx:I

.field private mAnimationIdx:I

.field private mAnimationValues:[I

.field private mAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mBottomAnimationDescs:[I

.field private mHandler:Landroid/os/Handler;

.field private mIsWaiting:Z

.field private mLastAnimationIdx:I

.field private mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnclickListener:Landroid/view/View$OnClickListener;

.field private mSideAndBottomAnimationDescs:[[I

.field private mSwipeBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

.field private mSwipeFromBottom:Landroid/widget/RadioButton;

.field private mSwipeFromBottomAndSide:Landroid/widget/RadioButton;

.field private mSwipeFromBottomAndSideContainer:Landroid/widget/LinearLayout;

.field private mSwipeFromBottomContainer:Landroid/widget/LinearLayout;

.field private mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public static synthetic $r8$lambda$AZsZzvJExyposgWeLCdHg-KHzNw(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->lambda$new$3(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uy1SyYhZZDhSZfLB8_k-49ERPzU(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ezmoo8WEcQ0m7mhTA6HKLYFoQLM(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r2oCTVb8q6mWzkh8zIugmSJoBuc(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->lambda$playAnimation$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$yujXphXePOu8tavbZj4nVewut64(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 39
    sget p2, Lcom/android/settings/R$string;->navigationbar_swipe_from_bottom_description:I

    const/4 v0, 0x0

    aput p2, p1, v0

    sget p2, Lcom/android/settings/R$string;->navigationbar_swipe_from_bottom_description_for_voice_assistant:I

    const/4 v1, 0x1

    aput p2, p1, v1

    sget p2, Lcom/android/settings/R$string;->navigationbar_swipe_from_bottom_description_for_tablet:I

    const/4 v2, 0x2

    aput p2, p1, v2

    sget p2, Lcom/android/settings/R$string;->navigationbar_swipe_from_bottom_description_for_tablet_voice_assistant:I

    const/4 v3, 0x3

    aput p2, p1, v3

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mBottomAnimationDescs:[I

    new-array p1, v3, [[I

    new-array p2, v2, [I

    .line 45
    sget v4, Lcom/android/settings/R$string;->navigationbar_swipe_from_side_and_bottom_desc_1:I

    aput v4, p2, v0

    sget v4, Lcom/android/settings/R$string;->navigationbar_swipe_from_side_and_bottom_desc_1_a11y:I

    aput v4, p2, v1

    aput-object p2, p1, v0

    new-array p2, v2, [I

    sget v4, Lcom/android/settings/R$string;->navigationbar_swipe_from_side_and_bottom_desc_2:I

    aput v4, p2, v0

    sget v4, Lcom/android/settings/R$string;->navigationbar_swipe_from_side_and_bottom_desc_2_a11y:I

    aput v4, p2, v1

    aput-object p2, p1, v1

    new-array p2, v2, [I

    sget v4, Lcom/android/settings/R$string;->navigationbar_swipe_from_side_and_bottom_desc_3:I

    aput v4, p2, v0

    sget v4, Lcom/android/settings/R$string;->navigationbar_swipe_from_side_and_bottom_desc_3_a11y:I

    aput v4, p2, v1

    aput-object p2, p1, v2

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSideAndBottomAnimationDescs:[[I

    new-array p1, v3, [I

    .line 50
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationValues:[I

    .line 54
    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mIsWaiting:Z

    .line 56
    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 87
    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mOnclickListener:Landroid/view/View$OnClickListener;

    .line 98
    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void

    :array_0
    .array-data 4
        0x9b
        0x18b
        0x29a
    .end array-data
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 76
    iget v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    iget v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mA11yIdx:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->updateDescription(II)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mIsWaiting:Z

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 57
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->getFrame()I

    move-result p1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationValues:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-le p1, v2, :cond_2

    const/4 v2, 0x2

    aget v4, v0, v2

    if-lt p1, v4, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    aget v1, v0, v3

    if-gt p1, v1, :cond_1

    .line 63
    iput v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    goto :goto_1

    .line 66
    :cond_1
    iput v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    goto :goto_1

    .line 60
    :cond_2
    :goto_0
    iput v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    .line 69
    :goto_1
    iget v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    iget v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mLastAnimationIdx:I

    if-eq v1, v2, :cond_4

    .line 70
    aget v0, v0, v2

    if-gt v0, p1, :cond_3

    .line 71
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 72
    iput-boolean v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mIsWaiting:Z

    .line 74
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 75
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 81
    :cond_3
    iget p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mA11yIdx:I

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->updateDescription(II)V

    .line 84
    :cond_4
    :goto_2
    iget p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mLastAnimationIdx:I

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 3

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 89
    sget v0, Lcom/android/settings/R$id;->swipe_from_bottom_container:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 90
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottom:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 91
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottomAndSide:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 92
    :cond_0
    sget v0, Lcom/android/settings/R$id;->swipe_from_side_and_bottom_container:I

    if-ne p1, v0, :cond_1

    .line 93
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottom:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 94
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottomAndSide:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v0, 0x1

    .line 99
    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->setForceUpdateState(Z)V

    .line 100
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    .line 101
    sget v1, Lcom/android/settings/R$id;->swipe_from_bottom:I

    const/16 v2, 0x1d42

    const-string v3, "navigation_bar_gesture_detail_type"

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_1

    .line 103
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, v3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-virtual {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode()V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->getMetricsCategory()I

    move-result p0

    const-wide/16 p1, 0x0

    invoke-static {p0, v2, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    .line 111
    :cond_0
    sget v1, Lcom/android/settings/R$id;->swipe_from_side_and_bottom:I

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    .line 113
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-virtual {p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;->setInteractionMode()V

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->getMetricsCategory()I

    move-result p0

    const-wide/16 p1, 0x1

    invoke-static {p0, v2, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$playAnimation$4()V
    .locals 2

    .line 233
    iget v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    iget v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mA11yIdx:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->updateDescription(II)V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mIsWaiting:Z

    return-void
.end method

.method private setAnimationProperties(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 163
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_key_order"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 164
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "navigation_bar_gesture_hint"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    .line 166
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-nez v4, :cond_1

    .line 169
    sget v3, Lcom/android/settings/R$id;->navigationbar_gesture_bottom_hint_img:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/16 v4, 0x8

    .line 170
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    sget v3, Lcom/android/settings/R$id;->navigationbar_gesture_side_and_bottom_hint_img:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 172
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x2

    :cond_2
    or-int/2addr v2, v3

    .line 177
    sget v3, Lcom/android/settings/R$id;->navigationbar_swipe_from_bottom_textview:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 178
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mBottomAnimationDescs:[I

    aget v2, v5, v2

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    sget v2, Lcom/android/settings/R$id;->navigationbar_gesture_bottom_button_img:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez v0, :cond_4

    .line 183
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v1, :cond_3

    .line 184
    sget v0, Lcom/android/settings/R$drawable;->setting_gesture_navibar_01_rtl:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/android/settings/R$drawable;->setting_gesture_navibar_01:I

    .line 183
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 186
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v1, :cond_5

    .line 187
    sget v0, Lcom/android/settings/R$drawable;->setting_gesture_navibar_02_rtl:I

    goto :goto_2

    :cond_5
    sget v0, Lcom/android/settings/R$drawable;->setting_gesture_navibar_02:I

    .line 186
    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void
.end method

.method private updateDescription(II)V
    .locals 2

    .line 215
    sget v0, Lcom/android/settings/R$id;->navigationbar_swipe_from_side_and_bottom_textview:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 216
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSideAndBottomAnimationDescs:[[I

    aget-object p0, p0, p1

    aget p0, p0, p2

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d2e

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 129
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_detail_type"

    .line 136
    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getDefaultSettingsValue(Ljava/lang/String;)I

    move-result v2

    .line 135
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottomContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 139
    sget v1, Lcom/android/settings/R$id;->swipe_from_bottom_container:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottomContainer:Landroid/widget/LinearLayout;

    .line 140
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottomAndSideContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    .line 143
    sget v1, Lcom/android/settings/R$id;->swipe_from_side_and_bottom_container:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottomAndSideContainer:Landroid/widget/LinearLayout;

    .line 144
    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    sget v1, Lcom/android/settings/R$id;->sec_navigationbar_gesture_side_and_bottom:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->navigationbar_swipe_from_side_and_bottom_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottom:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 150
    sget v1, Lcom/android/settings/R$id;->swipe_from_bottom:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottom:Landroid/widget/RadioButton;

    if-nez v0, :cond_3

    .line 151
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottom:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 154
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottomAndSide:Landroid/widget/RadioButton;

    if-nez v1, :cond_6

    .line 155
    sget v1, Lcom/android/settings/R$id;->swipe_from_side_and_bottom:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottomAndSide:Landroid/widget/RadioButton;

    if-ne v0, v2, :cond_5

    .line 156
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottomAndSide:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 159
    :cond_6
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->setAnimationProperties(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public playAnimation()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    .line 228
    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mIsWaiting:Z

    if-nez v0, :cond_1

    .line 229
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public registerAnimationListener()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    .line 193
    sget v0, Lcom/android/settings/R$id;->navigationbar_gesture_side_and_bottom_animation:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_1

    .line 196
    sget v0, Lcom/android/settings/R$id;->navigationbar_gesture_bottom_animation:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_1
    const/4 v0, 0x0

    .line 198
    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    .line 199
    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mLastAnimationIdx:I

    .line 200
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mA11yIdx:I

    .line 202
    iget v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->updateDescription(II)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public unregisterAnimationListener()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAllUpdateListeners()V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieAnimationView;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method
