.class public Lcom/samsung/android/settings/display/NewModePreview;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mAdapter:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

.field public mAdvancedSettingButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

.field public final mBatteryInfoReceiver:Lcom/samsung/android/settings/display/NewModePreview$8;

.field public final mBluelightFilterObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

.field public mContext:Landroid/content/Context;

.field public mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mEadObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

.field public mIncompatibleSettingDialog:Landroid/app/AlertDialog;

.field public mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field public mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field public mPointArea:Landroid/widget/LinearLayout;

.field public mPresetCool:Landroid/widget/TextView;

.field public mPresetSeekBar:Landroid/widget/SeekBar;

.field public mPresetWarm:Landroid/widget/TextView;

.field public mPreviewLayout:Landroid/widget/RelativeLayout;

.field public mProgressExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mProgressShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mQuestionIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field public final mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

.field public mScreenModeList:Landroidx/recyclerview/widget/RecyclerView;

.field public mScreenModeView:Landroid/view/View;

.field public mSeekBarLayout:Landroid/widget/LinearLayout;

.field public final mSeekBarObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

.field public mSupportNaturalModeWithoutWcgMode:Z

.field public mSupportVividPlusMode:Z

.field public mSupportWcgModeOnAmoled:Z

.field public mThumbFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mThumbFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mTickFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mTickFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field public mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

.field public mViewPagerAdapter:Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

.field public mVividContainer:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/display/NewModePreview$7;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/NewModePreview;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mIncompatibleSettingDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportWcgModeOnAmoled:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportVividPlusMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportNaturalModeWithoutWcgMode:Z

    new-instance v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mNameStringId:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->mDBValue:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    new-instance v0, Lcom/samsung/android/settings/display/NewModePreview$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/NewModePreview$8;-><init>(Lcom/samsung/android/settings/display/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBatteryInfoReceiver:Lcom/samsung/android/settings/display/NewModePreview$8;

    new-instance v0, Lcom/samsung/android/settings/display/NewModePreview$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/display/NewModePreview$9;-><init>(Lcom/samsung/android/settings/display/NewModePreview;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBluelightFilterObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

    new-instance v0, Lcom/samsung/android/settings/display/NewModePreview$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/display/NewModePreview$9;-><init>(Lcom/samsung/android/settings/display/NewModePreview;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mEadObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mEadObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mEadObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

    new-instance v0, Lcom/samsung/android/settings/display/NewModePreview$9;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/display/NewModePreview$9;-><init>(Lcom/samsung/android/settings/display/NewModePreview;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSeekBarObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

    return-void
.end method

.method public static getCurrentScreenMode(Landroid/content/ContentResolver;)I
    .locals 2

    const-string/jumbo v0, "screen_mode_automatic_setting"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const-string/jumbo v0, "screen_mode_setting"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final createScreenModeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isScrenModeTabletLayout(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0d0913

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    goto :goto_0

    :cond_1
    const v1, 0x7f0d0912

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const/16 v1, 0xf

    invoke-virtual {p2, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060738

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const v2, 0x7f0a0b13

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    iput-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    new-instance p2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPagerAdapter:Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    invoke-virtual {v2, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPagerAdapter:Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    new-instance v2, Lcom/samsung/android/settings/display/NewModePreview$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/NewModePreview$1;-><init>(Lcom/samsung/android/settings/display/NewModePreview;)V

    invoke-virtual {p2, v2}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v4, 0x0

    if-ne p2, v2, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    move p2, v4

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v5

    const v6, 0x7f0a0d08

    const v7, 0x7f0a0a50

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isScrenModeTabletLayout(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v5, v4, v4, v4}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    iput-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    iput-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    :goto_2
    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p2, v5, v4, v5, v4}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p2, v1, v7}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->semSetRoundedCornerOffset(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v7, 0x7f0a0cc6

    invoke-virtual {p2, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v7, v5, v4, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0xc

    invoke-virtual {p2, v5}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p2, v5, v7}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_4
    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const v5, 0x7f0a0b94

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPreviewLayout:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/display/NewModePreview;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    const v7, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/display/NewModePreview;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    const v7, 0x3eb33333    # 0.35f

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPreviewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->semSetRoundedCorners(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPreviewLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/widget/RelativeLayout;->semSetRoundedCornerColor(II)V

    :cond_6
    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const v5, 0x7f0a0b6b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPointArea:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPagerAdapter:Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;

    iget-object p2, p2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v5, v4

    :goto_4
    if-ge v5, p2, :cond_7

    const v7, 0x7f0d0991

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f141bb4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v8, Lcom/samsung/android/settings/display/NewModePreview$2;

    invoke-direct {v8, p0, v5}, Lcom/samsung/android/settings/display/NewModePreview$2;-><init>(Lcom/samsung/android/settings/display/NewModePreview;I)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v5, v9

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v5, 0x7f080a0c

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/16 v5, 0x8

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mViewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const p2, 0x7f0a0986

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mAdapter:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iput-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    new-instance p1, Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/display/NewModePreview$VerticalLineItemDecoration;-><init>(Lcom/samsung/android/settings/display/NewModePreview;Landroid/content/Context;)V

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const p2, 0x7f0a1110

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mVividContainer:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const p2, 0x7f0a00c4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "screen_mode_automatic_setting"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_b

    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mVividContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object p1, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mVividContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object p1, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v2, :cond_c

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const p2, 0x7f0a0d91

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSeekBarLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSeekBarLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const p2, 0x7f0a0b87

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetCool:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const p2, 0x7f0a0b88

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetWarm:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const p2, 0x7f0a0c1e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mQuestionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v0, 0x7f1426c3

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mQuestionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance p2, Lcom/samsung/android/settings/display/NewModePreview$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/display/NewModePreview$3;-><init>(Lcom/samsung/android/settings/display/NewModePreview;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const p2, 0x7f0a0d97

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_e

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v0, 0x7f1426d2

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    new-instance p2, Lcom/samsung/android/settings/display/NewModePreview$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/display/NewModePreview$4;-><init>(Lcom/samsung/android/settings/display/NewModePreview;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "sec_display_preset_index"

    invoke-static {p1, p2, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "current preset : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ModePreview"

    invoke-static {v0, p2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    rsub-int/lit8 p1, p1, 0x4

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    new-instance p2, Lcom/samsung/android/settings/display/NewModePreview$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/display/NewModePreview$5;-><init>(Lcom/samsung/android/settings/display/NewModePreview;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_e
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    const p2, 0x7f0a00c2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRoundButtonView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mAdvancedSettingButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeView:Landroid/view/View;

    return-object p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    sget-object p0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const/16 p0, 0x1079

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_display"

    return-object p0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00c2

    if-ne p1, v0, :cond_0

    const-string p1, "ModePreview"

    const-string v0, "Adaptive display settings icon onClick"

    invoke-static {p1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/samsung/android/settings/display/SecAdaptiveDisplaySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 v0, 0x0

    const v2, 0x7f1426b5

    invoke-virtual {p1, v2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewModePreview;->getMetricsCategory()I

    const/16 p0, 0x1079

    iput p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a091b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/display/NewModePreview;->createScreenModeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewModePreview;->setEnabledExclusiveSettings()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 12

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1426cb

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const-string v0, "mDNIe"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportWcgModeOnAmoled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportWcgModeOnAmoled:Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportVividPlusMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportVividPlusMode:Z

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNaturalModeWithoutWcgMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportNaturalModeWithoutWcgMode:Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    const-string v0, "SEC_FLOATING_FEATURE_LCD_SUPPORT_SCREEN_MODE_TYPE"

    const v1, 0x7f1426ba

    const v2, 0x7f1426b6

    const/4 v3, 0x0

    const v4, 0x7f1426c8

    const v5, 0x7f1426b8

    const/4 v6, 0x4

    const v7, 0x7f1426d1

    const v8, 0x7f1426d0

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportAmoledDisplay()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportWcgModeOnAmoled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v7, v6}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v8, v10}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    goto/16 :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportNaturalModeWithoutWcgMode:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v7, v6}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v8, v9}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v4, v3}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v2, v11}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v1, v9}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v11, :cond_a

    iget-boolean p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportWcgModeOnAmoled:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v7, v6}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v8, v10}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    goto/16 :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportNaturalModeWithoutWcgMode:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v7, v6}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v8, v9}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportAmoledDisplay()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportWcgModeOnAmoled:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v7, v6}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v8, v10}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    goto :goto_0

    :cond_5
    iget-boolean p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportNaturalModeWithoutWcgMode:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v7, v6}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v8, v9}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v4, v3}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v2, v11}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v1, v9}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v9, :cond_a

    iget-boolean p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportWcgModeOnAmoled:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v7, v6}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v8, v10}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    goto :goto_0

    :cond_8
    iget-boolean p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportNaturalModeWithoutWcgMode:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v7, v6}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v8, v9}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    const v0, 0x7f1426c6

    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    const v0, 0x7f1426c7

    invoke-virtual {p1, v0, v11}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-virtual {p1, v1, v9}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->addItem(II)V

    :cond_a
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/display/NewModePreview;->getCurrentScreenMode(Landroid/content/ContentResolver;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCreate() selectedMode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModePreview"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mScreenModeItems:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;-><init>(Lcom/samsung/android/settings/display/NewModePreview;Landroid/content/Context;Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mAdapter:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v0, 0x7f080a48

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mProgressExpandAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v0, 0x7f080a49

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mProgressShrinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v0, 0x7f080a30

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mThumbFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v0, 0x7f080a31

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mThumbFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v0, 0x7f080a4f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mTickFadeInAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    const v0, 0x7f080a50

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mTickFadeOutAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/display/NewModePreview;->createScreenModeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

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

    const p0, 0x7f0a0a50

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v1, "ModePreview"

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
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/NewModePreview;->getCurrentScreenMode(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/NewModePreview;->setScreenMode(I)V

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/NewModePreview;->setEnabledExclusiveSettings()V

    return-void
.end method

.method public final onStart()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBatteryInfoReceiver:Lcom/samsung/android/settings/display/NewModePreview$8;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBluelightFilterObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ead_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mEadObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ead_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mEadObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ead_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview;->mEadObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_preset_index"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSeekBarObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/NewModePreview;->getCurrentScreenMode(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/NewModePreview;->setScreenMode(I)V

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBatteryInfoReceiver:Lcom/samsung/android/settings/display/NewModePreview$8;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mBluelightFilterObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mEadObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mEadObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mEadObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSeekBarObserver:Lcom/samsung/android/settings/display/NewModePreview$9;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "ModePreview"

    const-string/jumbo v0, "unregisterReceiver exception"

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final setEnabledExclusiveSettings()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isAccessibilityVisionEnabled(Landroid/content/Context;)Z

    move-result v3

    sget-object v4, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ead_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetCool:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetWarm:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mPresetSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mAdvancedSettingButton:Lcom/samsung/android/settings/widget/SecRoundButtonView;

    const/16 v3, 0x8

    if-eqz v0, :cond_8

    if-eqz v1, :cond_7

    move v4, v2

    goto :goto_3

    :cond_7
    move v4, v3

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mQuestionIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_a

    if-eqz v1, :cond_9

    move v2, v3

    :cond_9
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method public final setScreenMode(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportWcgModeOnAmoled:Z

    const-string/jumbo v1, "set Mdnie ScreenMode : "

    const-string v2, "ModePreview"

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const-string/jumbo p1, "set Mdnie ScreenMode WCG : 3 to 0"

    invoke-static {v2, p1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportVividPlusMode:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setDisplayColor(I)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportVividPlusMode:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setDisplayColor(I)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mSupportNaturalModeWithoutWcgMode:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    const-string/jumbo p1, "set Mdnie ScreenMode to Natural without WCG : 2"

    invoke-static {v2, p1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/display/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    :goto_0
    return-void
.end method
