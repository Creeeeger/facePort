.class public Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static mBoldFontPreference:Landroidx/preference/SecSwitchPreference;

.field public static mFontSizePreviewBottomPaddingPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field public static mFontSizePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field public static mFontStylePreference:Landroidx/preference/SecPreferenceScreen;

.field public static mSecPreferenceDummyItem:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;


# instance fields
.field public mActivity:Landroidx/fragment/app/FragmentActivity;

.field public final mApplyWindowInsetsListener:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;

.field public mBooster:Lcom/samsung/android/settings/Booster;

.field public mContext:Landroid/content/Context;

.field public mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public mFontSizeLayout:Landroid/view/View;

.field public mFontSizeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field public mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

.field public mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

.field public mIsFromStore:Z

.field public mIsInSeekBarSetupProcess:Z

.field public mLargerButton:Landroid/widget/ImageButton;

.field public final mLargerButtonClickListener:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;

.field public mPreviewFontIsBold:I

.field public mPreviewFontLowercaseAlphabetTextView:Landroid/widget/TextView;

.field public mPreviewFontName:Ljava/lang/String;

.field public mPreviewFontNameTextView:Landroid/widget/TextView;

.field public mPreviewFontNumberTextView:Landroid/widget/TextView;

.field public mPreviewFontSampleTextView:Landroid/widget/TextView;

.field public mPreviewFontSize:I

.field public mPreviewFontSymbolTextView:Landroid/widget/TextView;

.field public mPreviewFontURI:Landroid/net/Uri;

.field public mPreviewFontUppercaseAlphabetTextView:Landroid/widget/TextView;

.field public mPreviewTypeface:Landroid/graphics/Typeface;

.field public mResources:Landroid/content/res/Resources;

.field public mSmallerButton:Landroid/widget/ImageButton;

.field public final mSmallerButtonClickListener:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;

.field public mTextPreviewLayout:Landroid/widget/LinearLayout;

.field public mTextPreviewSampleTextView:Landroid/widget/TextView;

.field public mTextPreviewSymbolTextView:Landroid/widget/TextView;

.field public final previewTextSizes:[F

.field public final sampleTextSizes:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$1;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->previewTextSizes:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->sampleTextSizes:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsInSeekBarSetupProcess:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontURI:Landroid/net/Uri;

    const-string v2, "_Font Name_"

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontIsBold:I

    iput v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSize:I

    new-instance v1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSmallerButtonClickListener:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;

    new-instance v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mLargerButtonClickListener:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;

    new-instance v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mApplyWindowInsetsListener:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;

    return-void

    nop

    :array_0
    .array-data 4
        0x4174cccd    # 15.3f
        0x41880000    # 17.0f
        0x41980000    # 19.0f
        0x41a4cccd    # 20.6f
        0x41b4cccd    # 22.6f
        0x41c80000    # 25.0f
        0x41dccccd    # 27.6f
        0x42000000    # 32.0f
    .end array-data

    :array_1
    .array-data 4
        0x4149999a    # 12.6f
        0x4164cccd    # 14.3f
        0x41800000    # 16.0f
        0x41900000    # 18.0f
        0x41a26666    # 20.3f
        0x41b80000    # 23.0f
        0x41c80000    # 25.0f
        0x41e00000    # 28.0f
    .end array-data
.end method


# virtual methods
.method public final varargs addPreferencesOnResume([Landroidx/preference/Preference;)V
    .locals 4

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    invoke-virtual {v3}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot add Preferences OnResume. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecFontSizePreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final changeFontSizeOnPreview(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNameTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->sampleTextSizes:[F

    aget v2, v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSampleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->sampleTextSizes:[F

    aget v2, v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNumberTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->sampleTextSizes:[F

    aget v2, v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSymbolTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->sampleTextSizes:[F

    aget v2, v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontUppercaseAlphabetTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->sampleTextSizes:[F

    aget v2, v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontLowercaseAlphabetTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->sampleTextSizes:[F

    aget p0, p0, p1

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewSampleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->previewTextSizes:[F

    aget v2, v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewSymbolTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->previewTextSizes:[F

    aget p0, p0, p1

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method

.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f142432

    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x106a

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_display"

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizePreviewLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizeSeekBarLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->updateSeekBar$1()V

    sget-object v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroidx/preference/SecPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentFontName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setBoldFontPreference()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->updateFontLayoutPreferences()V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeLayout:Landroid/view/View;

    const v1, 0x7f0a0d56

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    invoke-virtual {v0, p0, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v0, Lcom/samsung/android/settings/Booster;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/Booster;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBooster:Lcom/samsung/android/settings/Booster;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "fromStore"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.samsung.feature.samsung_experience_mobile"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x18894

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Activity finished, cause : mIsFromStore="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Build.VERSION.SEM_PLATFORM_INT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecFontSizePreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f140fef

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f142433

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f142432

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fontFileUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontURI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fontName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontURI:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPreviewFont(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    const-string v0, "PreviewFontIsBold"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontIsBold:I

    const-string v0, "PreviewFontSize"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSize:I

    :cond_3
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public final onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    invoke-direct {p1}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1, p1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    const/4 p2, 0x0

    const v0, 0x7f0a068a

    invoke-virtual {p1, v0, p0, p2}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0d08b7

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeLayout:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeLayout:Landroid/view/View;

    const p3, 0x7f0a0d56

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p2, p1, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mApplyWindowInsetsListener:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$5;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeLayout:Landroid/view/View;

    return-object p0
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mPreviewFontFile:Ljava/io/File;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sput-object p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreviewBottomPaddingPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    sput-object p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroidx/preference/SecPreferenceScreen;

    sput-object p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBoldFontPreference:Landroidx/preference/SecSwitchPreference;

    sput-object p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSecPreferenceDummyItem:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isNewDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizePreviewLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setFontSizeSeekBarLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->updateSeekBar$1()V

    sget-object v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroidx/preference/SecPreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentFontName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setBoldFontPreference()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->updateFontLayoutPreferences()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz v0, :cond_0

    const-string v0, "PreviewFontIsBold"

    iget v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontIsBold:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "PreviewFontSize"

    iget p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSize:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    const v0, 0x7f0a0cc6

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0xc

    invoke-virtual {p2, p1}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060738

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_0
    return-void
.end method

.method public final setBoldFontForFlipFontsPreview(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getWeight()I

    move-result p1

    add-int/lit16 p1, p1, 0x12c

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0x3e8

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    invoke-static {v1, p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSampleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSymbolTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontUppercaseAlphabetTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontLowercaseAlphabetTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final setBoldFontPreference()V
    .locals 5

    sget-object v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBoldFontPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bold_text"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontIsBold:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-ne v3, v1, :cond_1

    move v2, v1

    :cond_1
    move v0, v2

    :cond_2
    sget-object v1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBoldFontPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->setBoldFontForFlipFontsPreview(Z)V

    :cond_3
    sget-object v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mBoldFontPreference:Landroidx/preference/SecSwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$2;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    return-void
.end method

.method public final setFontSizePreviewLayout()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a086e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeLayout:Landroid/view/View;

    const v2, 0x7f0a0b77

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->shouldBeDisplayedAsPortrait()Z

    move-result v4

    const v5, 0x7f0a068b

    const v6, 0x7f0a1000

    const v7, 0x7f0a086f

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeLayout:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    sget-object v4, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    sget-object v4, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreviewBottomPaddingPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070dc2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz v5, :cond_3

    const v5, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_3
    const v5, 0x3ecccccd    # 0.4f

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    const/high16 v4, 0x40a00000    # 5.0f

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeLayout:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v4, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v4, :cond_5

    iget-object v4, v4, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    sget-object v4, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreviewBottomPaddingPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v9}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f060738

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a1001

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewSampleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a1002

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewSymbolTextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a067f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNameTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0686

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSampleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0685

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNumberTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0688

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSymbolTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0689

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontUppercaseAlphabetTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0680

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontLowercaseAlphabetTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewSampleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mTextPreviewSymbolTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSampleTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f140fee

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSampleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSampleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNumberTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f140fed

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNumberTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSymbolTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSymbolTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontUppercaseAlphabetTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontUppercaseAlphabetTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontLowercaseAlphabetTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontLowercaseAlphabetTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public final setFontSizeSeekBarLayout()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeLayout:Landroid/view/View;

    const v1, 0x7f0a068d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0a068c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v1, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$OnFontSizeSeekBarChangeListener;-><init>(Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070dc2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->shouldBeDisplayedAsPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x438c0000    # 280.0f

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x440c0000    # 560.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    cmpg-float v0, v1, v0

    const v1, 0x7f0a068f

    const v2, 0x7f0a0691

    const v3, 0x7f0a068e

    const v4, 0x7f0a0690

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSmallerButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mLargerButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSmallerButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mLargerButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSmallerButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSmallerButtonClickListener:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mLargerButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mLargerButtonClickListener:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$3;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final shouldBeDisplayedAsPortrait()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mActivity:Landroidx/fragment/app/FragmentActivity;

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    invoke-static {p0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final updateFontLayoutPreferences()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->shouldBeDisplayedAsPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget-object v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreviewBottomPaddingPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    filled-new-array {v0, v2}, [Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->addPreferencesOnResume([Landroidx/preference/Preference;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget-object v2, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizePreviewBottomPaddingPreference:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    filled-new-array {v0, v2}, [Landroidx/preference/Preference;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    invoke-virtual {v5}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070a4d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070dc2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget-object v3, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mSecPreferenceDummyItem:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsFromStore:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sec_font_style"

    const-string v3, "hide"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroidx/preference/SecPreferenceScreen;

    filled-new-array {v0}, [Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->addPreferencesOnResume([Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    const-string v0, "grayout"

    invoke-static {p0, v2, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    :cond_2
    sget-object v0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontStylePreference:Landroidx/preference/SecPreferenceScreen;

    filled-new-array {v0}, [Landroidx/preference/Preference;

    move-result-object v0

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSupportPreferenceFragment:Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment$FontSizeSupportPreferenceFragment;

    invoke-virtual {v4}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mPreviewFontSize:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->changeFontSizeOnPreview(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final updateSeekBar$1()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsInSeekBarSetupProcess:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mFontSizeSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/SecFontSizePreferenceFragment;->mIsInSeekBarSetupProcess:Z

    return-void
.end method
