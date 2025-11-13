.class public final Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final includeEdge:Z

.field public final spacing:I

.field public final spacingTop:I

.field public final spanCount:I

.field public final synthetic this$0:Landroidx/apppickerview/widget/AppPickerView;


# direct methods
.method public constructor <init>(Landroidx/apppickerview/widget/AppPickerView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    iput p2, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spanCount:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/16 p2, 0x8

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spacing:I

    const/high16 p2, 0x41400000    # 12.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spacingTop:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->includeEdge:Z

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget p3, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spanCount:I

    rem-int p4, p2, p3

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v0, v0, Landroidx/apppickerview/widget/AppPickerView;->mSeparators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    move v2, v1

    :cond_0
    move v3, v2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p2, :cond_0

    :cond_1
    iget-boolean v0, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->includeEdge:Z

    iget v4, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spacing:I

    if-eqz v0, :cond_5

    if-ne p2, v2, :cond_2

    return-void

    :cond_2
    mul-int v0, p4, v4

    div-int/2addr v0, p3

    sub-int v0, v4, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, v4

    div-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spacingTop:I

    if-eq v3, v1, :cond_3

    sub-int/2addr p2, v3

    add-int/lit8 p2, p2, -0x1

    if-ge p2, p3, :cond_4

    iput p0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_3
    if-ge p2, p3, :cond_4

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_4
    :goto_0
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_5
    mul-int p0, p4, v4

    div-int/2addr p0, p3

    iput p0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, v4

    div-int/2addr p4, p3

    sub-int/2addr v4, p4

    iput v4, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    return-void
.end method

.method public final seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    instance-of v2, v2, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v2, v2, Landroidx/apppickerview/widget/AppPickerView;->mRoundedCorner:Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    invoke-virtual {v2, v1, p1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
