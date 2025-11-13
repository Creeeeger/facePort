.class public Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mAdaptiveDisplayView:Landroid/view/View;

.field public final mBatteryInfoReceiver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$20;

.field public mBatteryLevel:I

.field public mBlueLabel:Landroid/widget/TextView;

.field public final mBluelightFilterObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

.field public mContext:Landroid/content/Context;

.field public mCustomSeekBarBlue:Landroid/widget/SeekBar;

.field public final mCustomSeekBarBlueFocusChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;

.field public final mCustomSeekBarBlueSeekBarChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;

.field public mCustomSeekBarGreen:Landroid/widget/SeekBar;

.field public final mCustomSeekBarGreenFocusChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;

.field public final mCustomSeekBarGreenSeekBarChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;

.field public mCustomSeekBarRed:Landroid/widget/SeekBar;

.field public final mCustomSeekBarRedFocusChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;

.field public final mCustomSeekBarRedSeekBarChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;

.field public final mDTBlueObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

.field public final mDTGreenObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

.field public final mDTRedObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

.field public mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mEadObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

.field public mEdgeColorBalance:Landroid/widget/LinearLayout;

.field public mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

.field public mEdgeColorBalanceSubText:Landroid/widget/TextView;

.field public mEdgeColorBalanceTitleText:Landroid/widget/TextView;

.field public mGreenLabel:Landroid/widget/TextView;

.field public mIsFocusableBlue:Z

.field public mIsFocusableGreen:Z

.field public mIsFocusableRed:Z

.field public mIsSupportAdvancedWhiteBalance:Z

.field public mIsSupportVividness:Z

.field public mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field public mPointArea:Landroid/widget/LinearLayout;

.field public mPreviewLayout:Landroid/widget/RelativeLayout;

.field public mProgressBlueExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mProgressBlueShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mProgressGreenExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mProgressGreenShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mProgressRedExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mProgressRedShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mRedLabel:Landroid/widget/TextView;

.field public mThumbBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mThumbBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mThumbGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mThumbGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mThumbRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mThumbRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mTickBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mTickBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mTickGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mTickGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mTickRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mTickRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

.field public mViewPagerAdapter:Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

.field public mVividnessIntensity:Landroid/widget/LinearLayout;

.field public mVividnessIntensitySeekbar:Lcom/android/settings/widget/SecNewModeSeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$21;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsSupportAdvancedWhiteBalance:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsSupportVividness:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableRed:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableGreen:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsFocusableBlue:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceBatteryCheckDialog:Landroid/app/AlertDialog;

    iput v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBatteryLevel:I

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBluelightFilterObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x4

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEadObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTRedObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTGreenObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTBlueObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRedFocusChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRedSeekBarChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreenFocusChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreenSeekBarChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlueFocusChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlueSeekBarChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;

    new-instance v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$20;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$20;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBatteryInfoReceiver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$20;

    return-void
.end method


# virtual methods
.method public final createAdaptiveDisplayView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "SecAdaptiveDisplaySettings"

    const-string v7, "createAdaptiveDisplayView()"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isScrenModeTabletLayout(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v7

    if-eqz v7, :cond_1

    const v7, 0x7f0d089d

    invoke-virtual {v1, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    goto :goto_0

    :cond_1
    const v7, 0x7f0d089c

    invoke-virtual {v1, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    :goto_0
    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const/16 v7, 0xf

    invoke-virtual {v2, v7}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060738

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iget-object v8, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v8

    const v10, 0x7f0a0a4e

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isScrenModeTabletLayout(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8, v3, v3, v3}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v10, 0x7f0a0d08

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/core/widget/NestedScrollView;

    iput-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/core/widget/NestedScrollView;

    iput-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    :goto_2
    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2, v8, v3, v8, v3}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v2, v7, v10}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->semSetRoundedCornerOffset(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v10, 0x7f0a0cc6

    invoke-virtual {v2, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v10, v8, v3, v8, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0xc

    invoke-virtual {v2, v8}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v2, v8, v10}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_4
    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v8, 0x7f0a0b13

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    iput-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    new-instance v2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

    iget-object v8, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

    iget-object v8, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    invoke-virtual {v8, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    iget-object v8, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

    iget-object v8, v8, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    new-instance v8, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$1;

    invoke-direct {v8, v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$1;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    invoke-virtual {v2, v8}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v8, 0x7f0a0b94

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPreviewLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    const v10, 0x3ee66666    # 0.45f

    mul-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_5
    iget-object v8, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    const v10, 0x3eb33333    # 0.35f

    mul-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->semSetRoundedCorners(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPreviewLayout:Landroid/widget/RelativeLayout;

    iget-object v8, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout;->semSetRoundedCornerColor(II)V

    :cond_6
    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v8, 0x7f0a0b6b

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPointArea:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v8, v3

    :goto_4
    if-ge v8, v2, :cond_7

    const v10, 0x7f0d0991

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iget-object v11, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f141bb4

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v12, v8, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v13, v14}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v11, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$2;

    invoke-direct {v11, v0, v8}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$2;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v8, v12

    goto :goto_4

    :cond_7
    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v8, 0x7f080a0c

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/16 v8, 0x8

    if-ne v1, v5, :cond_9

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_a
    sget-object v1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const-string/jumbo v1, "onCreate():  mIsCustomEdgeBalanceSupported=false"

    invoke-static {v6, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_display_temperature_custom"

    const/4 v10, -0x1

    invoke-static {v1, v2, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "init DB : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "sec_display_temperature_blue"

    const-string/jumbo v13, "sec_display_temperature_green"

    const-string/jumbo v14, "sec_display_temperature_red"

    if-eq v1, v10, :cond_b

    goto :goto_5

    :cond_b
    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v14, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v10, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v13, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iget-object v15, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-static {v15, v11, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const-string v8, ", "

    invoke-static {v12, v8, v1, v10, v8}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_c

    if-nez v10, :cond_c

    if-nez v15, :cond_c

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_c
    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_5
    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v2, 0x7f0a0c6b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mRedLabel:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v2, 0x7f0a047a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    const/16 v2, 0xb

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v14, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, v2

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v8, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRedFocusChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v8, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRedSeekBarChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v6, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    new-instance v6, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;

    invoke-direct {v6, v0, v3}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_d
    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v6, 0x7f0a06ee

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGreenLabel:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v6, 0x7f0a0478

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v13, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, v2

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v8, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreenFocusChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v8, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreenSeekBarChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v6, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    new-instance v6, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;

    invoke-direct {v6, v0, v5}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_e
    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v6, 0x7f0a01fc

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBlueLabel:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v6, 0x7f0a0476

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v11, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, v2

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlueFocusChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$13;

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object v6, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlueSeekBarChangeListener:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$14;

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    new-instance v2, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;

    invoke-direct {v2, v0, v4}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$6;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;I)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_f
    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v2, 0x7f0a058a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v2, 0x7f0a058c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceTitleText:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v2, 0x7f0a058b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceSubText:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f14233c

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$9;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$9;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v2, 0x7f0a046e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :cond_12
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportVividness()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v2, 0x7f0a1111

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mVividnessIntensity:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v2, 0x7f0a1112

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v2, 0x7f0a1113

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/SecNewModeSeekBar;

    iput-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mVividnessIntensitySeekbar:Lcom/android/settings/widget/SecNewModeSeekBar;

    if-eqz v1, :cond_13

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mVividnessIntensitySeekbar:Lcom/android/settings/widget/SecNewModeSeekBar;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMin(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mVividnessIntensitySeekbar:Lcom/android/settings/widget/SecNewModeSeekBar;

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mVividnessIntensitySeekbar:Lcom/android/settings/widget/SecNewModeSeekBar;

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v4, 0x7f080a57

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vividness_intensity"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mVividnessIntensitySeekbar:Lcom/android/settings/widget/SecNewModeSeekBar;

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mVividnessIntensitySeekbar:Lcom/android/settings/widget/SecNewModeSeekBar;

    new-instance v2, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$5;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$5;-><init>(Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    :cond_13
    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_14

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    const v3, 0x7f0a0f2c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    iget-object v0, v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mAdaptiveDisplayView:Landroid/view/View;

    return-object v0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/samsung/android/settings/display/NewModePreview;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d1a

    return p0
.end method

.method public final isTemperatureSettingEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "greyscale_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "ead_enabled"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a091b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->createAdaptiveDisplayView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->updateAdvancedColorBalanceComponents()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->updateVividnessComponents()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsSupportAdvancedWhiteBalance:Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportVividness()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsSupportVividness:Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a21

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a22

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressRedShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a34

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a35

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a41

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a42

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickRedFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a1a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a1b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressGreenShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a32

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a33

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a38

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a39

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickGreenFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a13

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a14

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mProgressBlueShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a2d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a2e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mThumbBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a36

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    const v0, 0x7f080a37

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mTickBlueFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const-string p0, "SecAdaptiveDisplaySettings"

    const-string/jumbo p1, "onCreate()"

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->createAdaptiveDisplayView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroyView()V
    .locals 4

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a091b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const p0, 0x7f0a0a4e

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v1, "SecAdaptiveDisplaySettings"

    if-eqz p0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDestroyView: layout = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "onDestroyView: layout = null"

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsSupportAdvancedWhiteBalance:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsSupportVividness:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBluelightFilterObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEadObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsSupportAdvancedWhiteBalance:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTRedObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTGreenObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTBlueObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBatteryInfoReceiver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$20;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    const-string v0, "SecAdaptiveDisplaySettings"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->updateAdvancedColorBalanceComponents()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->updateVividnessComponents()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsSupportAdvancedWhiteBalance:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsSupportVividness:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBluelightFilterObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ead_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEadObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsSupportAdvancedWhiteBalance:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_red"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTRedObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_green"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTGreenObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_blue"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mDTBlueObserver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$3;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBatteryInfoReceiver:Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings$20;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public final updateAdvancedColorBalanceComponents()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsSupportAdvancedWhiteBalance:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->isTemperatureSettingEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mRedLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mGreenLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mBlueLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mEdgeColorBalanceSubText:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mVividnessIntensity:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mVividnessIntensitySeekbar:Lcom/android/settings/widget/SecNewModeSeekBar;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_b
    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sec_display_temperature_red"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sec_display_temperature_green"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "sec_display_temperature_blue"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, 0xb

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_e
    return-void
.end method

.method public final updateVividnessComponents()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mIsSupportVividness:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->isTemperatureSettingEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mVividnessIntensity:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;->mVividnessIntensitySeekbar:Lcom/android/settings/widget/SecNewModeSeekBar;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method
