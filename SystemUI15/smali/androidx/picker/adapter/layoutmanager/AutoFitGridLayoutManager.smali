.class public final Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/picker/common/log/LogTag;


# instance fields
.field public final columnWidth:I

.field public columnWidthChanged:Z

.field public final horizontalInterval:I

.field public final logTag:Ljava/lang/String;

.field public prevWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const-string v1, "AutoFitGridLayoutManager"

    iput-object v1, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->logTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c9c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->columnWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070cc0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->horizontalInterval:I

    iput-boolean v0, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->columnWidthChanged:Z

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->logTag:Ljava/lang/String;

    return-object p0
.end method

.method public final onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    iget v0, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->prevWidth:I

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iget v2, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->columnWidth:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->columnWidthChanged:Z

    if-eqz v0, :cond_4

    if-lez v2, :cond_4

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    sub-int/2addr v1, v0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    sub-int/2addr v1, v0

    iget v0, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->horizontalInterval:I

    add-int v4, v1, v0

    add-int/2addr v2, v0

    div-int/2addr v4, v2

    const/4 v0, 0x1

    if-ge v0, v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onLayoutChildren "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    const-string v5, " -> "

    const-string v6, ", availableWidth="

    invoke-static {v0, v2, v5, v4, v6}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/picker/common/log/LogTagHelperKt;->debug(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    iput-boolean v3, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->columnWidthChanged:Z

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iput v0, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->prevWidth:I

    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method
