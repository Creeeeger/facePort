.class public final Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenPagedTileLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "destroyItem "

    const-string v1, "SubscreenPagedTileLayout"

    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget p1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->updateListening$1()V

    return-void
.end method

.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final instantiateItem(ILandroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 2

    const-string v0, "instantiateItem "

    const-string v1, "SubscreenPagedTileLayout"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$4;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->updateListening$1()V

    return-object p1
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
