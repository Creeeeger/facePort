.class public Lcom/android/settings/accessibility/TextReadingPreviewPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBackgroundMinHorizontalPadding:I

.field public mCurrentItem:I

.field public mLastLayerIndex:I

.field public mLayoutMinHorizontalPadding:I

.field public final mPageChangeListener:Lcom/android/settings/accessibility/TextReadingPreviewPreference$1;

.field public mPreviewAdapter:Lcom/android/settings/display/PreviewPagerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mLayoutMinHorizontalPadding:I

    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mBackgroundMinHorizontalPadding:I

    new-instance p1, Lcom/android/settings/accessibility/TextReadingPreviewPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/TextReadingPreviewPreference$1;-><init>(Lcom/android/settings/accessibility/TextReadingPreviewPreference;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mPageChangeListener:Lcom/android/settings/accessibility/TextReadingPreviewPreference$1;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->init$11()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mLayoutMinHorizontalPadding:I

    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mBackgroundMinHorizontalPadding:I

    new-instance p1, Lcom/android/settings/accessibility/TextReadingPreviewPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/TextReadingPreviewPreference$1;-><init>(Lcom/android/settings/accessibility/TextReadingPreviewPreference;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mPageChangeListener:Lcom/android/settings/accessibility/TextReadingPreviewPreference$1;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->init$11()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mLayoutMinHorizontalPadding:I

    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mBackgroundMinHorizontalPadding:I

    new-instance p1, Lcom/android/settings/accessibility/TextReadingPreviewPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/TextReadingPreviewPreference$1;-><init>(Lcom/android/settings/accessibility/TextReadingPreviewPreference;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mPageChangeListener:Lcom/android/settings/accessibility/TextReadingPreviewPreference$1;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->init$11()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mLayoutMinHorizontalPadding:I

    iput p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mBackgroundMinHorizontalPadding:I

    new-instance p1, Lcom/android/settings/accessibility/TextReadingPreviewPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/TextReadingPreviewPreference$1;-><init>(Lcom/android/settings/accessibility/TextReadingPreviewPreference;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mPageChangeListener:Lcom/android/settings/accessibility/TextReadingPreviewPreference$1;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->init$11()V

    return-void
.end method


# virtual methods
.method public adjustPaddings(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mLayoutMinHorizontalPadding:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    iget v3, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mLayoutMinHorizontalPadding:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result p1

    iget v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mBackgroundMinHorizontalPadding:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v1

    iget p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mBackgroundMinHorizontalPadding:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p2, p1, v0, p0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public final init$11()V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071362

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mLayoutMinHorizontalPadding:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071360

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mBackgroundMinHorizontalPadding:I

    const v0, 0x7f0d0033

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0b8f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->adjustPaddings(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;)V

    const v0, 0x7f0a0b95

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mPageChangeListener:Lcom/android/settings/accessibility/TextReadingPreviewPreference$1;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const v1, 0x7f0a0b10

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/DotsPageIndicator;

    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mPreviewAdapter:Lcom/android/settings/display/PreviewPagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/DotsPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mCurrentItem:I

    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    iget p0, p0, Lcom/android/settings/accessibility/TextReadingPreviewPreference;->mCurrentItem:I

    if-eq v1, p0, :cond_3

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method
