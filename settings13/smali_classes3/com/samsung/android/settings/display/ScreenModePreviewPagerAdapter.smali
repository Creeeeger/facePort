.class public Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ScreenModePreviewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->context:Landroid/content/Context;

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->setDescriptions()V

    return-void
.end method

.method private setDescriptions()V
    .locals 4

    .line 99
    new-instance v0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;-><init>()V

    .line 100
    new-instance v1, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;

    invoke-direct {v1}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;-><init>()V

    .line 101
    new-instance v2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;

    invoke-direct {v2}, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;-><init>()V

    .line 102
    sget v3, Lcom/android/settings/R$drawable;->sec_st_screen_mode_previewmode_img_01:I

    iput v3, v0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    .line 103
    sget v3, Lcom/android/settings/R$drawable;->sec_st_screen_mode_previewmode_img_02:I

    iput v3, v1, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    .line 104
    sget v3, Lcom/android/settings/R$drawable;->sec_st_screen_mode_previewmode_img_03:I

    iput v3, v2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    .line 105
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settings/R$layout;->sec_screen_mode_pager_adapter:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 76
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    sget v1, Lcom/android/settings/R$id;->preview_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 78
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int p2, v2, p2

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;

    iget v2, v2, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/16 p0, 0x8

    .line 83
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;

    iget p0, p0, Lcom/samsung/android/settings/display/ScreenModePreviewPagerAdapter$Description;->animation:I

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    :goto_0
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
