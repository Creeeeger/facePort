.class public final Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public final mDescriptions:Ljava/util/ArrayList;

.field public final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;

    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;-><init>()V

    new-instance p1, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;

    invoke-direct {p1}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;

    invoke-direct {v1}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;-><init>()V

    const v2, 0x7f080a7e

    iput v2, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    const v2, 0x7f080a7f

    iput v2, p1, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    const v2, 0x7f080a80

    iput v2, v1, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final destroyItem(ILandroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0990

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a0b90

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int p2, v2, p2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;

    iget v2, v2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/16 p0, 0x8

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;

    iget p0, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
