.class public final Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$SecMarginItemDecorator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final basicTextViewFocusedStrokeWidth:I

.field public final itemBottomMargin:I

.field public final structureStartMarginResize:I

.field public final zoneSideMarginResize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070254

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700ab

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$SecMarginItemDecorator;->basicTextViewFocusedStrokeWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$SecMarginItemDecorator;->zoneSideMarginResize:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$SecMarginItemDecorator;->structureStartMarginResize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$SecMarginItemDecorator;->itemBottomMargin:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p4, -0x1

    if-ne p2, p4, :cond_0

    return-void

    :cond_0
    iget-object p4, p3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_0

    :cond_1
    move-object p4, v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x67

    const/4 v3, 0x1

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_4

    :goto_1
    if-nez p4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    :goto_2
    iget v4, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$SecMarginItemDecorator;->itemBottomMargin:I

    if-eqz v1, :cond_6

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :cond_6
    iget v1, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$SecMarginItemDecorator;->zoneSideMarginResize:I

    if-nez p4, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x65

    if-ne v5, v6, :cond_8

    iget p0, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$SecMarginItemDecorator;->structureStartMarginResize:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_8
    :goto_3
    if-nez p4, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-nez p4, :cond_a

    iget p0, p0, Lcom/android/systemui/controls/management/adapter/StatelessControlAdapter$SecMarginItemDecorator;->basicTextViewFocusedStrokeWidth:I

    sub-int/2addr v1, p0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_a
    :goto_4
    if-lez p2, :cond_f

    iget-object p0, p3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p0, :cond_b

    sub-int/2addr p2, v3

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_b
    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v3, :cond_e

    :goto_5
    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_f

    :cond_e
    neg-int p0, v4

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_f
    :goto_6
    return-void
.end method
