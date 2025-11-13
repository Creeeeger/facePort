.class public Lcom/android/settings/accessibility/TextReadingPreviewPreference;
.super Landroidx/preference/Preference;
.source "TextReadingPreviewPreference.java"


# instance fields
.field private mCurrentItem:I

.field private mLastLayerIndex:I

.field private mPreviewAdapter:Lcom/android/settings/display/PreviewPagerAdapter;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->init()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->init()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 122
    sget v0, Lcom/android/settings/R$layout;->accessibility_text_reading_preview:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private updateAdapterIfNeeded(Landroidx/viewpager/widget/ViewPager;Lcom/android/settings/widget/DotsPageIndicator;Lcom/android/settings/display/PreviewPagerAdapter;)V
    .locals 1

    .line 95
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-ne v0, p3, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    if-eqz p3, :cond_1

    .line 102
    invoke-virtual {p2, p1}, Lcom/android/settings/widget/DotsPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 104
    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mCurrentItem:I

    :goto_0
    return-void
.end method

.method private updatePagerAndIndicator(Landroidx/viewpager/widget/ViewPager;Lcom/android/settings/widget/DotsPageIndicator;)V
    .locals 1

    .line 109
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mCurrentItem:I

    if-eq v0, p0, :cond_1

    .line 114
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    .line 117
    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method getCurrentItem()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mCurrentItem:I

    return p0
.end method

.method notifyPreviewPagerChanged(I)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mPreviewAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    const-string v1, "Preview adapter is null, you should init the preview adapter first"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mLastLayerIndex:I

    if-eq p1, v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mPreviewAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/android/settings/display/PreviewPagerAdapter;->setPreviewLayer(IIIZ)V

    .line 134
    :cond_0
    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mLastLayerIndex:I

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 65
    sget v0, Lcom/android/settings/R$id;->preview_pager:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 66
    sget v1, Lcom/android/settings/R$id;->page_indicator:I

    .line 67
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/DotsPageIndicator;

    .line 68
    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mPreviewAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->updateAdapterIfNeeded(Landroidx/viewpager/widget/ViewPager;Lcom/android/settings/widget/DotsPageIndicator;Lcom/android/settings/display/PreviewPagerAdapter;)V

    .line 69
    invoke-direct {p0, v0, p1}, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->updatePagerAndIndicator(Landroidx/viewpager/widget/ViewPager;Lcom/android/settings/widget/DotsPageIndicator;)V

    return-void
.end method

.method setPreviewAdapter(Lcom/android/settings/display/PreviewPagerAdapter;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mPreviewAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    if-eq p1, v0, :cond_0

    .line 74
    iput-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mPreviewAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    .line 75
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
