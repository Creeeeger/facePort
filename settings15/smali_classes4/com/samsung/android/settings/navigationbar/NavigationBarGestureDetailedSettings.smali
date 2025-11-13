.class public Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field public mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

.field public final mBackGestureSensitivityObserver:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;

.field public mBlockGestureWithSPenPreference:Landroidx/preference/SecSwitchPreference;

.field public mButtonDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field public final mButtonOrderObserver:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;

.field public mButtonOrderPreference:Landroidx/preference/SecPreferenceCategory;

.field public mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

.field public mContext:Landroid/content/Context;

.field public mDetailedTypeDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field public mDetailedTypePref:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

.field public mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

.field public final mHandler:Landroid/os/Handler;

.field public mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public mIsTaskBarEnabled:Z

.field public mLastConfiguration:Landroid/content/res/Configuration;

.field public final mOverlayChangedReceiver:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$1;

.field public mOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

.field public final mRotationWatcher:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$4;

.field public mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$5;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mOverlayChangedReceiver:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$1;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGestureSensitivityObserver:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonOrderObserver:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$4;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mRotationWatcher:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$4;

    return-void
.end method


# virtual methods
.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_display"

    return-object p0
.end method

.method public final initPreferences$9()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->updateTitle$2$1()V

    const v0, 0x7f17012c

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isTaskBarEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIsTaskBarEnabled:Z

    const-string v0, "button_order_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonOrderPreference:Landroidx/preference/SecPreferenceCategory;

    const-string v0, "button_position"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIsTaskBarEnabled:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->updateButtonPosition(Z)V

    :cond_0
    const-string v0, "button_divider"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string v0, "block_gestures_with_spen"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBlockGestureWithSPenPreference:Landroidx/preference/SecSwitchPreference;

    const-string v0, "back_gesture"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mValue:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setSeekBarContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    iput-object v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    :cond_1
    const-string v0, "detailed_type"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedTypePref:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0a30

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_2
    iget-object v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0a2f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_3
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    iput v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mLastAnimationIdx:I

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mA11yIdx:I

    iget v2, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimationIdx:I

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->updateDescription(II)V

    iget-object v1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimatorListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda1;

    iget-object v1, v1, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v1, v1, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_4
    const-string v0, "detailed_type_divider"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedTypeDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const-string v0, "gesture_hint"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

    const-string/jumbo v0, "switch_apps_when_hint_hidden"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBlockGestureWithSPenPreference:Landroidx/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mLastConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->initPreferences$9()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->updatePreferences$9()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput v1, p1, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mCutoutL:I

    iput v1, p1, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mCutoutR:I

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d07c3

    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p1, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLayout:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    const/16 v4, 0x1e

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;-><init>(Landroidx/fragment/app/FragmentActivity;I)V

    iput-object v3, p1, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mBottomDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    const v4, 0x7f0a07e6

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    const/16 v4, 0xa

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;-><init>(Landroidx/fragment/app/FragmentActivity;I)V

    iput-object v3, p1, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mLeftDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    new-instance v4, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    const/16 v5, 0x14

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;-><init>(Landroidx/fragment/app/FragmentActivity;I)V

    iput-object v4, p1, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRightDrawable:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorDrawable;

    const v0, 0x7f0a07e9

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x7f0a07ea

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mWindowManager:Landroid/view/WindowManager;

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    iput p1, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mRotation:I

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mRotationWatcher:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$4;

    invoke-interface {p1, v0, v1}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mLastConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->initPreferences$9()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedTypePref:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v1, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v1}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeAllUpdateListeners()V

    iget-object v1, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->progressUpdateListener:Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mSwipeSideAndBottomAnimator:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;->mAnimatorListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference$$ExternalSyntheticLambda1;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v0, v0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/utils/LottieValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    invoke-virtual {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->updatePreferences$9()V

    return-void
.end method

.method public final onStart()V
    .locals 9

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mOverlayChangedReceiver:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$1;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigation_bar_back_gesture_sensitivity"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGestureSensitivityObserver:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigationbar_key_order"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonOrderObserver:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mOverlayChangedReceiver:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGestureSensitivityObserver:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonOrderObserver:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$2;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mRotationWatcher:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$4;

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final updateButtonPosition(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    const v0, 0x7f0301aa

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    const p1, 0x7f0301ab

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    const v0, 0x7f030121

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    const p1, 0x7f030122

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntryValues(I)V

    :goto_0
    return-void
.end method

.method public final updatePreferences$9()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isNavigationBarEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "NavigationBarGestureDetailedSettings"

    if-nez v0, :cond_0

    const-string v0, "Navigation bar settings can\'t open in DeX mode or non-primary user."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getNavBarMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x11101e7

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "navigation_bar_block_gestures_with_spen"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isTaskBarEnabled(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "navigationbar_key_position"

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    const/16 v9, 0x64

    iget-object v10, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedTypePref:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

    invoke-virtual {v10, v9}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedTypeDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonOrderPreference:Landroidx/preference/SecPreferenceCategory;

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    const/16 v10, 0x67

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const/16 v10, 0x68

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

    const/16 v10, 0x69

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    const/16 v10, 0x6a

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBlockGestureWithSPenPreference:Landroidx/preference/SecSwitchPreference;

    const/16 v10, 0x6b

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    const/16 v10, 0x6c

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setOrder(I)V

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBlockGestureWithSPenPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedTypePref:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedTypeDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonOrderPreference:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    const-string v0, "This device does not support button position"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIsTaskBarEnabled:Z

    if-eq v0, v6, :cond_4

    iput-boolean v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIsTaskBarEnabled:Z

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->updateButtonPosition(Z)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    iget-boolean v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIsTaskBarEnabled:Z

    if-eqz v1, :cond_6

    if-nez v7, :cond_5

    move v3, v4

    :cond_5
    move v7, v3

    :cond_6
    invoke-virtual {v0, v7}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto/16 :goto_7

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonOrderPreference:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonPositionPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isGestureHintOn(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "navigationbar_switch_apps_when_hint_hidden"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_8

    move v4, v3

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "navigation_bar_gesture_detail_type"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string v9, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v7, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBlockGestureWithSPenPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v8, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_3

    :cond_9
    const-string v7, "This device does not support S pen."

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBlockGestureWithSPenPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v8, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBlockGestureWithSPenPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    invoke-virtual {v1, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;->updateDetailInfo()V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mIndicatorView:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;

    iput-boolean v2, v1, Lcom/samsung/android/settings/navigationbar/NavigationBarBackGestureIndicatorView;->mNavBarCanMove:Z

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSupportLegacyFeatures(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedTypePref:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

    invoke-virtual {v8, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;)V

    const-wide/16 v9, 0x64

    invoke-virtual {v1, v2, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedTypeDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v8, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v8, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    if-ne v6, v3, :cond_a

    const v2, 0x7f14190e

    goto :goto_4

    :cond_a
    const v2, 0x7f14190f

    :goto_4
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mContext:Landroid/content/Context;

    if-ne v6, v3, :cond_b

    const v2, 0x7f141935

    goto :goto_5

    :cond_b
    const v2, 0x7f141937

    :goto_5
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v8, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_6

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v8, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :goto_6
    if-nez v6, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonOrderPreference:Landroidx/preference/SecPreferenceCategory;

    invoke-virtual {v8, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    if-nez v0, :cond_d

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isSupportSearcle()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mBackGesturePref:Lcom/samsung/android/settings/navigationbar/NavigationBarBackGesturePreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mButtonDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedTypePref:Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mDetailedTypeDivider:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mGestureHintPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->mSwitchAppsWhenHintHidden:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v8, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_10
    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureDetailedSettings;->updateTitle$2$1()V

    return-void
.end method

.method public final updateTitle$2$1()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getNavBarMode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v0, 0x7f141902

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v0, 0x7f141908

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_2
    :goto_0
    return-void
.end method
