.class public final Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    const-string p0, "Destantiating "

    const-string v0, "CSTMPagedTileLayout"

    invoke-static {p2, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    sub-int p1, p0, p1

    :cond_1
    return p1
.end method

.method public final instantiateItem(ILandroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 2

    const-string v0, "Instantiating "

    const-string v1, "CSTMPagedTileLayout"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p0
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
