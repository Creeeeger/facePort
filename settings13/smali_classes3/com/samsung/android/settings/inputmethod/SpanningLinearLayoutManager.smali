.class public Lcom/samsung/android/settings/inputmethod/SpanningLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SpanningLinearLayoutManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getHorizontalSpace()I
    .locals 2

    .line 64
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getVerticalSpace()I
    .locals 2

    .line 68
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private spanLayoutSize(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 4

    .line 45
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/SpanningLinearLayoutManager;->getHorizontalSpace()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/SpanningLinearLayoutManager;->getVerticalSpace()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canScrollVertically()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    return p0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 26
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/inputmethod/SpanningLinearLayoutManager;->spanLayoutSize(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/SpanningLinearLayoutManager;->spanLayoutSize(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/SpanningLinearLayoutManager;->spanLayoutSize(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object p0

    return-object p0
.end method
