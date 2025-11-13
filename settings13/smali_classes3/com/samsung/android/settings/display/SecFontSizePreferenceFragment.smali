.class public Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecFontSizePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field private static mBoldFontPreference:Landroidx/preference/SecSwitchPreference;

.field private static mFontStylePreference:Landroidx/preference/SecPreferenceScreen;

.field private static mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private static mSecPreferenceDummyItem:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private static mSecPreferencePaddingForMultiWindow:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private static mSecPreferencePaddingForPortrait:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private static mSeekBarControllerPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field public static sSelectedFontSizeSeekBarProgress:I


# instance fields
.field private mBooster:Lcom/samsung/android/settings/Booster;

.field private mChangingSizeText:Landroid/widget/TextView;

.field private mChangingSizeTextSymbols:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDualDisplayStatus:I

.field private mFloatRevisedValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mFontFloatSize:F

.field private mFontSizePreferenceContainer:Landroid/widget/FrameLayout;

.field private mFontSizePreview:Landroid/view/View;

.field private mFontSizeSeekBar:Landroid/widget/SeekBar;

.field private mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

.field private mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

.field private mFontSizeTitleTextView:Landroid/widget/TextView;

.field private mIsChangedFontSizeSeekBar:Z

.field private mIsFoldDevice:Z

.field private mIsFromStore:Z

.field private mIsMultiPaneMode:Z

.field private mIsMultiWindowMode:Z

.field private mIsTabletDevice:Z

.field private mLarger:Landroid/view/View;

.field private mOrientation:I

.field private mPreviewFontIsBold:I

.field private mPreviewFontLowercaseAlphabetTextView:Landroid/widget/TextView;

.field private mPreviewFontName:Ljava/lang/String;

.field private mPreviewFontNameTextView:Landroid/widget/TextView;

.field private mPreviewFontNumberTextView:Landroid/widget/TextView;

.field private mPreviewFontSampleTextView:Landroid/widget/TextView;

.field private mPreviewFontSize:I

.field private mPreviewFontSymbolTextView:Landroid/widget/TextView;

.field private mPreviewFontURI:Landroid/net/Uri;

.field private mPreviewFontUppercaseAlphabetTextView:Landroid/widget/TextView;

.field private mPreviewTextSize:F

.field private mPreviewTypeface:Landroid/graphics/Typeface;

.field private mRealMetrics:Landroid/util/DisplayMetrics;

.field private mResources:Landroid/content/res/Resources;

.field private mSelectedFontSize:I

.field private mSmaller:Landroid/view/View;

.field private mTextPreviewLayout:Landroid/widget/LinearLayout;

.field private mViewWasCreated:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFontSizeSeekBar(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFromStore(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMultiPaneMode(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsMultiPaneMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsMultiWindowMode(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsMultiWindowMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTabletDevice(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsTabletDevice:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewTypeface(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResources(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsChangedFontSizeSeekBar(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsChangedFontSizeSeekBar:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewFontIsBold(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontIsBold:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewFontSize(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSize:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyBoldFont(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->applyBoldFont(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mapplyFontSize(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->applyFontSize()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeFontSizeFromSeekBar(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->changeFontSizeFromSeekBar(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misViewCreated(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->isViewCreated()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetBoldFontForFlipFontsPreview(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setBoldFontForFlipFontsPreview(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFontSizePreviewLayoutOnCreateView(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizePreviewLayoutOnCreateView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPreferenceOnResume(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setPreferenceOnResume()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmBoldFontPreference(Landroidx/preference/SecSwitchPreference;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBoldFontPreference:Landroidx/preference/SecSwitchPreference;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmFontStylePreference(Landroidx/preference/SecPreferenceScreen;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroidx/preference/SecPreferenceScreen;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmLayoutPreference(Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmSecPreferenceDummyItem(Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSecPreferenceDummyItem:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmSecPreferencePaddingForMultiWindow(Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSecPreferencePaddingForMultiWindow:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmSecPreferencePaddingForPortrait(Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSecPreferencePaddingForPortrait:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmSeekBarControllerPreference(Lcom/android/settingslib/widget/LayoutPreference;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSeekBarControllerPreference:Lcom/android/settingslib/widget/LayoutPreference;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 174
    new-instance v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mViewWasCreated:Z

    .line 104
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsChangedFontSizeSeekBar:Z

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontURI:Landroid/net/Uri;

    const-string v1, "_Font Name_"

    .line 140
    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontName:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    const/4 v0, -0x1

    .line 150
    iput v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontIsBold:I

    .line 151
    iput v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSize:I

    return-void
.end method

.method private varargs addPreferencesOnResume([Landroidx/preference/Preference;)V
    .locals 5

    const/4 v0, 0x0

    .line 821
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 822
    invoke-virtual {v3}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    .line 823
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    invoke-virtual {v4}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add Preferences OnResume. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SecFontSizePreferenceFragment"

    invoke-static {v1, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompletePreferences : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;->getCompletePreferences()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / isViewCreated : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->isViewCreated()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " / parent : "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private adjustFontSizeSeekBarLayout()V
    .locals 7

    .line 674
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$dimen;->sec_widget_inset_category_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 676
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_padding_horizontal_multi_window:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 677
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_padding_bottom_multi_window:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 678
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_title_padding_start_multi_window:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 681
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->shouldBeDisplayedAsPortrait()Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v0, 0x438c0000    # 280.0f

    .line 682
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v0

    goto :goto_0

    :cond_0
    const/high16 v4, 0x440c0000    # 560.0f

    .line 684
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    int-to-float v0, v0

    add-float v4, v5, v0

    .line 687
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    sget v4, Lcom/android/settings/R$id;->smaller:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    sget v5, Lcom/android/settings/R$id;->larger:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    sget v4, Lcom/android/settings/R$id;->smaller_bottom:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSmaller:Landroid/view/View;

    const/4 v4, 0x0

    .line 692
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    sget v5, Lcom/android/settings/R$id;->larger_bottom:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mLarger:Landroid/view/View;

    .line 694
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeTitleTextView:Landroid/widget/TextView;

    .line 697
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v6

    .line 696
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 698
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0, v1, v0, v1, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    goto :goto_1

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->smaller:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSmaller:Landroid/view/View;

    .line 702
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->larger:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mLarger:Landroid/view/View;

    :goto_1
    return-void
.end method

.method private applyBoldFont(Z)V
    .locals 0

    .line 1077
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setBoldFontDbValue(Z)V

    return-void
.end method

.method private applyFontSize()V
    .locals 2

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsChangedFontSizeSeekBar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsChangedFontSizeSeekBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sSelectedFontSizeSeekBarProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->sSelectedFontSizeSeekBarProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSelectedFontSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSelectedFontSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecFontSizePreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsChangedFontSizeSeekBar:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->sSelectedFontSizeSeekBarProgress:I

    iget v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSelectedFontSize:I

    if-eq v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBooster:Lcom/samsung/android/settings/Booster;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/Booster;->start(I)V

    .line 1043
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizeDbValue()V

    .line 1044
    iget v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontFloatSize:F

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontScaleDbValue(F)V

    :cond_0
    return-void
.end method

.method private changeFontSizeFromSeekBar(I)V
    .locals 4

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeFontSizeFromSeekBar progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecFontSizePreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFloatRevisedValueList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 1012
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->updateFontSizeList()V

    .line 1015
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFloatRevisedValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1016
    iget v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTextSize:F

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 1019
    iget-boolean v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz v3, :cond_2

    .line 1020
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1021
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSampleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1022
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1023
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSymbolTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1024
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontUppercaseAlphabetTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1025
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontLowercaseAlphabetTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 1027
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mChangingSizeText:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1028
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mChangingSizeTextSymbols:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1030
    :goto_0
    sput p1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->sSelectedFontSizeSeekBarProgress:I

    .line 1031
    iput v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontFloatSize:F

    return-void
.end method

.method private createFontSizeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    if-eqz p2, :cond_0

    .line 390
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 393
    :cond_0
    sget p3, Lcom/android/settings/R$layout;->sec_font_size_preview:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    .line 395
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->isFontSizePreferencesCreated()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 396
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizePreviewLayout()V

    .line 397
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizeSeekBarLayout()V

    .line 398
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->updateFontSizeList()V

    .line 399
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->updateSeekBar()V

    .line 402
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontSize(Landroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    .line 403
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fontArraySize:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SecFontSizePreferenceFragment"

    invoke-static {p2, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    return-object p0
.end method

.method private isBoldTextEnabled()Z
    .locals 2

    .line 1084
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bold_text"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isFontSizePreferencesCreated()Z
    .locals 0

    .line 1088
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;->getCompletePreferences()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isViewCreated()Z
    .locals 0

    .line 791
    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mViewWasCreated:Z

    return p0
.end method

.method private refreshFontSizeAndStylePreference()V
    .locals 2

    .line 429
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private varargs removePreferencesOnResume([Landroidx/preference/Preference;)V
    .locals 4

    .line 813
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 814
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    invoke-virtual {v3}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setBoldFontDbValue(Z)V
    .locals 2

    .line 1069
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bold_text"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1070
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const/16 p1, 0x12c

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontWeightDBAllUser(Landroid/content/Context;I)V

    return-void
.end method

.method private setBoldFontForFlipFontsPreview(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 935
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    .line 936
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getWeight()I

    move-result p1

    add-int/lit16 p1, p1, 0x12c

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0x3e8

    .line 935
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 938
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 939
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    invoke-static {v1, p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_1

    .line 941
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    .line 944
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 945
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSampleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 946
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 947
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSymbolTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 948
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontUppercaseAlphabetTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 949
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontLowercaseAlphabetTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private setBoldFontPreference()V
    .locals 3

    .line 961
    sget-object v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBoldFontPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_3

    .line 962
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->isBoldTextEnabled()Z

    move-result v0

    .line 963
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontIsBold:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 967
    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBoldFontPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 968
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_2

    .line 969
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setBoldFontForFlipFontsPreview(Z)V

    .line 972
    :cond_2
    sget-object v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBoldFontPreference:Landroidx/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$8;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    return-void
.end method

.method private setFontPreviewTextLayout()V
    .locals 5

    .line 894
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->font_preview_font_name_text_view:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNameTextView:Landroid/widget/TextView;

    .line 895
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->font_preview_sample_text_view:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSampleTextView:Landroid/widget/TextView;

    .line 896
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->font_preview_number_text_view:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNumberTextView:Landroid/widget/TextView;

    .line 897
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->font_preview_symbol_text_view:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSymbolTextView:Landroid/widget/TextView;

    .line 898
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->font_preview_uppercase_alphabet_text_view:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontUppercaseAlphabetTextView:Landroid/widget/TextView;

    .line 899
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->font_preview_lowercase_alphabet_text_view:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontLowercaseAlphabetTextView:Landroid/widget/TextView;

    .line 901
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mChangingSizeText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 902
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mChangingSizeTextSymbols:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 904
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 905
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 906
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 908
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSampleTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/settings/R$string;->font_preview_sample_text:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSampleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 910
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSampleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNumberTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/settings/R$string;->font_preview_numbers:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNumberTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 914
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 916
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSymbolTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 917
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSymbolTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 919
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontUppercaseAlphabetTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 920
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontUppercaseAlphabetTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 922
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontLowercaseAlphabetTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 923
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontLowercaseAlphabetTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 925
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->shouldBeDisplayedAsPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    const/16 v3, 0x3c

    .line 927
    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->setPreviewImageHeight(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 928
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setFontScaleDbValue(F)V
    .locals 2

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fontScale : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecFontSizePreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    return-void
.end method

.method private setFontSizeAndStylePreference()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;->setParent(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    .line 425
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->font_size_preference_container:I

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private setFontSizeDbValue()V
    .locals 4

    .line 1049
    sget v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->sSelectedFontSizeSeekBarProgress:I

    .line 1050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange fontIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecFontSizePreferenceFragment"

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "font_size"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1053
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getFontSizeChangedIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "large_font"

    const/4 v3, 0x0

    .line 1054
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1055
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "com.samsung.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    .line 1057
    invoke-static {v2, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setFontSizePreferenceLayout()V
    .locals 3

    .line 515
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->font_size_preference_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreferenceContainer:Landroid/widget/FrameLayout;

    .line 516
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsMultiWindowMode:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    .line 517
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    .line 518
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreferenceContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    :cond_0
    return-void
.end method

.method private setFontSizePreviewLayout()V
    .locals 8

    .line 433
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mOrientation:I

    .line 439
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mDualDisplayStatus:I

    .line 440
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsMultiWindowMode:Z

    .line 443
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mRealMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 445
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->preview_landscape_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 446
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->preview_portrait_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 447
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->preview_landscape_separator:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 449
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 450
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 452
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->shouldBeDisplayedAsPortrait()Z

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    .line 453
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v5, 0x3f800000    # 1.0f

    .line 454
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 455
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->textPreviewLayout:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 458
    sget-object v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v2, :cond_1

    .line 459
    sget v5, Lcom/android/settings/R$id;->font_size_preview_layout:I

    invoke-virtual {v2, v5}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    .line 460
    sget-object v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v2, v5}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 462
    :cond_1
    sget-object v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSecPreferencePaddingForPortrait:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v2, :cond_2

    .line 463
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->sec_widget_inset_category_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    .line 465
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizePreviewLayoutHeight()V

    goto :goto_0

    :cond_3
    const/high16 v5, 0x40a00000    # 5.0f

    .line 468
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 469
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 470
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 472
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->textPreviewLayout:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    .line 473
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 474
    sget-object v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v2, :cond_4

    .line 475
    sget v5, Lcom/android/settings/R$id;->font_size_preview_layout:I

    invoke-virtual {v2, v5}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 477
    :cond_4
    sget-object v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSecPreferencePaddingForPortrait:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v2, :cond_5

    .line 478
    invoke-virtual {v2, v7}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    .line 480
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0xf

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 481
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    .line 484
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->textChangingSizePreview:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mChangingSizeText:Landroid/widget/TextView;

    .line 488
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->textChangingSizePreviewSymbols:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mChangingSizeTextSymbols:Landroid/widget/TextView;

    .line 490
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mChangingSizeText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTextSize:F

    .line 493
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz v0, :cond_6

    .line 494
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontPreviewTextLayout()V

    :cond_6
    return-void
.end method

.method private setFontSizePreviewLayoutHeight()V
    .locals 3

    .line 500
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 504
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsMultiWindowMode:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    .line 510
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mRealMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 511
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setFontSizePreviewLayoutOnCreateView()V
    .locals 0

    .line 414
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizePreviewLayout()V

    .line 415
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizePreferenceLayout()V

    .line 416
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizeSeekBarLayout()V

    .line 417
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->updateFontSizeList()V

    return-void
.end method

.method private setFontSizeSeekBarLayout()V
    .locals 7

    .line 523
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->font_size_bottom_seek_bar_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 524
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->font_size_seek_bar_container:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 526
    iget-boolean v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsMultiWindowMode:Z

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    if-eqz v2, :cond_1

    .line 531
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 534
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSeekBarControllerPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_5

    .line 535
    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    .line 536
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->seekBarForFontSize:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroid/widget/SeekBar;

    .line 538
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->fontSize:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeTitleTextView:Landroid/widget/TextView;

    .line 540
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->adjustFontSizeSeekBarLayout()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 544
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    if-eqz v2, :cond_4

    .line 547
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 549
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    .line 552
    sget v1, Lcom/android/settings/R$id;->seekBarForFontSize:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroid/widget/SeekBar;

    .line 553
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->fontSize:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeTitleTextView:Landroid/widget/TextView;

    .line 555
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizeSeekBarLayoutHeight()V

    .line 556
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->smaller:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSmaller:Landroid/view/View;

    .line 557
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    sget v1, Lcom/android/settings/R$id;->larger:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mLarger:Landroid/view/View;

    .line 559
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 567
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$4;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 605
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 640
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSmaller:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$6;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mLarger:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$7;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setFontSizeSeekBarLayoutHeight()V
    .locals 14

    .line 707
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getNavigationBarMode(Landroid/content/Context;)I

    move-result v0

    .line 708
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v2, 0x1050244

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 710
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    move v1, v3

    .line 714
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 716
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 719
    iget-object v5, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/android/settings/R$dimen;->sec_widget_list_icon_create_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 722
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/settings/R$dimen;->sec_font_size_setting_bottom_padding_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 724
    iget-object v7, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mRealMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 728
    iget-object v8, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->isTaskBarEnabled(Landroid/content/Context;)Z

    move-result v8

    .line 730
    iget-object v9, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    .line 729
    invoke-static {v9}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getNavigationBarMode(Landroid/content/Context;)I

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v8, :cond_1

    .line 730
    iget-object v9, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v10, 0x10504db

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    goto :goto_0

    :cond_1
    move v9, v3

    .line 733
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBar()Z

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x2

    if-eq v0, v12, :cond_2

    const/4 v13, 0x3

    if-eq v0, v13, :cond_2

    if-nez v10, :cond_3

    :cond_2
    move v3, v11

    .line 739
    :cond_3
    iget-boolean v10, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFoldDevice:Z

    if-eqz v10, :cond_6

    if-eqz v3, :cond_5

    if-eqz v8, :cond_4

    .line 742
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_bottom_height_percent_fold_gesture_taskbar:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    goto :goto_2

    .line 744
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_bottom_height_percent_fold_gesture:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    goto :goto_2

    .line 747
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_bottom_height_percent_fold:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    goto :goto_2

    .line 749
    :cond_6
    iget-boolean v8, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsTabletDevice:Z

    if-eqz v8, :cond_9

    .line 750
    iget-boolean v8, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsMultiPaneMode:Z

    if-nez v8, :cond_8

    if-eqz v3, :cond_7

    goto :goto_1

    .line 753
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_bottom_height_percent_tablet:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    goto :goto_2

    .line 751
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_bottom_height_percent_tablet_gesture:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    goto :goto_2

    :cond_9
    if-eqz v3, :cond_a

    .line 757
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_bottom_height_percent_gesture:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    goto :goto_2

    .line 759
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/settings/R$dimen;->sec_display_setting_seek_bar_controller_bottom_height_percent:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    :goto_2
    int-to-float v7, v7

    mul-float/2addr v7, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v7, v3

    .line 763
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 765
    iget-boolean v7, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsTabletDevice:Z

    if-nez v7, :cond_c

    iget-boolean v7, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFoldDevice:Z

    if-nez v7, :cond_c

    iget v7, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mOrientation:I

    if-eq v7, v11, :cond_c

    if-ne v0, v12, :cond_b

    goto :goto_3

    .line 770
    :cond_b
    div-int/lit8 v0, v5, 0x2

    add-int/2addr v0, v6

    goto :goto_4

    .line 768
    :cond_c
    :goto_3
    div-int/lit8 v0, v5, 0x2

    add-int/2addr v0, v6

    add-int/2addr v0, v1

    add-int/2addr v0, v9

    :goto_4
    sub-int/2addr v3, v0

    .line 773
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 775
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setFontStylePreference()V
    .locals 1

    .line 954
    sget-object v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroidx/preference/SecPreferenceScreen;

    if-eqz v0, :cond_0

    .line 955
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentFontName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 956
    sget-object p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroidx/preference/SecPreferenceScreen;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    return-void
.end method

.method private setPreferenceOnResume()V
    .locals 0

    .line 871
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->updateSeekBar()V

    .line 872
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontStylePreference()V

    .line 873
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setBoldFontPreference()V

    .line 874
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->updateFontLayoutPreferences()V

    return-void
.end method

.method private shouldBeDisplayedAsPortrait()Z
    .locals 2

    .line 410
    iget v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsMultiPaneMode:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private updateFontLayoutPreferences()V
    .locals 5

    .line 832
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 834
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->shouldBeDisplayedAsPortrait()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Landroidx/preference/Preference;

    .line 835
    sget-object v4, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    aput-object v4, v0, v1

    sget-object v4, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSecPreferencePaddingForPortrait:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    aput-object v4, v0, v3

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->addPreferencesOnResume([Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [Landroidx/preference/Preference;

    .line 837
    sget-object v4, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    aput-object v4, v0, v1

    sget-object v4, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSecPreferencePaddingForPortrait:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    aput-object v4, v0, v3

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->removePreferencesOnResume([Landroidx/preference/Preference;)V

    .line 840
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsMultiWindowMode:Z

    if-eqz v0, :cond_1

    new-array v0, v2, [Landroidx/preference/Preference;

    .line 841
    sget-object v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSeekBarControllerPreference:Lcom/android/settingslib/widget/LayoutPreference;

    aput-object v2, v0, v1

    sget-object v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSecPreferencePaddingForMultiWindow:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    aput-object v2, v0, v3

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->addPreferencesOnResume([Landroidx/preference/Preference;)V

    new-array v0, v3, [Landroidx/preference/Preference;

    .line 842
    sget-object v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSecPreferenceDummyItem:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->removePreferencesOnResume([Landroidx/preference/Preference;)V

    goto :goto_1

    .line 844
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLastRoundedCorner(Z)V

    new-array v0, v2, [Landroidx/preference/Preference;

    .line 846
    sget-object v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSeekBarControllerPreference:Lcom/android/settingslib/widget/LayoutPreference;

    aput-object v2, v0, v1

    sget-object v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSecPreferencePaddingForMultiWindow:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    aput-object v2, v0, v3

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->removePreferencesOnResume([Landroidx/preference/Preference;)V

    new-array v0, v3, [Landroidx/preference/Preference;

    .line 847
    sget-object v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSecPreferenceDummyItem:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->addPreferencesOnResume([Landroidx/preference/Preference;)V

    .line 849
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 850
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/settings/R$dimen;->sec_widget_inset_category_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 851
    sget-object v4, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSecPreferenceDummyItem:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v0, v2

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    .line 854
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    const-string v2, "sec_font_style"

    const-string v4, "hide"

    .line 855
    invoke-static {v0, v2, v4}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    .line 856
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isFinishSetupWizard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v3, [Landroidx/preference/Preference;

    .line 857
    sget-object v3, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroidx/preference/SecPreferenceScreen;

    aput-object v3, v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->addPreferencesOnResume([Landroidx/preference/Preference;)V

    .line 858
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    const-string v0, "grayout"

    invoke-static {p0, v2, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 859
    sget-object p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    new-array v0, v3, [Landroidx/preference/Preference;

    .line 862
    sget-object v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroidx/preference/SecPreferenceScreen;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->removePreferencesOnResume([Landroidx/preference/Preference;)V

    .line 863
    iget v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 864
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 865
    iget v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSize:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->changeFontSizeFromSeekBar(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private updateFontSizeList()V
    .locals 5

    .line 991
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 993
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/settings/R$array;->sec_entryvalues_8_step_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 996
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFloatRevisedValueList:Ljava/util/ArrayList;

    .line 998
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 999
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFloatRevisedValueList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSeekBar()V
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSelectedFontSize:I

    .line 1006
    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 171
    sget p0, Lcom/android/settings/R$string;->sec_font_size_style_title:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 166
    const-class p0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x106a

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_display"

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 363
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 364
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mOrientation:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mDualDisplayStatus:I

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    .line 365
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsMultiWindowMode:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    .line 366
    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizePreviewLayoutOnCreateView()V

    .line 369
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setPreferenceOnResume()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 218
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 220
    new-instance v0, Lcom/samsung/android/settings/Booster;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/Booster;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBooster:Lcom/samsung/android/settings/Booster;

    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mViewWasCreated:Z

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    .line 224
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    .line 225
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mOrientation:I

    .line 226
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mDualDisplayStatus:I

    .line 227
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMultiWindowMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsMultiWindowMode:Z

    .line 228
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->semIsPopOver()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsMultiPaneMode:Z

    .line 229
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsTabletDevice:Z

    .line 230
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isFoldDevice()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFoldDevice:Z

    .line 232
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mWindowManager:Landroid/view/WindowManager;

    .line 233
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mRealMetrics:Landroid/util/DisplayMetrics;

    .line 234
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mRealMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 236
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 239
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 241
    new-instance v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromStore"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSemAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x18894

    if-ge v0, v1, :cond_0

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity finished, cause : mIsFromStore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Build.VERSION.SEM_PLATFORM_INT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecFontSizePreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 338
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->font_preview_see_sample_title:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isFinishSetupWizard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 341
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_font_preview_size_subtitle:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_font_size_style_title:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz v0, :cond_3

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fontFileUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontURI:Landroid/net/Uri;

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fontName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontName:Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontURI:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPreviewFont(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    const-string v0, "PreviewFontIsBold"

    const/4 v1, -0x1

    .line 354
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontIsBold:I

    const-string v0, "PreviewFontSize"

    .line 355
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSize:I

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 375
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 376
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizeAndStylePreference()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 381
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->isFontSizePreferencesCreated()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->refreshFontSizeAndStylePreference()V

    :cond_0
    const/4 p2, 0x1

    .line 384
    iput-boolean p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mViewWasCreated:Z

    const/4 p2, 0x0

    .line 385
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->createFontSizeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 782
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 783
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mViewWasCreated:Z

    .line 784
    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz p0, :cond_0

    .line 785
    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->deletePreviewFont()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 879
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 881
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    .line 882
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 883
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 886
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->isFontSizePreferencesCreated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizePreviewLayoutOnCreateView()V

    .line 888
    invoke-direct {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setPreferenceOnResume()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 804
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 806
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz v0, :cond_0

    .line 807
    iget v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontIsBold:I

    const-string v1, "PreviewFontIsBold"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 808
    iget p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSize:I

    const-string v0, "PreviewFontSize"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
