.class public final Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/common/log/LogTag;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;",
        "Landroidx/recyclerview/widget/GridLayoutManager;",
        "Landroidx/picker/common/log/LogTag;",
        "picker-app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final columnWidth:I

.field public columnWidthChanged:Z

.field public final horizontalInterval:I

.field public final logTag:Ljava/lang/String;

.field public prevWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    const-string v1, "AutoFitGridLayoutManager"

    iput-object v1, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->logTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->columnWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070800

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
    .locals 4

    iget v0, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->prevWidth:I

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iget v2, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->columnWidth:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->columnWidthChanged:Z

    if-eqz v0, :cond_2

    if-lez v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->horizontalInterval:I

    add-int v3, v1, v0

    add-int/2addr v2, v0

    div-int/2addr v3, v2

    const/4 v0, 0x1

    if-ge v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onLayoutChildren "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", availableWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/picker/common/log/LogTagHelperKt;->debug(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->columnWidthChanged:Z

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    iput v0, p0, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager;->prevWidth:I

    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method
