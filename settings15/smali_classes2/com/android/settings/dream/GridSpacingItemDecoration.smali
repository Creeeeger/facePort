.class public final Lcom/android/settings/dream/GridSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mRtl:Z

.field public final mSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070384

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dream/GridSpacingItemDecoration;->mSpacing:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/dream/GridSpacingItemDecoration;->mRtl:Z

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    instance-of p4, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez p4, :cond_0

    return-void

    :cond_0
    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    iget p3, p3, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    rem-int p4, p2, p3

    iget v0, p0, Lcom/android/settings/dream/GridSpacingItemDecoration;->mSpacing:I

    mul-int v1, p4, v0

    div-int/2addr v1, p3

    add-int/lit8 p4, p4, 0x1

    mul-int/2addr p4, v0

    div-int/2addr p4, p3

    sub-int p4, v0, p4

    iget-boolean p0, p0, Lcom/android/settings/dream/GridSpacingItemDecoration;->mRtl:Z

    if-eqz p0, :cond_1

    move v2, p4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput v2, p1, Landroid/graphics/Rect;->left:I

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, p4

    :goto_1
    iput v1, p1, Landroid/graphics/Rect;->right:I

    if-lt p2, p3, :cond_3

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_3
    return-void
.end method
