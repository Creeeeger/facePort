.class public Lcom/android/settings/gestures/GestureNavigationSettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mBackGestureInsetScales:[F

.field public mDefaultBackGestureInset:F

.field public mIndicatorView:Lcom/android/settings/gestures/BackGestureIndicatorView;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment$1;

    const v1, 0x7f1700a8

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "GestureNavigationSettingsFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6d4

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1700a8

    return p0
.end method

.method public final initSeekBarPreference(Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/LabeledSeekBarPreference;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/widget/SeekBarPreference;->mContinuousUpdates:Z

    iput v1, v0, Lcom/android/settings/widget/SeekBarPreference;->mHapticFeedbackMode:I

    const-string v2, "gesture_left_back_sensitivity"

    if-ne p1, v2, :cond_0

    const-string v2, "back_gesture_inset_scale_left"

    goto :goto_0

    :cond_0
    const-string v2, "back_gesture_inset_scale_right"

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v2, v4}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mBackGestureInsetScales:[F

    array-length v8, v7

    if-ge v6, v8, :cond_2

    aget v7, v7, v6

    sub-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v8, v7, v4

    if-gez v8, :cond_1

    move v5, v6

    move v4, v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v5, v1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    new-instance v1, Lcom/android/settings/gestures/GestureNavigationSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/gestures/GestureNavigationSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/gestures/GestureNavigationSettingsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v1, Lcom/android/settings/gestures/GestureNavigationSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/gestures/GestureNavigationSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/gestures/GestureNavigationSettingsFragment;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/settings/widget/LabeledSeekBarPreference;->mStopListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/android/settings/gestures/BackGestureIndicatorView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/gestures/BackGestureIndicatorView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mIndicatorView:Lcom/android/settings/gestures/BackGestureIndicatorView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10500d9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mDefaultBackGestureInset:F

    const p2, 0x10700a1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p2

    new-array v0, p2, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput-object v0, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mBackGestureInsetScales:[F

    const-string p1, "gesture_left_back_sensitivity"

    invoke-virtual {p0, p1}, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->initSeekBarPreference(Ljava/lang/String;)V

    const-string p1, "gesture_right_back_sensitivity"

    invoke-virtual {p0, p1}, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->initSeekBarPreference(Ljava/lang/String;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mIndicatorView:Lcom/android/settings/gestures/BackGestureIndicatorView;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/gestures/GestureNavigationSettingsFragment;->mIndicatorView:Lcom/android/settings/gestures/BackGestureIndicatorView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr p0, v2

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const v3, 0x1000018

    or-int/2addr p0, v3

    const/4 v3, -0x3

    const/16 v4, 0x7f6

    invoke-direct {v2, v4, p0, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    const-string p0, "BackGestureIndicatorView"

    invoke-virtual {v2, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    iput-object p0, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
