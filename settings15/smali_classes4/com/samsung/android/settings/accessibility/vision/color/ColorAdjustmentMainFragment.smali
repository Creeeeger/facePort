.class public Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController$OnChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final sControllers:Ljava/util/List;


# instance fields
.field public colorPreviewAdapter:Lcom/samsung/android/settings/accessibility/vision/color/ColorPreviewAdapter;

.field public final contentObserver:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$1;

.field public mPersonalizedPref:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;

.field public mPointArea:Landroid/widget/LinearLayout;

.field public final mResetButtonClickListener:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;

.field public mSeekBarPref:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

.field public viewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->sControllers:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$4;

    const v1, 0x7f170015

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->contentObserver:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$1;

    new-instance v0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;-><init>(Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mResetButtonClickListener:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;

    return-void
.end method

.method public static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 6

    sget-object v0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->sControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->sControllers:Ljava/util/List;

    new-instance v5, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;

    invoke-direct {v5, p0, p1, v3}, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->sControllers:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final getExclusiveTaskName()Ljava/lang/String;
    .locals 0

    const-string p0, "color_blind"

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xc08

    return p0
.end method

.method public final getPreferenceOrderList()Ljava/util/List;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "top_intro"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "description_preference"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_COLOR_ADJUSTMENT_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "empty_category_1"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "seek_bar_preference"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "empty_category_2"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "use_service"

    const-string v1, "color_adjustment_gray_scale"

    const-string v2, "color_adjustment_protan"

    const-string v3, "color_adjustment_deutan"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "color_adjustment_tritan"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "color_adjustment_personalized"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170015

    return p0
.end method

.method public final getShortcutPreferenceKey()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_COLOR_ADJUSTMENT_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    invoke-static {v0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f150692

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f150694

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_COLOR_ADJUSTMENT_SHORTCUT:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    const v0, 0x7f14097c

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageName:Ljava/lang/CharSequence;

    iput v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageNameResourceId:I

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "seek_bar_preference"

    invoke-virtual {p0, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mSeekBarPref:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p3, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mSeekBarPref:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    const v0, 0x7f141246

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p3, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->leftLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p3, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->leftLabel:Ljava/lang/CharSequence;

    invoke-virtual {p3}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mSeekBarPref:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    const v0, 0x7f141244

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p3, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->rightLabel:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p3, Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;->rightLabel:Ljava/lang/CharSequence;

    invoke-virtual {p3}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    const-string p3, "color_adjustment_personalized"

    invoke-virtual {p0, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPersonalizedPref:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "color_blind_test"

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPersonalizedPref:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mResetButtonClickListener:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;

    iget-object v2, p3, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;->mResetBtnClickListener:Landroid/view/View$OnClickListener;

    if-eq v2, v0, :cond_2

    iput-object v0, p3, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;->mResetBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    const p3, 0x7f0a0b6b

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPointArea:Landroid/widget/LinearLayout;

    new-instance p3, Lcom/samsung/android/settings/accessibility/vision/color/ColorPreviewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/samsung/android/settings/accessibility/vision/color/ColorPreviewAdapter;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->colorPreviewAdapter:Lcom/samsung/android/settings/accessibility/vision/color/ColorPreviewAdapter;

    const p3, 0x7f0a0b13

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->viewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->colorPreviewAdapter:Lcom/samsung/android/settings/accessibility/vision/color/ColorPreviewAdapter;

    invoke-virtual {p3, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p3, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->viewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->colorPreviewAdapter:Lcom/samsung/android/settings/accessibility/vision/color/ColorPreviewAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/vision/color/ColorPreviewAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->updatePageIndicatorDescription$1(I)V

    iget-object p3, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->viewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    new-instance v0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;)V

    invoke-virtual {p3, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const p3, 0x7f0a0b94

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const p3, 0x7f0a07cc

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_4

    const/16 v0, 0xf

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060738

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p3, v0, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :cond_4
    iget-object p3, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->colorPreviewAdapter:Lcom/samsung/android/settings/accessibility/vision/color/ColorPreviewAdapter;

    iget-object p3, p3, Lcom/samsung/android/settings/accessibility/vision/color/ColorPreviewAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    move v0, v1

    :goto_0
    if-ge v0, p3, :cond_5

    const v2, 0x7f0d002b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    new-instance v3, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f080a0c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPointArea:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->viewPager:Lcom/samsung/android/settings/widget/SecWrapContentHeightViewPager;

    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_8
    return-object p2
.end method

.method public final onPause()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    check-cast v1, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->setOnChangeListener(Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController$OnChangeListener;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_adjustment_type"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    const/4 v2, 0x1

    const-string v3, "A11yUtils"

    if-lt v0, v2, :cond_3

    const/4 v4, 0x4

    if-le v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "setColorAdjustmentIntensity - type: "

    const-string v6, " / intensity: "

    invoke-static {v5, v6, v0, p1, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    if-ne v0, v4, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    const-string v0, "color_blind_user_parameter"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v3, "predefined_color_blind_intensity"

    invoke-static {p1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p1, "00,00,00"

    :cond_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v5, "%02d"

    invoke-static {v4, v5, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    sub-int/2addr v0, v2

    aput-object p2, p1, v0

    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    :goto_0
    const-string/jumbo p1, "setColorAdjustmentIntensity - wrong type entered."

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->setColorAdjustment(Landroid/content/Context;)V

    return v2
.end method

.method public final onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "color_blind"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v1, v2

    :cond_0
    if-ne v1, p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->setColorAdjustment(Landroid/content/Context;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->updateSwitchBarToggleSwitch()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind_test"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPersonalizedPref:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mResetButtonClickListener:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$5;

    iget-object v2, v0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;->mResetBtnClickListener:Landroid/view/View$OnClickListener;

    if-eq v2, v1, :cond_0

    iput-object v1, v0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentResetRadioPreference;->mResetBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->updateSeekBarPreference()V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    check-cast v1, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->setOnChangeListener(Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController$OnChangeListener;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/vision/controllers/ColorAdjustmentRadioButtonPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->contentObserver:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$1;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->contentObserver:Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f14097c

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final updatePageIndicatorDescription$1(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->colorPreviewAdapter:Lcom/samsung/android/settings/accessibility/vision/color/ColorPreviewAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/vision/color/ColorPreviewAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f141bb4

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mPointArea:Landroid/widget/LinearLayout;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method

.method public final updateSeekBarPreference()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_adjustment_type"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mSeekBarPref:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mSeekBarPref:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    const/16 v3, 0xa

    goto :goto_0

    :cond_2
    const/16 v3, 0x18

    :goto_0
    invoke-virtual {v1, v3}, Landroidx/preference/SeekBarPreference;->setMax(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/color/ColorAdjustmentMainFragment;->mSeekBarPref:Lcom/samsung/android/settings/accessibility/base/widget/A11ySeekBarPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getColorAdjustmentIntensity(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v1, p0, v2}, Landroidx/preference/SeekBarPreference;->setValueInternal(IZ)V

    :goto_1
    return-void
.end method

.method public final updateSwitchBarToggleSwitch()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedInternal(Z)V

    :cond_1
    return-void
.end method
