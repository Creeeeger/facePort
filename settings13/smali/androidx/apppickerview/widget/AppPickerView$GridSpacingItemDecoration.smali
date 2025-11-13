.class Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "AppPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/apppickerview/widget/AppPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridSpacingItemDecoration"
.end annotation


# instance fields
.field private density:F

.field private includeEdge:Z

.field private spacing:I

.field private spacingTop:I

.field private spanCount:I

.field final synthetic this$0:Landroidx/apppickerview/widget/AppPickerView;


# direct methods
.method public constructor <init>(Landroidx/apppickerview/widget/AppPickerView;IIZ)V
    .locals 0

    .line 539
    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 540
    iput p2, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spanCount:I

    .line 541
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->density:F

    int-to-float p2, p3

    mul-float/2addr p2, p1

    float-to-int p2, p2

    .line 542
    iput p2, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spacing:I

    const/high16 p2, 0x41400000    # 12.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 543
    iput p1, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spacingTop:I

    .line 544
    iput-boolean p4, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->includeEdge:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    .line 549
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 550
    iget p3, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spanCount:I

    rem-int p3, p2, p3

    .line 554
    iget-object p4, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {p4}, Landroidx/apppickerview/widget/AppPickerView;->access$300(Landroidx/apppickerview/widget/AppPickerView;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v0, -0x1

    move v1, v0

    :cond_0
    move v2, v1

    .line 555
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, p2, :cond_0

    .line 563
    :cond_1
    iget-boolean p4, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->includeEdge:Z

    if-eqz p4, :cond_5

    if-ne p2, v1, :cond_2

    return-void

    .line 569
    :cond_2
    iget p4, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spacing:I

    mul-int v1, p3, p4

    iget v3, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spanCount:I

    div-int/2addr v1, v3

    sub-int v1, p4, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p3, p3, 0x1

    mul-int/2addr p3, p4

    .line 571
    div-int/2addr p3, v3

    iput p3, p1, Landroid/graphics/Rect;->right:I

    if-eq v2, v0, :cond_3

    sub-int/2addr p2, v2

    add-int/lit8 p2, p2, -0x1

    if-ge p2, v3, :cond_4

    .line 576
    iget p2, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spacingTop:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_3
    if-ge p2, v3, :cond_4

    .line 579
    iget p2, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spacingTop:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 581
    :cond_4
    :goto_0
    iget p0, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spacingTop:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 584
    :cond_5
    iget p2, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spacing:I

    mul-int p4, p3, p2

    iget p0, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->spanCount:I

    div-int/2addr p4, p0

    iput p4, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p3, p3, 0x1

    mul-int/2addr p3, p2

    .line 586
    div-int/2addr p3, p0

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    return-void
.end method

.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 591
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 592
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 594
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 596
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 597
    instance-of v2, v2, Landroidx/apppickerview/widget/AppPickerView$SeparatorViewHolder;

    if-eqz v2, :cond_0

    .line 598
    iget-object v2, p0, Landroidx/apppickerview/widget/AppPickerView$GridSpacingItemDecoration;->this$0:Landroidx/apppickerview/widget/AppPickerView;

    invoke-static {v2}, Landroidx/apppickerview/widget/AppPickerView;->access$200(Landroidx/apppickerview/widget/AppPickerView;)Landroidx/appcompat/util/SeslSubheaderRoundedCorner;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroidx/appcompat/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
