.class public Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mA11yIdx:I

.field public mAnimationIdx:I

.field public final mAnimationValues:[I

.field public final mAnimatorListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda1;

.field public final mBottomAnimationDescs:[I

.field public final mHandler:Landroid/os/Handler;

.field public mIsWaiting:Z

.field public mLastAnimationIdx:I

.field public mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

.field public final mOnCheckedChangeListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda3;

.field public final mOnclickListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda2;

.field public mPreviewRunnable:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda0;

.field public final mSideAndBottomAnimationDescs:[[I

.field public mSwipeBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

.field public mSwipeFromBottom:Landroid/widget/RadioButton;

.field public mSwipeFromBottomAndSide:Landroid/widget/RadioButton;

.field public mSwipeFromBottomAndSideContainer:Landroid/widget/LinearLayout;

.field public mSwipeFromBottomContainer:Landroid/widget/LinearLayout;

.field public mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mHandler:Landroid/os/Handler;

    const p1, 0x7f141925

    const p2, 0x7f141928

    const v0, 0x7f141926

    const v1, 0x7f141927

    filled-new-array {p1, p2, v0, v1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mBottomAnimationDescs:[I

    const p1, 0x7f14192b

    const p2, 0x7f14192c

    filled-new-array {p1, p2}, [I

    move-result-object p1

    const p2, 0x7f14192d

    const v0, 0x7f14192e

    filled-new-array {p2, v0}, [I

    move-result-object p2

    const v0, 0x7f14192f

    const v1, 0x7f141930

    filled-new-array {v0, v1}, [I

    move-result-object v0

    filled-new-array {p1, p2, v0}, [[I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSideAndBottomAnimationDescs:[[I

    const/16 p1, 0x29a

    const/16 p2, 0x9b

    const/16 v0, 0x18b

    filled-new-array {p2, v0, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationValues:[I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mIsWaiting:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mPreviewRunnable:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimatorListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda1;

    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mOnclickListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda2;

    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mOnCheckedChangeListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda3;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigation_bar_gesture_detail_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottomContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    const v1, 0x7f0a0f91

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottomContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mOnclickListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottomAndSideContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    const v1, 0x7f0a0f93

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottomAndSideContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mOnclickListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda2;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0d73

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f141931

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottom:Landroid/widget/RadioButton;

    if-nez v1, :cond_4

    const v1, 0x7f0a0f90

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottom:Landroid/widget/RadioButton;

    if-nez v0, :cond_3

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottom:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mOnCheckedChangeListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda3;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottomAndSide:Landroid/widget/RadioButton;

    if-nez v1, :cond_6

    const v1, 0x7f0a0f92

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottomAndSide:Landroid/widget/RadioButton;

    if-ne v0, v2, :cond_5

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeFromBottomAndSide:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mOnCheckedChangeListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->setAnimationProperties(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mPreviewRunnable:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda0;

    if-nez v0, :cond_7

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;Landroidx/preference/PreferenceViewHolder;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mPreviewRunnable:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda0;

    :cond_7
    return-void
.end method

.method public final setAnimationProperties(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureSettingsUtil;->getPreviewAnimationResId(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureSettingsUtil;->getPreviewAnimationResId(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    const v1, 0x7f0a0a34

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mBottomAnimationDescs:[I

    aget p0, p0, v0

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateDescription(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0a35

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

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
