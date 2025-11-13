.class public final Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectedVerticallItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final spacing:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectedVerticallItemDecoration;->spacing:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    instance-of v1, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v1, :cond_2

    return-void

    :cond_2
    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    iget p3, p3, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    iget p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$SelectedVerticallItemDecoration;->spacing:I

    div-int/lit8 p0, p0, 0x2

    iput p0, p1, Landroid/graphics/Rect;->top:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070800

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    rem-int/2addr p4, p3

    const/4 v1, 0x0

    if-nez p4, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, p0

    :goto_0
    iput v2, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p3, p3, -0x1

    if-ne p4, p3, :cond_4

    move p0, v1

    :cond_4
    iput p0, p1, Landroid/graphics/Rect;->right:I

    const p0, 0x7f0a082b

    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method
